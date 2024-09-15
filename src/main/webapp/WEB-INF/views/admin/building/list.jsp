<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 9/12/2024
  Time: 8:53 PM
  To change this template use File | Settings | File Templates.
--%>

<%@include file="/common/taglib.jsp" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<c:url var="buildingListURL" value="admin/building-list"/>

<html>
  <head>
    <title>Danh sach toa nha</title>
  </head>
  <body>
  <div class="main-content">
    <div class="main-content-inner">
      <div class="breadcrumbs" id="breadcrumbs">
        <script type="text/javascript">
            try { ace.settings.check('breadcrumbs', 'fixed') } catch (e) { }
        </script>

        <ul class="breadcrumb">
          <li>
            <i class="ace-icon fa fa-home home-icon"></i>
            <a href="#">Home</a>
          </li>
          <li class="active">Dashboard</li>
        </ul><!-- /.breadcrumb -->

        <div class="nav-search" id="nav-search">
          <form class="form-search">
              <span class="input-icon">
                <input type="text" placeholder="Search ..." class="nav-search-input" id="nav-search-input" autocomplete="off">
                <i class="ace-icon fa fa-search nav-search-icon"></i>
              </span>
          </form>
        </div><!-- /.nav-search -->
      </div>

      <div class="page-content">

        <div class="page-header">
          <h1>
            Dashboard
            <small>
              <i class="ace-icon fa fa-angle-double-right"></i>
              overview &amp; stats
            </small>
          </h1>
        </div><!-- /.page-header -->
        <div class="widget-box ">
          <div class="widget-header widget-header-blue widget-header-flat">
            <h4 class="widget-title lighter">New Item Wizard</h4>
          </div>
          <div class="widget-body">
            <div class="widget-main" >
              <form:form id="listForm"  modelAttribute="modelSearch" action="/admin/building-list" method="GET" >
              <div class="row">
                <div class="form-group">
                  <div class="col-xs-12">
                    <div class="col-xs-6">
                      <label class="name"> Tên tòa nhà </label>
<%--                      <input type="text" class="form-control" id="name" name="name" value="${modelSearch.name}">--%>
                          <form:input class="form-control" path="name"/>

                    </div>
                    <div class="col-xs-6">
                      <label class="name"> Diện tích sàn </label>
<%--                      <input type="number" class="form-control" id="floorArea" name="floorArea" value="${modelSearch.floorArea}">--%>
                   <form:input class="form-control" path="floorArea"/>
                    </div>
                  </div>
                </div>
                <div class="form-group">
                  <div class="col-xs-12">
                    <div class="col-xs-2">
                      <label class="name"> Quận </label>
                      <form:select  class="form-control"  path="district">
                        <form:option value="">--Chọn Quận--</form:option>
                        <form:option value="">Quận 1</form:option>
                        <form:option value="">Quận 2</form:option>
                        <form:option value="">Quận 3</form:option>
                        <form:option value="">Quận 4</form:option>

                      </form:select>
                    </div>
                    <div class="col-xs-5">
                      <label class="name"> Phường </label>
<%--                      <input type="text" id="ward" name="ward" class="form-control" value="${modelSearch.ward}">--%>
                       <form:input class="form-control" path="ward"/>
                    </div>
                    <div class="col-xs-5">
                      <label class="name"> Đường </label>
<%--                      <input type="text" id="street" name="street" class="form-control" value="${modelSearch.street}">--%>
                       <form:input class="form-control" path="street"/>
                    </div>
                  </div>
                </div>
                <div class="form-group">
                  <div class="col-xs-12">
                    <div class="col-xs-4">
                      <label class="name"> Số tầng hầm </label>
<%--                      <input type="number" id="numberOfBasement" name="numberOfBasement" class="form-control" value="${modelSearch.numberOfBasement}">--%>
                     <form:input class="form-control" path="numberOfBasement"/>
                    </div>
                    <div class="col-xs-4">
                      <label class="name"> Hướng </label>
<%--                      <input type="text" id="direction" name="direction" class="form-control" value="${modelSearch.direction}">--%>
                    <form:input class="form-control" path="direction"/>
                    </div>
                    <div class="col-xs-4">
                      <label class="name"> Hạng </label>
<%--                      <input type="text" id="level" name="level" class="form-control" value="${modelSearch.level}">--%>
                     <form:input class="form-control" path="level"/>
                    </div>
                  </div>
                </div>
                <div class="form-group">
                  <div class="col-xs-12">

                    <div class="col-xs-3">
                      <label class="name"> Diện tích từ </label>
                      <input type="text" id="areaFrom" name="areaFrom" class="form-control" >
                    </div>
                    <div class="col-xs-3">
                      <label class="name"> Diện tích đến </label>
                      <input type="number"  id="areaTo" name="areaTo" class="form-control" >
                    </div>
                    <div class="col-xs-3">
                      <label class="name"> Giá thuê từ </label>
                      <input type="number"  id="rentPriceFrom" name="rentPriceFrom" class="form-control" value="${modelSearch.rentPrice}">
                    </div>
                    <div class="col-xs-3">
                      <label class="name"> Giá thuê đến </label>
                      <input type="number" id="rentPriceTo" name="rentPriceTo" class="form-control">
                    </div>
                  </div>
                </div>
                <div class="form-group">
                  <div class="col-xs-12">
                    <div class="col-xs-4">
                      <label class="name"> Tên quản lý </label>
