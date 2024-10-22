



package com.javaweb.entity;

import com.javaweb.entity.BaseEntity;
import com.javaweb.model.dto.AssignmentBuildingDTO;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.*;

@Entity
  @Table(name = "building")
  public class BuildingEntity extends BaseEntity {
  @Column(name = "name")
  private String name;
  @Column(name = "ward")
  private String ward;
  @Column(name = "street")
  private String street;
  @Column(name = "floorarea")
  private Long floorArea;
  @Column(name = "direction")
  private String direction;
  @Column(name = "district")
  private String district;
  @Column(name = "level")
  private String level;
  @Column(name = "numberofbasement")
  private Integer numberOfBasement;
  @Column(name = "rentprice")
  private Long rentPrice;
  @Column(name = "servicefee")
  private String serviceFee;
  @Column(name = "motofee")
  private String motoFee;
  @Column(name = "carfee")
  private String carFee;
  @Column(name = "overtimefee")
  private Long overTimeFee;
  @Column(name = "waterfee")
  private String waterFee;
  @Column(name = "electricityfee")
  private String electricityFee;
  @Column(name = "deposit")
  private String deposit;
  @Column(name = "payment")
  private String payment;
  @Column(name = "renttime")
  private String rentTime;
  @Column(name = "decorationtime")
  private String decorationTime;
  @Column(name = "brokeragefee")
  private String brokerageFee;
  @Column(name = "type")
  private String type;
  @Column(name = "note")
  private String note;
  @Column(name = "managername")
  private String managerName;
  @Column(name = "managerphone")
  private String managerPhone;

  public String getName() {
    return name;
  }

  public void setName(String name) {
    this.name = name;
  }

  public String getWard() {
    return ward;
  }

  public void setWard(String ward) {
    this.ward = ward;
  }

  public String getStreet() {
    return street;
  }

  public void setStreet(String street) {
    this.street = street;
  }

  public Long getFloorArea() {
    return floorArea;
  }

  public void setFloorArea(Long floorArea) {
    this.floorArea = floorArea;
  }

  public String getDirection() {
    return direction;
  }

  public void setDirection(String direction) {
    this.direction = direction;
  }

  public String getLevel() {
    return level;
  }

  public void setLevel(String level) {
    this.level = level;
  }

  public String getDistrict() {
    return district;
  }

  public void setDistrict(String district) {
    this.district = district;
  }

  public Long getRentPrice() {
    return rentPrice;
  }

  public void setRentPrice(Long rentPrice) {
    this.rentPrice = rentPrice;
  }

  public Integer getNumberOfBasement() {
    return numberOfBasement;
  }

  public void setNumberOfBasement(Integer numberOfBasement) {
    this.numberOfBasement = numberOfBasement;
  }



  public String getMotoFee() {
    return motoFee;
  }

  public void setMotoFee(String motoFee) {
    this.motoFee = motoFee;
  }

  public String getServiceFee() {
    return serviceFee;
  }

  public void setServiceFee(String serviceFee) {
    this.serviceFee = serviceFee;
  }

  public Long getOverTimeFee() {
    return overTimeFee;
  }

  public void setOverTimeFee(Long overTimeFee) {
    this.overTimeFee = overTimeFee;
  }

  public String getWaterFee() {
    return waterFee;
  }

  public void setWaterFee(String waterFee) {
    this.waterFee = waterFee;
  }

  public String getCarFee() {
    return carFee;
  }

  public void setCarFee(String carFee) {
    this.carFee = carFee;
  }

  public String getElectricityFee() {
    return electricityFee;
  }

  public void setElectricityFee(String electricityFee) {
    this.electricityFee = electricityFee;
  }

  public String getPayment() {
    return payment;
  }

  public void setPayment(String payment) {
    this.payment = payment;
  }

  public String getDeposit() {
    return deposit;
  }

  public void setDeposit(String deposit) {
    this.deposit = deposit;
  }

  public String getRentTime() {
    return rentTime;
  }

  public void setRentTime(String rentTime) {
    this.rentTime = rentTime;
  }

  public String getDecorationTime() {
    return decorationTime;
  }

  public void setDecorationTime(String decorationTime) {
    this.decorationTime = decorationTime;
  }

  public String getBrokerageFee() {
    return brokerageFee;
  }

  public void setBrokerageFee(String brokerageFee) {
    this.brokerageFee = brokerageFee;
  }

  public String getType() {
    return type;
  }

  public void setType(String type) {
    this.type = type;
  }

  public String getNote() {
    return note;
  }

  public void setNote(String note) {
    this.note = note;
  }

  public String getManagerName() {
    return managerName;
  }

  public void setManagerName(String managerName) {
    this.managerName = managerName;
  }

  public String getManagerPhone() {
    return managerPhone;
  }

  public void setManagerPhone(String managerPhone) {
    this.managerPhone = managerPhone;
  }
  @ManyToOne
  @JoinColumn(name="districtid")
  private DistrictEntity district;

  @ManyToMany(fetch = FetchType.LAZY)
    @JoinTable(name="assignmentbuilding",
               joinColumns = @JoinColumn(name="buildingid",nullable = false),
                inverseJoinColumns = @JoinColumn(name="staffid",nullable = false))
    List<UserEntity> userEntities= new ArrayList<>();

  @OneToMany(mappedBy = "building",fetch = FetchType.LAZY)
  private List<RentAreaEntity> items = new ArrayList<>();

  public List<RentAreaEntity> getItems() {
    return items;
  }

  public void setItems(List<RentAreaEntity> items) {
    this.items = items;
  }

  public List<UserEntity> getUserEntities() {
    return userEntities;
  }

  public void setUserEntities(List<UserEntity> userEntities) {
    this.userEntities = userEntities;
  }



  }






