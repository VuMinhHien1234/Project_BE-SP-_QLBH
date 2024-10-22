package com.javaweb.repository;

import com.javaweb.builder.BuildingSearchBuilder;
import com.javaweb.entity.BuildingEntity;
import com.javaweb.model.dto.BuildingDTO;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface BuildingRepository  extends JpaRepository<BuildingEntity,Long> {
        List<BuildingEntity> findAll(BuildingSearchBuilder buildingSearchBuilder);

}
