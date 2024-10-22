package com.javaweb.converter;

import com.javaweb.entity.BuildingEntity;
import com.javaweb.entity.DistrictEntity;
import com.javaweb.entity.RentAreaEntity;
import com.javaweb.enums.districtCode;
import com.javaweb.model.response.BuildingSearchResponse;
import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

@Component
public class BuildingSearchResponseConverter {
  @Autowired
  private ModelMapper modelMapper;

  public BuildingSearchResponse tobuildingSearchResponse(BuildingEntity item) {
    BuildingSearchResponse building = modelMapper.map(item, BuildingSearchResponse.class);

    List<RentAreaEntity> rentArea = item.getItems();
    String areaResult = rentArea.stream().map(it ->it.getValue().toString()).collect(Collectors.joining(","));
    building.setRentArea(areaResult);
    Map<String, String> districts = districtCode.type();
    String districtName="";
    if(item.getDistrict()!=null && item.getDistrict()!="") {
      districtName= districts.get(item.getDistrict());
    }
    if(districtName !=null && !districtName.equals("")) {
      building.setAddress(item.getStreet()+" "+item.getWard()+" "+districtName);
    }
    return building;
  }

}
