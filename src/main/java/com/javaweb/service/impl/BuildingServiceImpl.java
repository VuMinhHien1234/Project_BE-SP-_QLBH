package com.javaweb.service.impl;

import com.javaweb.builder.BuildingSearchBuilder;
import com.javaweb.converter.BuildingSearchBuilderConverter;
import com.javaweb.converter.BuildingSearchResponseConverter;
import com.javaweb.entity.BuildingEntity;
import com.javaweb.entity.UserEntity;
import com.javaweb.model.request.BuildingSearchRequest;
import com.javaweb.model.response.BuildingSearchResponse;
import com.javaweb.model.response.ResponseDTO;
import com.javaweb.model.response.StaffResponseDTO;
import com.javaweb.repository.BuildingRepository;
import com.javaweb.repository.UserRepository;
import com.javaweb.service.BuildingService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import java.util.ArrayList;
import java.util.List;

@Service
public class BuildingServiceImpl implements BuildingService {

  @Autowired
  private BuildingRepository buildingRepository;

  @Autowired
  private UserRepository userRepository;

  @Autowired
  private BuildingSearchResponseConverter buildingSearchResponseConverter;
  @Autowired
  private BuildingSearchBuilderConverter buildingSearchBuilderConverter;

  @Override
  public ResponseDTO listStaffs(Long buildingId) {
    BuildingEntity building = buildingRepository.findById(buildingId).get();//tat ca building co id thoa man
    List<UserEntity> staffs = userRepository.findByStatusAndRoles_Code(1, "STAFF");//staffs dang hdong
    List<UserEntity> staffAssigment = building.getUserEntities();// chua cac thang duoc giao toa nha
    List<StaffResponseDTO> staffResponseDTOS = new ArrayList<>(); // List chua cac staffResponseDTO gom id, fullname,status
    ResponseDTO responseDTO = new ResponseDTO();// chua 1 object data => luu duoc cac list staffResponseDTOS
    for (UserEntity it : staffs) {// chay cac nhan vien dang hoat dong
      StaffResponseDTO staffResponseDTO = new StaffResponseDTO();// chua id, fullname,status
      staffResponseDTO.setFullName(it.getFullName());
      staffResponseDTO.setStaffId(it.getId());
      if (staffAssigment.contains(it)) { // neu nhan vien duoc giao toa nha co id thoa man
        staffResponseDTO.setChecked("checked");
      }
      else{
        staffResponseDTO.setChecked("");
      }
      staffResponseDTOS.add(staffResponseDTO);
    }
    responseDTO.setData(staffResponseDTOS);// la 1 Object chua list ket qua thoa man
    responseDTO.setMessage("success");
    return responseDTO;
  }

  @Override
  public List<BuildingSearchResponse> findAll(BuildingSearchRequest buildingSearchRequest) {
    List<String> typeCode = buildingSearchRequest.getTypeCode();
    BuildingSearchBuilder buildingSearchBuilder = buildingSearchBuilderConverter.toBuildingSearchBuilder(buildingSearchRequest,typeCode);
    List<BuildingSearchResponse>  res = new ArrayList<>();
    List<BuildingEntity> buildingEntities = buildingRepository.findAll(buildingSearchBuilder);
    for(BuildingEntity item : buildingEntities){
      BuildingSearchResponse building= buildingSearchResponseConverter.tobuildingSearchResponse(item);
      res.add(building);
    }
    return res;

  }



}
