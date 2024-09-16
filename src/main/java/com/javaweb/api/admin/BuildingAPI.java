package com.javaweb.api.admin;

import com.javaweb.model.dto.BuildingDTO;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController(value = "buildingAPIOfAdmin")
@RequestMapping("/api/building")
public class BuildingAPI {
//  @PostMapping
//  public void addOrUpdateBuilding(@RequestBody BuildingDTO buildingDTO){
//    //xuong DB lay data
//    return buildingDTO;
//  }
  @DeleteMapping("/{ids}")
  public void deleteBuilding(@PathVariable List<Long> ids){
// xoa building
    System.out.println("ok");
  }
}
