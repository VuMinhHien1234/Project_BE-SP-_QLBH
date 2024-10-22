<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 9/9/2024
  Time: 6:07 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/common/taglib.jsp" %>

<c:url var="buildingAPI" value="/api/building"/>
<html>
<head>
  <title>Thêm tòa nhà</title>
</head>
<body>
<div class="main-content">
  <div class="main-content-inner">
    <div class="breadcrumbs" id="breadcrumbs">
      <script type="text/javascript">
          try {
              ace.settings.check('breadcrumbs', 'fixed')
          } catch (e) {
          }
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
                       autocomplete="off"/>
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
            <div class="col-xs-12">
              <form class="form-horizontal" role="form" >
                <div class="col-xs-12" style="margin-top: 10px;">
                  <div class="form-group">
                    <label class="col-sm-3"> Tên tòa nhà </label>
                    <div class="col-sm-9">
                      <form:input class="form-control" path="name"/>
                    </div>
                  </div>
                </div>
                <div class="col-xs-12" style="margin-top: 10px;">
                  <div class="form-group">
                    <label class="col-sm-3"> Quận </label>
                    <div class="col-sm-3">

                      <form:select class="form-control" path="district">
                        <form:option value="">--Chọn Quận--</form:option>
                        <form:options items="${listType}"/>
                      </form:select>
                      </select>
                    </div>

                  </div>
                </div>
                <div class="col-xs-12" style="margin-top: 10px;">
                  <div class="form-group">
                    <label class="col-sm-3 control-label no-padding-right"> Phường </label>
                    <div class="col-sm-9">
                      <input type="text" id="ward" name="ward" class="form-control" value="">
                    </div>
                  </div>
                </div>
                <div class="col-xs-12" style="margin-top: 10px;">
                  <div class="form-group">
                    <label class="col-sm-3 control-label no-padding-right"> Đường </label>

                    <div class="col-sm-9">
                      <input type="text" id="street" name="street" class="form-control" value="">
                    </div>
                  </div>
                </div>
                <div class="col-xs-12" style="margin-top: 10px;">
                  <div class="form-group">
                    <label class="col-sm-3 control-label no-padding-right">Kết cấu </label>

                    <div class="col-sm-9">
                      <input type="text" id="structure" name="structure" class="form-control" value="">
                    </div>
                  </div>
                </div>
                <div class="col-xs-12" style="margin-top: 10px;">
                  <div class="form-group">
                    <label class="col-sm-3 control-label no-padding-right">Số tầng hầm</label>
                    <div class="col-sm-9">
                      <input type="number" id="numberOfBasement" name="numberOfBasement" class="form-control" value="">
                    </div>
                  </div>
                </div>

                <div class="col-xs-12" style="margin-top: 10px;">
                  <div class="form-group">
                    <label class="col-sm-3 control-label no-padding-right">Diện tích sàn</label>

                    <div class="col-sm-9">
                      <input type="number" id="floorArea" name="floorArea" class="form-control" value="">
                    </div>
                  </div>
                </div>
                <div class="col-xs-12" style="margin-top: 10px;">
                  <div class="form-group">
                    <label class="col-sm-3 control-label no-padding-right"> Hướng </label>

                    <div class="col-sm-9">
                      <input type="text" id="direction" name="direction" class="form-control" value="">
                    </div>
                  </div>
                </div>
                <div class="col-xs-12" style="margin-top: 10px;">
                  <div class="form-group">
                    <label class="col-sm-3 control-label no-padding-right"> Hạng </label>

                    <div class="col-sm-9">
                      <input type="text" id="level" name="level" class="form-control" value="">
                    </div>
                  </div>
                </div>
                <div class="col-xs-12" style="margin-top: 10px;">
                  <div class="form-group">
                    <label class="col-sm-3 control-label no-padding-right"> Diện tích thuê </label>

                    <div class="col-sm-9">
                      <input type="text" id="rentArea" name="rentArea" class="form-control" value="">
                    </div>
                  </div>
                </div>

                <div class="col-xs-12" style="margin-top: 10px;">
                  <div class="form-group">
                    <label class="col-sm-3 control-label no-padding-right"> Giá thuê </label>

                    <div class="col-sm-9">
                      <input type="text" id="rentPrice" name="rentPrice" class="form-control" value="">
                    </div>
                  </div>
                </div>
                <div class="col-xs-12" style="margin-top: 10px;">
                  <div class="form-group">
                    <label class="col-sm-3 control-label no-padding-right"> Mô tả giá </label>

                    <div class="col-sm-9">
                      <input type="text" id="rentPriceDescription" name="rentPriceDescription" class="form-control"
                             value="">
                    </div>
                  </div>
                </div>
                <div class="col-xs-12" style="margin-top: 10px;">
                  <div class="form-group">
                    <label class="col-sm-3 control-label no-padding-right">Phí dịch vụ</label>

                    <div class="col-sm-9">
                      <input type="text" id="serviceFee" name="serviceFee" class="form-control" value="">
                    </div>
                  </div>
                </div>
                <div class="col-xs-12" style="margin-top: 10px;">
                  <div class="form-group">
                    <label class="col-sm-3 control-label no-padding-right"> Phí ô tô </label>

                    <div class="col-sm-9">
                      <input type="number" id="carFee" name="carFee" class="form-control" value="">
                    </div>
                  </div>
                </div>
                <div class="col-xs-12" style="margin-top: 10px;">
                  <div class="form-group">
                    <label class="col-sm-3 control-label no-padding-right"> Phí mô tô </label>

                    <div class="col-sm-9">
                      <input type="number" id="motoFee" name="motoFee" class="form-control" value="">
                    </div>
                  </div>
                </div>
                <div class="col-xs-12" style="margin-top: 10px;">
                  <div class="form-group">
                    <label class="col-sm-3 control-label no-padding-right"> Phí ngoài giờ </label>

                    <div class="col-sm-9">
                      <input type="text" id="overTimeFee" name="overTimeFee" class="form-control" value="">
                    </div>
                  </div>
                </div>

                <div class="col-xs-12" style="margin-top: 10px;">
                  <div class="form-group">
                    <label class="col-sm-3 control-label no-padding-right"> Tiền điện </label>
                    <div class="col-sm-9">
                      <input type="text" id="electricityFee" name="electricityFee" class="form-control" value="">
                    </div>
                  </div>
                </div>
                <div class="col-xs-12" style="margin-top: 10px; margin-bottom: 10px">
                  <div class="form-group">
                    <label class="col-sm-3 control-label no-padding-right"> Loại tòa nhà </label>
                    <div class="col-sm-9">
                      <form:checkboxes items="${typeCodes}" path="typeCode"/>
                    </div>
                  </div>
                </div>
                <div class="col-xs-12">
                  <div class="form-group">
                    <label class="col-xs-3"></label>
                    <div class="col-xs-9">
                      <c:if test="${not empty buildingEdit.id}">
                        <button class="btn btn-success" type="button" style="margin-right: 8px;"
                                id="btnAddOrUpdateBuilding">Cập nhập tòa nhà
                        </button>
                        <button type="button" id = "btnCancel" class="btn btn-danger">Hủy tòa nhà</button>
                      </c:if>
                      <c:if test="${ empty buildingEdit.id}">
                        <button type="button" class="btn btn-success" style="margin-right: 8px;"
                                id="btnAddOrUpdateBuilding">Thêm tòa nhà
                        </button>
                        <button type="button" id = "btnCancel" class="btn btn-danger">Hủy tòa nhà</button>
                      </c:if>
                    </div>
                  </div>
                </div>
                <form:hidden path="id" id="buildingId"/>
              </form>
            </div>
          </form:form>
        </div>
      </div>
    </div>
  </div>
</div><!-- /.main-content -->

<script>
    $('#btnAddOrUpdateBuilding').click(function () {
        var data = {};
        var typeCode = [];
        var formData = $('#listForm').serializeArray();
        $.each(formData, function (i, v) {
            if (v.name != 'typeCode') {
                data["" + v.name + ""] = v.value;
            } else {
                typeCode.push(v.value);
            }

        });
        data['typeCode'] = typeCode;
        if(typeCode!=''){
        addOrUpdateBuilding(data);
        }
        else{
        window.location.href = "<c:url value= "/admin/building-edit?typeCode=require"/>";
        }

    });
        function addOrUpdateBuilding(data){
        //call api
        $.ajax({
            type: "POST",
            url: "${buildingAPI}/",
            data: JSON.stringify(data),
            contentType: "application/json",
            dataType: "JSON",
            success: function (response) {
                console.log("Success");
                 window.location.href = "<c:url value= "/admin/building-list?typeCode=Success"/>";
            },
            error: function (respond) {
                console.log("failed");
                   window.location.href = "<c:url value= "/admin/building-edit?typeCode=error"/>";
            }
        });
        }


    $('#btnCancel').click(function (){
        window.location.href="/admin/building-list";
    });

</script>

</body>
</html>