<%--                      <input type="number" id="managerName" name="managerName" class="form-control" value="${modelSearch.name}">--%>
                     <form:input class="form-control" path="managerName"/>
                    </div>
                    <div class="col-xs-4">
                      <label class="name"> Điện thoại quản lý </label>
<%--                      <input type="number" id="managerPhone" name="managerName" class="form-control" value="${modelSearch.name}">--%>
                     <form:input class="form-control" path="managerPhone"/>
                    </div>
                    <div class="col-xs-2">
                      <label class="name"> Chọn nhân viên phụ trách </label>
                      <select class="form-control">
                        <option value="">--Chọn nhân viên--</option>
                        <option value="1">Nguyễn Văn A</option>
                        <option value="2">Nguyễn Văn B</option>
                        <option value="3">Nguyễn Văn C</option>
                        <option value="4">Nguyễn Văn D</option>
                      </select>
                    </div>

                  </div>
                </div>
                <div class="form-group">
                  <div class="col-xs-12">
                    <div class="col-xs-6">
                      <label class="checkbox-inline">
                        <input name="typeCode" type="checkbox" value="noi-that"> Nội thất
                      </label>
                      <label class="checkbox-inline">
                        <input  name="typeCode" type="checkbox" value="nguyen-can"> Nguyên Căn
                      </label>
                      <label class="checkbox-inline">
                        <input  name="typeCode" type="checkbox" value="tang-tret"> Tầng Trệt
                      </label>
                    </div>
                  </div>
                </div>
                <div class="form-group">
                  <div class="col-xs-12">
                    <div class="col-xs-9">
                      <button type="button" class="btn btn-danger" id="btnSearchBuilding">Tìm kiếm</button>
                    </div>
                  </div>
                </div>
                </form:form>
                <div class=" pull-right">
                  <button class="btn">Xóa </button>
                  <a class="btn btn-primary"  href='/admin/building-edit'>Thêm</a>
                </div>
              </div>





            </div><!-- /.widget-main -->
          </div><!-- /.widget-body -->
        </div>
        <div class="row" style="margin-top: 40px;">
          <div class="col-xs-12">
            <table id="simple-table" class="table table-striped table-bordered table-hover">
              <thead>
              <tr>
                <th class="center">
                  <label class="pos-rel">
                    <input type="checkbox" name="checkList" value="${item}" class="ace">
                    <span class="lbl"></span>
                  </label>
                </th>
                <th>Tên tòa nhà</th>
                <th>Địa chỉ</th>
                <th class="hidden-480">Số tầng hầm</th>
                <th>Tên quản lí</th>
                <th>Số điện thoại</th>
                <th> DT sàn</th>
                <th> DT trống</th>
                <th> DT thuê</th>
                <th> Phí môi giới</th>
                <th> Thao tác</th>

              </tr>
              </thead>

              <tbody>
              <c:forEach var="item" items="${buildingList}">
                <tr>
                <td class="center">
                   <label>
                    <input type="checkbox" class="ace" name="checkList" value="${item.id}">
                    <span class="lbl"></span>
                </label>
                </td>

                <td>
                  ${item.name}
                </td>
                <td>${item.address}</td>
                <td>${item.numberOfBasement}</td>
                <td>${item.managerName}</td>
                <td>${item.managerPhone}</td>
                <td>${item.floorArea}</td>
                <td>${item.rentArea}</td>
                <td>${item.id}</td>
                <td>${item.id}</td>
                <td>
                  <div class="hidden-sm hidden-xs btn-group">
                    <button class="btn btn-xs btn-success" title="Giao tòa nhà" onclick="assignmentBuilding(${item.id})">
                      <i class="ace-icon fa fa-check bigger-120"></i>
                    </button>
                    <a href='/admin/building-edit-${item.id}'  title="Sửa tòa nhà" class="btn btn-xs btn-info">
                      <i class="ace-icon fa fa-pencil bigger-120"></i>
                    </a>
                    <button class="btn btn-xs btn-danger">
                      <i class="ace-icon fa fa-trash-o bigger-120"></i>
                    </button>
                  </div>
                </td>
              </tr>
              </c:forEach>

              </tbody>
            </table>
          </div><!-- /.span -->
        </div>
      </div><!-- /.page-content -->
    </div>
  </div>
  <script>
      function assignmentBuilding(buildingId) {
          $('#assignmentBuildingModal').modal();
          $('#buildingId').val();
      }

      $('#btnassignmentBuilding').click(function(e){
          e.preventDefault();
          var data={};
          data['buildingId'] =$('buildingId').val();
          var staffs= $('#staffList').find('tbody input[type = checkbox]:checked').map(function(){
              return $(this).val();
          }).get();
          data['staffs']=staffs;
          console.log("OK");
      });

      $('#btnSearchBuilding').click(function (e){
          e.preventDefault();
          $('#listForm').submit();
      });

  </script>
  </body>
</html>