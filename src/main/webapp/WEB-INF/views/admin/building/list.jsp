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
        <div class="ace-settings-container" id="ace-settings-container">
          <div class="btn btn-app btn-xs btn-warning ace-settings-btn" id="ace-settings-btn">
            <i class="ace-icon fa fa-cog bigger-130"></i>
          </div>

          <div class="ace-settings-box clearfix" id="ace-settings-box">
            <div class="pull-left width-50">
              <div class="ace-settings-item">
                <div class="pull-left">
                  <select id="skin-colorpicker" class="hide">
                    <option data-skin="no-skin" value="#438EB9">#438EB9</option>
                    <option data-skin="skin-1" value="#222A2D">#222A2D</option>
                    <option data-skin="skin-2" value="#C6487E">#C6487E</option>
                    <option data-skin="skin-3" value="#D0D0D0">#D0D0D0</option>
                  </select><div class="dropdown dropdown-colorpicker">		<a data-toggle="dropdown" class="dropdown-toggle" href="#"><span class="btn-colorpicker" style="background-color:#438EB9"></span></a><ul class="dropdown-menu dropdown-caret"><li><a class="colorpick-btn selected" href="#" style="background-color:#438EB9;" data-color="#438EB9"></a></li><li><a class="colorpick-btn" href="#" style="background-color:#222A2D;" data-color="#222A2D"></a></li><li><a class="colorpick-btn" href="#" style="background-color:#C6487E;" data-color="#C6487E"></a></li><li><a class="colorpick-btn" href="#" style="background-color:#D0D0D0;" data-color="#D0D0D0"></a></li></ul></div>
                </div>
                <span>&nbsp; Choose Skin</span>
              </div>

              <div class="ace-settings-item">
                <input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-navbar">
                <label class="lbl" for="ace-settings-navbar"> Fixed
                  Navbar</label>
              </div>

              <div class="ace-settings-item">
                <input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-sidebar">
                <label class="lbl" for="ace-settings-sidebar"> Fixed
                  Sidebar</label>
              </div>

              <div class="ace-settings-item">
                <input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-breadcrumbs">
                <label class="lbl" for="ace-settings-breadcrumbs"> Fixed
                  Breadcrumbs</label>
              </div>

              <div class="ace-settings-item">
                <input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-rtl">
                <label class="lbl" for="ace-settings-rtl"> Right To Left
                  (rtl)</label>
              </div>

              <div class="ace-settings-item">
                <input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-add-container">
                <label class="lbl" for="ace-settings-add-container">
                  Inside
                  <b>.container</b>
                </label>
              </div>
            </div><!-- /.pull-left -->

            <div class="pull-left width-50">
              <div class="ace-settings-item">
                <input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-hover">
                <label class="lbl" for="ace-settings-hover"> Submenu on
                  Hover</label>
              </div>

              <div class="ace-settings-item">
                <input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-compact">
                <label class="lbl" for="ace-settings-compact"> Compact
                  Sidebar</label>
              </div>

              <div class="ace-settings-item">
                <input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-highlight">
                <label class="lbl" for="ace-settings-highlight"> Alt. Active
                  Item</label>
              </div>
            </div><!-- /.pull-left -->
          </div><!-- /.ace-settings-box -->
        </div><!-- /.ace-settings-container -->

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
            <div class="widget-main" id="listForm">
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
                  <button class="btn btn-primary">Thêm</button>
                </div>
              </div>

              <hr>
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
                    <button class="btn btn-xs btn-info">
                      <i class="ace-icon fa fa-pencil bigger-120"></i>
                    </button>
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
                    <button class="btn btn-xs btn-info">
                      <i class="ace-icon fa fa-pencil bigger-120"></i>
                    </button>
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

