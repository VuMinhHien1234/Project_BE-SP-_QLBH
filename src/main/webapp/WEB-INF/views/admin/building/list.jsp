<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 9/12/2024
  Time: 8:53 PM
  To change this template use File | Settings | File Templates.
--%>

<%@include file="/common/taglib.jsp" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>


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
              <form:form   id="listForm" >
              <div class="row">
                <div class="form-group">
                  <div class="col-xs-12">
                    <div class="col-xs-6">
                      <label class="name"> Tên tòa nhà </label>
                      <input type="text" class="form-control" id="name" name="name">
                    </div>
                    <div class="col-xs-6">
                      <label class="name"> Diện tích sàn </label>
                      <input type="number" class="form-control" id="floorarea" name="floorarea">
                    </div>
                  </div>
                </div>
                <div class="form-group">
                  <div class="col-xs-12">
                    <div class="col-xs-2">
                      <label class="name"> Quận </label>
                      <select id="districtid" class="col-sm-6" name="districtid">
                        <option value="">--Chọn Quận--</option>
                        <option value="">Quận 1</option>
                        <option value="">Quận 2</option>
                        <option value="">Quận 3</option>
                        <option value="">Quận 4</option>

                      </select>
                    </div>
                    <div class="col-xs-5">
                      <label class="name"> Phường </label>
                      <input type="text" id="ward" name="ward" class="form-control">
                    </div>
                    <div class="col-xs-5">
                      <label class="name"> Đường </label>
                      <input type="text" id="street" name="street" class="form-control">
                    </div>
                  </div>
                </div>
                <div class="form-group">
                  <div class="col-xs-12">

                    <div class="col-xs-4">
                      <label class="name"> Số tầng hầm </label>
                      <input type="number" id="numberOfBasement" name="numberOfBasement" class="form-control">
                    </div>
                    <div class="col-xs-4">
                      <label class="name"> Hướng </label>
                      <input type="text" id="direction" name="direction" class="form-control">
                    </div>
                    <div class="col-xs-4">
                      <label class="name"> Hạng </label>
                      <input type="text" id="level" name="level" class="form-control">
                    </div>
                  </div>
                </div>
                <div class="form-group">
                  <div class="col-xs-12">

                    <div class="col-xs-3">
                      <label class="name"> Diện tích từ </label>
                      <input type="text" id="re" name="level" class="form-control">
                    </div>
                    <div class="col-xs-3">
                      <label class="name"> Diện tích đến </label>
                      <input type="number" class="form-control">
                    </div>
                    <div class="col-xs-3">
                      <label class="name"> Giá thuê từ </label>
                      <input type="number" class="form-control">
                    </div>
                    <div class="col-xs-3">
                      <label class="name"> Giá thuê đến </label>
                      <input type="number" class="form-control">
                    </div>
                  </div>
                </div>
                <div class="form-group">
                  <div class="col-xs-12">
                    <div class="col-xs-4">
                      <label class="name"> Tên quản lý </label>
                      <input type="number" class="form-control">
                    </div>
                    <div class="col-xs-4">
                      <label class="name"> Điện thoại quản lý </label>
                      <input type="number" class="form-control">
                    </div>
                    <div class="col-xs-2">
                      <label class="name"> Chọn nhân viên phụ trách </label>
                      <select class="form-control">
                        <option value="">--Chọn nhân viên--</option>
                        <option value="">Nguyễn Văn A</option>
                        <option value="">Nguyễn Văn B</option>
                        <option value="">Nguyễn Văn C</option>
                        <option value="">Nguyễn Văn D</option>
                      </select>
                    </div>

                  </div>
                </div>
                <div class="form-group">
                  <div class="col-xs-12">
                    <div class="col-xs-6">
                      <label class="checkbox-inline">
                        <input type="checkbox"> Nội thất
                      </label>
                      <label class="checkbox-inline">
                        <input type="checkbox"> Nguyên Căn
                      </label>
                      <label class="checkbox-inline">
                        <input type="checkbox"> Tầng Trệt
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

                <div class=" pull-right">
                  <button class="btn">Xóa </button>
                  <a class="btn btn-primary"  href='/admin/building-edit'>Thêm</a>
                </div>
              </div>

              </form:form>



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
                    <input type="checkbox" class="ace">
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
              <tr>
                <td class="center">
                  <input type="checkbox" class="ace">
                </td>

                <td>
                  ACM Building
                </td>
                <td>$45</td>
                <td class="hidden-480">3,330</td>
                <td>ACM Building</td>
                <td>59 Phan Xích Long,Phường 2, Quận 1</td>
                <td>3</td>
                <td>Anh Nam-Chị Linh</td>
                <td>Feb 12</td>
                <td>Feb 12</td>

                <td>
                  <div class="hidden-sm hidden-xs btn-group">
                    <button class="btn btn-xs btn-success" title="Giao tòa nhà" onclick="assignmentBuilding(1)">
                      <i class="ace-icon fa fa-check bigger-120"></i>
                    </button>
                    <a href='/admin/building-edit' class="btn btn-xs btn-info">
                      <i class="ace-icon fa fa-pencil bigger-120"></i>
                    </a>
                    <button class="btn btn-xs btn-danger">
                      <i class="ace-icon fa fa-trash-o bigger-120"></i>
                    </button>
                  </div>
                </td>
              </tr>



              <tr>
                <td class="center">
                  <label class="pos-rel">
                    <input type="checkbox" class="ace">
                    <span class="lbl"></span>
                  </label>
                </td>
                <td>
                  ACM Building
                </td>
                <td>$35</td>
                <td class="hidden-480">2,595</td>
                <td>Feb 18</td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td>
                  <div class="hidden-sm hidden-xs btn-group">
                    <button class="btn btn-xs btn-success">
                      <i class="ace-icon fa fa-check bigger-120"></i>
                    </button>
                    <a class="btn btn-xs btn-info" href='/admin/building-edit'>
                      <i class="ace-icon fa fa-pencil bigger-120"></i>
                    </a>
                    <button class="btn btn-xs btn-danger">
                      <i class="ace-icon fa fa-trash-o bigger-120"></i>
                    </button>
                  </div>
                </td>
              </tr>



              </tbody>
            </table>
          </div><!-- /.span -->
        </div>
      </div><!-- /.page-content -->
    </div>
  </div>
  </body>
</html>


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
</script>
