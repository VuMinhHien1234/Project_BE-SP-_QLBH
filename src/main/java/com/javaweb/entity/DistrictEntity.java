package com.javaweb.entity;

import javax.persistence.*;
import java.util.ArrayList;
import java.util.List;

@Entity
@Table(name="district")
public class DistrictEntity {
  @Id
  @GeneratedValue(strategy = GenerationType.IDENTITY)
  private Long id;

  @Column(name="value")
  private String value;

  @OneToMany(mappedBy = "district", fetch = FetchType.LAZY)
  private List<BuildingEntity> buildings = new ArrayList<>();

  public Long getId() {
    return id;
  }

  public void setId(Long id) {
    this.id = id;
  }

  public String getValue() {
    return value;
  }

  public void setValue(String value) {
    this.value = value;
  }

  public List<BuildingEntity> getBuildings() {
    return buildings;
  }

  public void setBuildings(List<BuildingEntity> buildings) {
    this.buildings = buildings;
  }
}
