



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

    @Column(name = "managerPhoneNumber")
    private String managerPhoneNumber;

    @Column(name = "floorArea")
    private Long floorArea;

    @Column(name = "direction")
    private String direction;

    @Column(name = "district")
    private String district;
    @Column(name = "level")
    private String level;

    @Column(name = "numberOfBasement")
    private Integer numberOfBasement;

    @Column(name = "rentPrice")
    private Long rentPrice;

    @Column(name = "rentPriceDescription")
    private Long rentPriceDecription;

    @Column(name = "serviceFee")
    private String serviceFee;


    @Column(name = "motoFee")
    private String motoFee;
    @Column(name = "carFee")
    private String carFee;
    @Column(name = "overTimeFee")
    private Long overTimeFee;
    @Column(name = "waterFee")
    private String waterFee;
    @Column(name = "electricityFee")
    private String electricityFee;
    @Column(name = "deposit")
    private String deposit;
    @Column(name = "payment")
    private String payment;
    @Column(name = "rentTime")
    private String rentTime;
    @Column(name = "decorationTime")
    private String decorationTime;
    @Column(name = "brokerageFee")
    private String brokerageFee;
    @Column(name = "type")
    private String type;
    @Column(name = "note")
    private String note;
    @Column(name = "linkofbuilding")
    private String linkofbuilding;
    @Column(name = "map")
    private String map;
    @Column(name = "avatar")
    private String avatar;

    @Column(name = "managerName")
    private String managerName;

    @Column(name = "managerPhone")
    private String managerPhone;
    @Column(name = "image")
    private String image;


    @ManyToMany(fetch = FetchType.LAZY)
    @JoinTable(name="assignmentbuilding",
               joinColumns = @JoinColumn(name="buildingid",nullable = false),
                inverseJoinColumns = @JoinColumn(name="staffid",nullable = false))
    List<UserEntity> userEntities= new ArrayList<>();

    public String getDistrict() {
      return district;
    }

  public List<UserEntity> getUserEntities() {
    return userEntities;
  }

  public void setUserEntities(List<UserEntity> userEntities) {
    this.userEntities = userEntities;
  }

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

    public String getManagerName() {
      return managerName;
    }

    public void setManagerName(String managerName) {
      this.managerName = managerName;
    }

    public String getManagerPhoneNumber() {
      return managerPhoneNumber;
    }

    public void setManagerPhoneNumber(String managerPhoneNumber) {
      this.managerPhoneNumber = managerPhoneNumber;
    }

    public Long getFloorArea() {
      return floorArea;
    }

    public void setFloorArea(Long floorArea) {
      this.floorArea = floorArea;
    }

    public Long getRentPrice() {
      return rentPrice;
    }

    public void setRentPrice(Long rentPrice) {
      this.rentPrice = rentPrice;
    }

    public String getServiceFee() {
      return serviceFee;
    }

    public void setServiceFee(String serviceFee) {
      this.serviceFee = serviceFee;
    }

    public String getDirection() {
      return direction;
    }

    public void setDirection(String direction) {
      this.direction = direction;
    }

    public String getImage() {
      return image;
    }

    public void setImage(String image) {
      this.image = image;
    }

    public String getAvatar() {
      return avatar;
    }

    public void setAvatar(String avatar) {
      this.avatar = avatar;
    }

    public String getManagerPhone() {
      return managerPhone;
    }

    public void setManagerPhone(String managerPhone) {
      this.managerPhone = managerPhone;
    }

    public String getMap() {
      return map;
    }

    public void setMap(String map) {
      this.map = map;
    }

    public String getLinkofbuilding() {
      return linkofbuilding;
    }

    public void setLinkofbuilding(String linkofbuilding) {
      this.linkofbuilding = linkofbuilding;
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

    public String getBrokerageFee() {
      return brokerageFee;
    }

    public void setBrokerageFee(String brokerageFee) {
      this.brokerageFee = brokerageFee;
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

    public String getDeposit() {
      return deposit;
    }

    public void setDeposit(String deposit) {
      this.deposit = deposit;
    }

    public String getPayment() {
      return payment;
    }

    public void setPayment(String payment) {
      this.payment = payment;
    }

    public String getElectricityFee() {
      return electricityFee;
    }

    public void setElectricityFee(String electricityFee) {
      this.electricityFee = electricityFee;
    }

    public String getWaterFee() {
      return waterFee;
    }

    public void setWaterFee(String waterFee) {
      this.waterFee = waterFee;
    }

    public Long getOverTimeFee() {
      return overTimeFee;
    }

    public void setOverTimeFee(Long overTimeFee) {
      this.overTimeFee = overTimeFee;
    }

    public String getCarFee() {
      return carFee;
    }

    public void setCarFee(String carFee) {
      this.carFee = carFee;
    }

    public void setDistrict(String district) {
      this.district = district;
    }

    public String getLevel() {
      return level;
    }

    public void setLevel(String level) {
      this.level = level;
    }

    public Integer getNumberOfBasement() {
      return numberOfBasement;
    }

    public void setNumberOfBasement(Integer numberOfBasement) {
      this.numberOfBasement = numberOfBasement;
    }

    public Long getRentPriceDecription() {
      return rentPriceDecription;
    }

    public void setRentPriceDecription(Long rentPriceDecription) {
      this.rentPriceDecription = rentPriceDecription;
    }

    public String getMotoFee() {
      return motoFee;
    }

    public void setMotoFee(String motoFee) {
      this.motoFee = motoFee;
    }

  }






