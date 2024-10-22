package com.javaweb.repository.custom.impl;

import java.lang.reflect.Field;
import com.javaweb.builder.BuildingSearchBuilder;
import com.javaweb.entity.BuildingEntity;
import com.javaweb.model.dto.BuildingDTO;
import org.springframework.stereotype.Repository;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;
import java.util.List;
import java.util.stream.Collectors;

@Repository
public class BuildingRepositoryImpl {
  @PersistenceContext
  private EntityManager entityManager;
    public static void joinTable(BuildingSearchBuilder buildingSearchBuilder, StringBuilder sql){
         Long staffId = buildingSearchBuilder.getStaffId();
         if(staffId != null){
           sql.append("INNER JOIN assignmentbuilding ON b.id = assignmentbuilding.buildingid ");
         }
    }
    public static void queryNormal(BuildingSearchBuilder buildingSearchBuilder, StringBuilder sql){
      try{
        Field[] fields = BuildingSearchBuilder.class.getDeclaredFields();
        for(Field item : fields){
          item.setAccessible(true);
          String fieldName= item.getName();
          if(!fieldName.equals("staffId") && !fieldName.equals("typeCode") && !fieldName.startsWith("area")
          && !fieldName.startsWith("rentPrice")){

            Object value = item.get(buildingSearchBuilder);
            if(value != null){
              if(item.getType().getName().equals("java.lang.Long")||item.getType().getName().equals("java.lang.Integer")){
                sql.append("AND b."+fieldName+" = " + value);

              }
              else{
                sql.append("AND b."+fieldName+" LIKE '%"+ value+" %'");
              }
            }

          }
        }
      }catch(Exception e){
        e.printStackTrace();
      }
    }

     public static void querySpecial(BuildingSearchBuilder buildingSearchBuilder, StringBuilder sql){
      Long staffId = buildingSearchBuilder.getStaffId();
      if(staffId != null){
        sql.append("AND assignmentbuilding.staffId = " + staffId+" ");
      }
       Long rentAreaTo = buildingSearchBuilder.getAreaFrom();
       Long rentAreaFrom = buildingSearchBuilder.getAreaTo();
       if(rentAreaTo != null || rentAreaFrom != null) {
         sql.append(" AND EXISTS ( SELECT * FROM rentarea r WHERE b.id = r.buildingid ");


         if (rentAreaFrom != null) {
           sql.append(" AND r.value >= " + rentAreaFrom);
         }
         if (rentAreaTo != null) {
           sql.append(" AND r.value <= " + rentAreaTo);
         }
         sql.append(")");
       }
       List<String> typeCode = buildingSearchBuilder.getTypeCode();
       if(typeCode != null && typeCode.size()>0) {
         sql.append(" AND (");
         String tmp =typeCode.stream().map(it -> "renttype.code Like" + "'%" + it + "%'")
                 .collect(Collectors.joining(" OR "));
         sql.append(tmp);
         sql.append(")");

       }
     }


     public List<BuildingEntity> findAll(BuildingSearchBuilder buildingSearchBuilder){
       StringBuilder sql = new StringBuilder("SELECT * FROM building b ");
       joinTable(buildingSearchBuilder, sql);
       StringBuilder where= new StringBuilder(" WHERE 1 = 1 ");
       queryNormal(buildingSearchBuilder, where);
       querySpecial(buildingSearchBuilder, where);
//       where.append("GROUP BY b.id");
       sql.append(where);
       Query query = entityManager.createNativeQuery(sql.toString(),BuildingEntity.class);
       return query.getResultList();
     }
}
