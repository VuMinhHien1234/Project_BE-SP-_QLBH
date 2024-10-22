package com.javaweb.converter;


import java.util.List;
import java.util.Map;

import com.javaweb.model.request.BuildingSearchRequest;
import com.javaweb.utils.MapUtils;
import org.springframework.stereotype.Component;


import com.javaweb.builder.BuildingSearchBuilder;



@Component
public class BuildingSearchBuilderConverter {
  public BuildingSearchBuilder toBuildingSearchBuilder(BuildingSearchRequest buildingSearchRequest, List<String> typeCode) {
    BuildingSearchBuilder buildingSearchBuilder;
    buildingSearchBuilder = new BuildingSearchBuilder.Builder()
            .setName(MapUtils.getObject(buildingSearchRequest.getName(),String.class))
            .setFloorArea(MapUtils.getObject(buildingSearchRequest.getFloorArea(),Long.class))
            .setWard(MapUtils.getObject(buildingSearchRequest.getWard(),String.class))
            .setStreet(MapUtils.getObject(buildingSearchRequest.getStreet(),String.class))
            .setDistrictId(MapUtils.getObject(buildingSearchRequest.getDistrict(),Long.class))
            .setNumOfBasement(MapUtils.getObject(buildingSearchRequest.getNumberOfBasement(),Integer.class))
            .setTypeCode(typeCode)
            .setManagerName(MapUtils.getObject(buildingSearchRequest.getDirection(),String.class))
            .setManagerPhoneNumber(MapUtils.getObject(buildingSearchRequest.getLevel(),String.class))
            .setRentPriceTo(MapUtils.getObject(buildingSearchRequest.getAreaFrom(),Long.class))
            .setRentPriceFrom(MapUtils.getObject(buildingSearchRequest.getAreaTo(),Long.class))
            .setAreaFrom(MapUtils.getObject(buildingSearchRequest.getRentPriceFrom(),Long.class))
            .setAreaTo(MapUtils.getObject(buildingSearchRequest.getRentPriceTo(),Long.class))
            .setStaffId(MapUtils.getObject(buildingSearchRequest.getName(),Long.class))
            .setStaffId(MapUtils.getObject(buildingSearchRequest.getManagerName(),Long.class))
            .setStaffId(MapUtils.getObject(buildingSearchRequest.getManagerPhone(),Long.class))
            .build();
    return buildingSearchBuilder;
  }

}