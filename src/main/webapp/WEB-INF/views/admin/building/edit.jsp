<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 9/9/2024
  Time: 6:07 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/common/taglib.jsp"%>>
<html>
<head>
  <title>Thêm tòa nhà</title>
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
                <input type="text" placeholder="Search ..." class="nav-search-input" id="nav-search-input"
                       autocomplete="off" />
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
        <div class="row" style="margin-top: 10px;">
          <form:form method="GET" id="listForm" modelAttribute="buildingEdit">
         <form class="form-horizontal" role="form" id="form-edit">

            <div class="col-xs-12" style="margin-top: 10px;">


              <div class="form-group">
                <label class="col-sm-3"> Tên tòa nhà </label>

                <div class="col-sm-9">
                  <form:input  path="name" class="form-control"/>
                </div>
              </div>
            </div>
            <div class="col-xs-12" style="margin-top: 10px;">
              <div class="form-group">
                <label class="col-sm-3"> Quận </label>
                <div class="col-sm-3">
                  <select id="districtid" class="col-sm-6" name="districtid">
                    <option value="">--Chọn quận--</option>
                    <option value="1">Quận 1</option>
                    <option value="2">Quận 2</option>
                    <option value="3">Quận 3</option>
                    <option value="4">Quận 4</option>

                  </select>
                </div>

              </div>
            </div>
            <div class="col-xs-12" style="margin-top: 10px;">
              <div class="form-group">
                <label class="col-sm-3 control-label no-padding-right" > Phường </label>
                <div class="col-sm-9">
                  <input type="text" id="ward" name="ward" class="form-control">
                </div>
              </div>
            </div>
            <div class="col-xs-12" style="margin-top: 10px;">
              <div class="form-group">
                <label class="col-sm-3 control-label no-padding-right" > Đường </label>

                <div class="col-sm-9">
                  <input type="text" id="street" name="street" class="form-control">
                </div>
              </div>
            </div>
            <div class="col-xs-12" style="margin-top: 10px;">
              <div class="form-group">
                <label class="col-sm-3 control-label no-padding-right" >Kết cấu </label>

                <div class="col-sm-9">
                  <input type="text" id="structure" name="structure" class="form-control">
                </div>
              </div>
            </div>
            <div class="col-xs-12" style="margin-top: 10px;">
              <div class="form-group">
                <label class="col-sm-3 control-label no-padding-right" >Số tầng hầm</label>
                <div class="col-sm-9">
                  <input type="number" id="numberOfBasement" name="numberOfBasement" class="form-control">
                </div>
              </div>
            </div>

            <div class="col-xs-12" style="margin-top: 10px;">
              <div class="form-group">
                <label class="col-sm-3 control-label no-padding-right" >Diện tích sàn</label>

                <div class="col-sm-9">
                  <input type="number" id="floorarea" name="floorarea" class="form-control">
                </div>
              </div>
            </div>
            <div class="col-xs-12" style="margin-top: 10px;">
              <div class="form-group">
                <label class="col-sm-3 control-label no-padding-right" > Hướng </label>

                <div class="col-sm-9">
                  <input type="text" id="direction" name="direction" class="form-control">
                </div>
              </div>
            </div>
            <div class="col-xs-12" style="margin-top: 10px;">
              <div class="form-group">
                <label class="col-sm-3 control-label no-padding-right"  > Hạng </label>

                <div class="col-sm-9">
                  <input type="text" id="level" name="level" class="form-control">
                </div>
              </div>
            </div>
            <div class="col-xs-12" style="margin-top: 10px;">
              <div class="form-group">
                <label class="col-sm-3 control-label no-padding-right"  > Diện tích thuê </label>

                <div class="col-sm-9">
                  <input type="text" id="rentarea" name="rentarea" class="form-control">
                </div>
              </div>
            </div>

            <div class="col-xs-12" style="margin-top: 10px;">
              <div class="form-group">
                <label class="col-sm-3 control-label no-padding-right"  > Giá thuê </label>

                <div class="col-sm-9">
                  <input type="text" id="rentprice" name="rentprice" class="form-control">
                </div>
              </div>
            </div>
            <div class="col-xs-12" style="margin-top: 10px;">
              <div class="form-group">
                <label class="col-sm-3 control-label no-padding-right"  > Mô tả giá </label>

                <div class="col-sm-9">
                  <input type="text" id="rentpricedescription" name="rentpricedescription" class="form-control">
                </div>
              </div>
            </div>
            <div class="col-xs-12" style="margin-top: 10px;">
              <div class="form-group">
                <label class="col-sm-3 control-label no-padding-right"  >Phí dịch vụ</label>

                <div class="col-sm-9">
                  <input type="text" id="servicefee" name="servicefee" class="form-control">
                </div>
              </div>
            </div>
            <div class="col-xs-12" style="margin-top: 10px;">
              <div class="form-group">
                <label class="col-sm-3 control-label no-padding-right"  > Phí ô tô </label>

                <div class="col-sm-9">
                  <input type="number" id="carfee" name="carfee" class="form-control">
                </div>
              </div>
            </div>
            <div class="col-xs-12" style="margin-top: 10px;">
              <div class="form-group">
                <label class="col-sm-3 control-label no-padding-right"  > Phí mô tô </label>

                <div class="col-sm-9">
                  <input type="number" id="motorbikefee" name="motorbikefee" class="form-control">
                </div>
              </div>
            </div>
            <div class="col-xs-12" style="margin-top: 10px;">
              <div class="form-group">
                <label class="col-sm-3 control-label no-padding-right"  > Phí ngoài giờ </label>

                <div class="col-sm-9">
                  <input type="text" id="overtimefee" name="overtimefee" class="form-control">
                </div>
              </div>
            </div>

            <div class="col-xs-12" style="margin-top: 10px;">
              <div class="form-group">
                <label class="col-sm-3 control-label no-padding-right"  > Tiền điện </label>

                <div class="col-sm-9">
                  <input type="text" id="electricityfee" name="electricityfee" class="form-control">
                </div>
              </div>
            </div>
            <div class="col-xs-12" style="margin-top: 10px; margin-bottom: 10px">
              <div class="form-group">
                <label class="col-sm-3 control-label no-padding-right"  > Loại tòa nhà </label>
                <div class="col-sm-9">
                  <label class="checkbox-inline">
                    <input type="checkbox" name="typeCode" value="noi-that"> Nội thất
                  </label>
                  <label class="checkbox-inline">
                    <input type="checkbox"  name="typeCode" value="nguyen-can">Tầng trệt
                  </label>
                  <label class="checkbox-inline">
                    <input type="checkbox"  name="typeCode" value="tang-tret">Tòa nhà
                  </label>
                </div>
              </div>
            </div>
            <div class="col-xs-12">
              <div class="form-group">
                <label class="col-xs-3"></label>
                <div class="col-xs-9">

                  <button class="btn btn-success" type="button" style="margin-right: 8px;" id="btnAddBuilding">Cập nhập tòa nhà</button>
                  <button type="button" class="btn btn-danger" >Hủy tòa nhà</button>

<%--                  <c:if test="${ empty buildingEdit.id}">--%>
<%--                  <button class="btn btn-success" style="margin-right: 8px;" id="btnAddBuilding">Thêm tòa nhà</button>--%>
<%--                  <button class="btn btn-danger" >Hủy tòa nhà</button>--%>
<%--                  </c:if>--%>
                </div>
              </div>
            </div>
          </form>
          </form:form>

        </div>
      </div>
    </div>
  </div>
</div><!-- /.main-content -->

</body>
</html>
