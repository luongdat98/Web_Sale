<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="fmt" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
    <meta charset="utf-8" />
    <title>Full Calendar - Ace Admin</title>

    <meta name="description" content="with draggable and editable events" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0" />
    <link rel="stylesheet" href="<c:url value="/resources/theme1/assets_admin/css/bootstrap.min.css" />" />
    <link rel="stylesheet" href="<c:url value="/resources/theme1/assets_admin/font-awesome/4.5.0/css/font-awesome.min.css" />" />
    <link rel="stylesheet" href="<c:url value="/resources/theme1/assets_admin/css/fonts.googleapis.com.css" />" />
    <link rel="stylesheet" href="<c:url value="/resources/theme1/assets_admin/css/ace.css" />" class="ace-main-stylesheet" id="main-ace-style" />
    <link rel="stylesheet" href="<c:url value="/resources/theme1/assets_admin/css/ace-part2.min.css" />" class="ace-main-stylesheet" />
    <link rel="stylesheet" href="<c:url value="/resources/theme1/assets_admin/css/ace-skins.min.css" />" />
    <link rel="stylesheet" href="<c:url value="/resources/theme1/assets_admin/css/ace-rtl.min.css" />" />
    <link rel="stylesheet" href="<c:url value="/resources/theme1/assets_admin/css/ace-ie.min.css" />" />
    <script src="<c:url value="/resources/theme1/assets_admin/js/ace-extra.min.js" />"></script>
    <script src="<c:url value="/resources/theme1/assets_admin/js/html5shiv.min.js" />"></script>
    <script src="<c:url value="/resources/theme1/assets_admin/js/respond.min.js" />"></script>
</head>

<body class="no-skin">
<div id="navbar" class="navbar navbar-default ace-save-state">
    <div class="navbar-container ace-save-state" id="navbar-container">
        <button type="button" class="navbar-toggle menu-toggler pull-left" id="menu-toggler" data-target="#sidebar">
            <span class="sr-only">Toggle sidebar</span>

            <span class="icon-bar"></span>

            <span class="icon-bar"></span>

            <span class="icon-bar"></span>
        </button>

        <div class="navbar-header pull-left">
            <a href="index.html" class="navbar-brand">
                <small>
                    <i class="fa fa-leaf"></i>
                    Ace Admin
                </small>
            </a>
        </div>

        <div class="navbar-buttons navbar-header pull-right" role="navigation">
            <ul class="nav ace-nav">
                <li class="grey dropdown-modal">
                    <a data-toggle="dropdown" class="dropdown-toggle" href="#">
                        <i class="ace-icon fa fa-tasks"></i>
                        <span class="badge badge-grey">4</span>
                    </a>

                    <ul class="dropdown-menu-right dropdown-navbar dropdown-menu dropdown-caret dropdown-close">
                        <li class="dropdown-header">
                            <i class="ace-icon fa fa-check"></i>
                            4 Tasks to complete
                        </li>

                        <li class="dropdown-content">
                            <ul class="dropdown-menu dropdown-navbar">
                                <li>
                                    <a href="#">
                                        <div class="clearfix">
                                            <span class="pull-left">Software Update</span>
                                            <span class="pull-right">65%</span>
                                        </div>

                                        <div class="progress progress-mini">
                                            <div style="width:65%" class="progress-bar"></div>
                                        </div>
                                    </a>
                                </li>

                                <li>
                                    <a href="#">
                                        <div class="clearfix">
                                            <span class="pull-left">Hardware Upgrade</span>
                                            <span class="pull-right">35%</span>
                                        </div>

                                        <div class="progress progress-mini">
                                            <div style="width:35%" class="progress-bar progress-bar-danger"></div>
                                        </div>
                                    </a>
                                </li>

                                <li>
                                    <a href="#">
                                        <div class="clearfix">
                                            <span class="pull-left">Unit Testing</span>
                                            <span class="pull-right">15%</span>
                                        </div>

                                        <div class="progress progress-mini">
                                            <div style="width:15%" class="progress-bar progress-bar-warning"></div>
                                        </div>
                                    </a>
                                </li>

                                <li>
                                    <a href="#">
                                        <div class="clearfix">
                                            <span class="pull-left">Bug Fixes</span>
                                            <span class="pull-right">90%</span>
                                        </div>

                                        <div class="progress progress-mini progress-striped active">
                                            <div style="width:90%" class="progress-bar progress-bar-success"></div>
                                        </div>
                                    </a>
                                </li>
                            </ul>
                        </li>

                        <li class="dropdown-footer">
                            <a href="#">
                                See tasks with details
                                <i class="ace-icon fa fa-arrow-right"></i>
                            </a>
                        </li>
                    </ul>
                </li>

                <li class="purple dropdown-modal">
                    <a data-toggle="dropdown" class="dropdown-toggle" href="#">
                        <i class="ace-icon fa fa-bell icon-animated-bell"></i>
                        <span class="badge badge-important">8</span>
                    </a>

                    <ul class="dropdown-menu-right dropdown-navbar navbar-pink dropdown-menu dropdown-caret dropdown-close">
                        <li class="dropdown-header">
                            <i class="ace-icon fa fa-exclamation-triangle"></i>
                            8 Notifications
                        </li>

                        <li class="dropdown-content">
                            <ul class="dropdown-menu dropdown-navbar navbar-pink">
                                <li>
                                    <a href="#">
                                        <div class="clearfix">
													<span class="pull-left">
														<i class="btn btn-xs no-hover btn-pink fa fa-comment"></i>
														New Comments
													</span>
                                            <span class="pull-right badge badge-info">+12</span>
                                        </div>
                                    </a>
                                </li>

                                <li>
                                    <a href="#">
                                        <i class="btn btn-xs btn-primary fa fa-user"></i>
                                        Bob just signed up as an editor ...
                                    </a>
                                </li>

                                <li>
                                    <a href="#">
                                        <div class="clearfix">
													<span class="pull-left">
														<i class="btn btn-xs no-hover btn-success fa fa-shopping-cart"></i>
														New Orders
													</span>
                                            <span class="pull-right badge badge-success">+8</span>
                                        </div>
                                    </a>
                                </li>

                                <li>
                                    <a href="#">
                                        <div class="clearfix">
													<span class="pull-left">
														<i class="btn btn-xs no-hover btn-info fa fa-twitter"></i>
														Followers
													</span>
                                            <span class="pull-right badge badge-info">+11</span>
                                        </div>
                                    </a>
                                </li>
                            </ul>
                        </li>

                        <li class="dropdown-footer">
                            <a href="#">
                                See all notifications
                                <i class="ace-icon fa fa-arrow-right"></i>
                            </a>
                        </li>
                    </ul>
                </li>

                <li class="green dropdown-modal">
                    <a data-toggle="dropdown" class="dropdown-toggle" href="#">
                        <i class="ace-icon fa fa-envelope icon-animated-vertical"></i>
                        <span class="badge badge-success">5</span>
                    </a>

                    <ul class="dropdown-menu-right dropdown-navbar dropdown-menu dropdown-caret dropdown-close">
                        <li class="dropdown-header">
                            <i class="ace-icon fa fa-envelope-o"></i>
                            5 Messages
                        </li>

                        <li class="dropdown-content">
                            <ul class="dropdown-menu dropdown-navbar">
                                <li>
                                    <a href="#" class="clearfix">
                                        <img src="assets/images/avatars/avatar.png" class="msg-photo" alt="Alex's Avatar" />
                                        <span class="msg-body">
													<span class="msg-title">
														<span class="blue">Alex:</span>
														Ciao sociis natoque penatibus et auctor ...
													</span>

													<span class="msg-time">
														<i class="ace-icon fa fa-clock-o"></i>
														<span>a moment ago</span>
													</span>
												</span>
                                    </a>
                                </li>

                                <li>
                                    <a href="#" class="clearfix">
                                        <img src="assets/images/avatars/avatar3.png" class="msg-photo" alt="Susan's Avatar" />
                                        <span class="msg-body">
													<span class="msg-title">
														<span class="blue">Susan:</span>
														Vestibulum id ligula porta felis euismod ...
													</span>

													<span class="msg-time">
														<i class="ace-icon fa fa-clock-o"></i>
														<span>20 minutes ago</span>
													</span>
												</span>
                                    </a>
                                </li>

                                <li>
                                    <a href="#" class="clearfix">
                                        <img src="assets/images/avatars/avatar4.png" class="msg-photo" alt="Bob's Avatar" />
                                        <span class="msg-body">
													<span class="msg-title">
														<span class="blue">Bob:</span>
														Nullam quis risus eget urna mollis ornare ...
													</span>

													<span class="msg-time">
														<i class="ace-icon fa fa-clock-o"></i>
														<span>3:15 pm</span>
													</span>
												</span>
                                    </a>
                                </li>

                                <li>
                                    <a href="#" class="clearfix">
                                        <img src="assets/images/avatars/avatar2.png" class="msg-photo" alt="Kate's Avatar" />
                                        <span class="msg-body">
													<span class="msg-title">
														<span class="blue">Kate:</span>
														Ciao sociis natoque eget urna mollis ornare ...
													</span>

													<span class="msg-time">
														<i class="ace-icon fa fa-clock-o"></i>
														<span>1:33 pm</span>
													</span>
												</span>
                                    </a>
                                </li>

                                <li>
                                    <a href="#" class="clearfix">
                                        <img src="assets/images/avatars/avatar5.png" class="msg-photo" alt="Fred's Avatar" />
                                        <span class="msg-body">
													<span class="msg-title">
														<span class="blue">Fred:</span>
														Vestibulum id penatibus et auctor  ...
													</span>

													<span class="msg-time">
														<i class="ace-icon fa fa-clock-o"></i>
														<span>10:09 am</span>
													</span>
												</span>
                                    </a>
                                </li>
                            </ul>
                        </li>

                        <li class="dropdown-footer">
                            <a href="inbox.html">
                                See all messages
                                <i class="ace-icon fa fa-arrow-right"></i>
                            </a>
                        </li>
                    </ul>
                </li>

                <li class="light-blue dropdown-modal">
                    <a data-toggle="dropdown" href="#" class="dropdown-toggle">
                        <img class="nav-user-photo" src="assets/images/avatars/user.jpg" alt="Jason's Photo" />
                        <span class="user-info">
									<small>Welcome,</small>
								  <%=session.getAttribute("adminLoged")%>
								</span>

                        <i class="ace-icon fa fa-caret-down"></i>
                    </a>

                    <ul class="user-menu dropdown-menu-right dropdown-menu dropdown-yellow dropdown-caret dropdown-close">
                        <li>
                            <a href="#">
                                <i class="ace-icon fa fa-cog"></i>
                                Settings
                            </a>
                        </li>

                        <li>
                            <a href="profile.html">
                                <i class="ace-icon fa fa-user"></i>
                                Profile
                            </a>
                        </li>

                        <li class="divider"></li>

                        <li>
                            <a href="<c:url value="/admin/logout"/>">
                                <i class="ace-icon fa fa-power-off"></i>
                                Logout
                            </a>
                        </li>
                    </ul>
                </li>
            </ul>
        </div>
    </div><!-- /.navbar-container -->
</div>

<div class="main-container ace-save-state" id="main-container">
    <script type="text/javascript">
        try{ace.settings.loadState('main-container')}catch(e){}
    </script>

    <div id="sidebar" class="sidebar                  responsive                    ace-save-state">
        <script type="text/javascript">
            try{ace.settings.loadState('sidebar')}catch(e){}
        </script>

        <div class="sidebar-shortcuts" id="sidebar-shortcuts">
            <div class="sidebar-shortcuts-large" id="sidebar-shortcuts-large">
                <button class="btn btn-success">
                    <i class="ace-icon fa fa-signal"></i>
                </button>

                <button class="btn btn-info">
                    <i class="ace-icon fa fa-pencil"></i>
                </button>

                <button class="btn btn-warning">
                    <i class="ace-icon fa fa-users"></i>
                </button>

                <button class="btn btn-danger">
                    <i class="ace-icon fa fa-cogs"></i>
                </button>
            </div>

            <div class="sidebar-shortcuts-mini" id="sidebar-shortcuts-mini">
                <span class="btn btn-success"></span>

                <span class="btn btn-info"></span>

                <span class="btn btn-warning"></span>

                <span class="btn btn-danger"></span>
            </div>
        </div><!-- /.sidebar-shortcuts -->

        <!-- =====================Thanh menu quản lý======================-->
        <ul class="nav nav-list">
            <li class="active">
                <a href="<c:url value="/admin/home"/>">
                    <i class="menu-icon fa fa-tachometer"></i>
                    <span class="menu-text"> Trang Chủ </span>
                </a>

                <b class="arrow"></b>
            </li>

            <li class="">
                <a href="<c:url value="/admin/home"/>" class="dropdown-toggle">
                    <i class="menu-icon fa fa-desktop"></i>
                    <span class="menu-text">
								Cấu hình Users
							</span>

                    <b class="arrow fa fa-angle-down"></b>
                </a>

                <b class="arrow"></b>

                <ul class="submenu">
                    <li class="">
                        <a href="/managerUser">
                            <i class="menu-icon fa fa-caret-right"></i>
                            Quản lí User
                        </a>

                        <b class="arrow"></b>
                    </li>

                    <li class="">
                        <a href="#">
                            <i class="menu-icon fa fa-caret-right"></i>
                            Danh sách quyền
                        </a>

                        <b class="arrow"></b>
                    </li>

                    <li class="">
                        <a href="#">
                            <i class="menu-icon fa fa-caret-right"></i>
                            Danh sách User
                        </a>

                        <b class="arrow"></b>
                    </li>
                    <li class="">
                        <a href="<c:url value="/adduser"/>">
                            <i class="menu-icon fa fa-caret-right"></i>
                            Thêm User
                        </a>

                        <b class="arrow"></b>
                    </li>


                </ul>
            </li>

            <li class="">
                <a href="<c:url value="/admin/home"/>" class="dropdown-toggle">
                    <i class="menu-icon fa fa-list"></i>
                    <span class="menu-text"> Quản Lý Danh Mục </span>

                    <b class="arrow fa fa-angle-down"></b>
                </a>

                <b class="arrow"></b>

                <ul class="submenu">
                    <li class="">
                        <a href="">
                            <i class="menu-icon fa fa-caret-right"></i>
                            Loại danh mục
                        </a>

                        <b class="arrow"></b>
                    </li>


                </ul>
            </li>

            <li class="">
                <a href="<c:url value="/admin/home"/>" class="dropdown-toggle">
                    <i class="menu-icon fa fa-pencil-square-o"></i>
                    <span class="menu-text">Quản lý nhà sản xuất</span>

                    <b class="arrow fa fa-angle-down"></b>
                </a>


                <b class="arrow"></b>
                <ul class="submenu">
                    <li class="">
                        <a href="<c:url value="/getAllBrands"/>">
                            <i class="menu-icon fa fa-caret-right"></i>
                            Danh sách nhà sản xuất
                        </a>

                        <b class="arrow"></b>
                    </li>
                    <li class="">
                        <a href="/admin/brand/addBrand">
                            <i class="menu-icon fa fa-caret-right"></i>
                            Thêm nhà sản xuất
                        </a>

                        <b class="arrow"></b>
                    </li>


                </ul>


            </li>

            <li class="">
                <a href="<c:url value="/admin/home"/>" class="dropdown-toggle">
                    <i class="menu-icon fa fa-pencil-square-o"></i>
                    <span class="menu-text">Quản lý sản phẩm </span>

                    <b class="arrow fa fa-angle-down"></b>
                </a>


                <b class="arrow"></b>
                <ul class="submenu">
                    <li class="">
                        <a href="<c:url value="/admin/getListProduct"/>">
                            <i class="menu-icon fa fa-caret-right"></i>
                            Danh sách sản phẩm
                        </a>

                        <b class="arrow"></b>
                    </li>

                    <li class="">
                        <a href="<c:url value="/admin/addProduct"/>">
                            <i class="menu-icon fa fa-caret-right"></i>
                            Thêm sản phẩm
                        </a>

                        <b class="arrow"></b>
                    </li>
                    <li class="">
                        <a href="#">
                            <i class="menu-icon fa fa-caret-right"></i>
                            Danh sách màu sắc
                        </a>

                        <b class="arrow"></b>
                    </li>

                </ul>

            </li>

            <li class="active open">
                <a href="/admin/home" class="dropdown-toggle">
                    <i class="menu-icon fa fa-calendar"></i>
                    <span class="menu-text">Quản lý đơn hàng </span>

                    <b class="arrow fa fa-angle-down"></b>
                </a>
                <b class="arrow"></b>
                <ul class="submenu">
                    <li class="active">
                        <a href="<c:url value="/admin/invoiceDetail/getInvoiceDetail"/> ">
                            <i class="menu-icon fa fa-caret-right"></i>
                            Danh sách đơn hàng
                        </a>
                        <b class="arrow"></b>
                    </li>
                </ul>
            </li>

        </ul><!-- /.nav-list -->
        <!----------------------Kết thúc phần thêm chức năng của trang admin---------------->

        <div class="sidebar-toggle sidebar-collapse" id="sidebar-collapse">
            <i id="sidebar-toggle-icon" class="ace-icon fa fa-angle-double-left ace-save-state" data-icon1="ace-icon fa fa-angle-double-left" data-icon2="ace-icon fa fa-angle-double-right"></i>
        </div>
    </div>

    <div class="main-content">
        <div class="main-content-inner">
            <div class="breadcrumbs ace-save-state" id="breadcrumbs">
                <ul class="breadcrumb">
                    <li>
                        <i class="ace-icon fa fa-home home-icon"></i>
                        <a href="#">Trang chủ</a>
                    </li>
                    <li class="active">Quản lý đơn hàng</li>
                </ul><!-- /.breadcrumb -->

                <div class="nav-search" id="nav-search">
                    <form class="form-search">
								<span class="input-icon">
									<input type="text" placeholder="Search ..." class="nav-search-input" id="nav-search-input" autocomplete="off" />
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
                                    </select>
                                </div>
                                <span>&nbsp; Choose Skin</span>
                            </div>

                            <div class="ace-settings-item">
                                <input type="checkbox" class="ace ace-checkbox-2 ace-save-state" id="ace-settings-navbar" autocomplete="off" />
                                <label class="lbl" for="ace-settings-navbar"> Fixed Navbar</label>
                            </div>

                            <div class="ace-settings-item">
                                <input type="checkbox" class="ace ace-checkbox-2 ace-save-state" id="ace-settings-sidebar" autocomplete="off" />
                                <label class="lbl" for="ace-settings-sidebar"> Fixed Sidebar</label>
                            </div>

                            <div class="ace-settings-item">
                                <input type="checkbox" class="ace ace-checkbox-2 ace-save-state" id="ace-settings-breadcrumbs" autocomplete="off" />
                                <label class="lbl" for="ace-settings-breadcrumbs"> Fixed Breadcrumbs</label>
                            </div>

                            <div class="ace-settings-item">
                                <input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-rtl" autocomplete="off" />
                                <label class="lbl" for="ace-settings-rtl"> Right To Left (rtl)</label>
                            </div>

                            <div class="ace-settings-item">
                                <input type="checkbox" class="ace ace-checkbox-2 ace-save-state" id="ace-settings-add-container" autocomplete="off" />
                                <label class="lbl" for="ace-settings-add-container">
                                    Inside
                                    <b>.container</b>
                                </label>
                            </div>
                        </div><!-- /.pull-left -->

                        <div class="pull-left width-50">
                            <div class="ace-settings-item">
                                <input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-hover" autocomplete="off" />
                                <label class="lbl" for="ace-settings-hover"> Submenu on Hover</label>
                            </div>

                            <div class="ace-settings-item">
                                <input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-compact" autocomplete="off" />
                                <label class="lbl" for="ace-settings-compact"> Compact Sidebar</label>
                            </div>

                            <div class="ace-settings-item">
                                <input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-highlight" autocomplete="off" />
                                <label class="lbl" for="ace-settings-highlight"> Alt. Active Item</label>
                            </div>
                        </div><!-- /.pull-left -->
                    </div><!-- /.ace-settings-box -->
                </div><!-- /.ace-settings-container -->

                <div class="page-header">
                    <h1>
                        Quản lý đơn hàng
                    </h1>
                </div><!-- /.page-header -->

                <div class="row">
                    <div class="col-xs-12">
                        <!-- PAGE CONTENT BEGINS -->
                        <div class="row">
                            <div class="col-xs-12">
                                <!-- PAGE CONTENT BEGINS -->

                                <!--===========================Phần bài làm ==========================-->
                                <div class="row">
                                    <!-- div nội dung bảng-->
                                    <div class="col-xs-12">
                                        <div class="statusinfo">
                                            <span class="titleinvoice"><i class="fa fa-pencil-square-o" aria-hidden="true"></i>Thông tin đơn hàng: Đơn hàng mới</span>
                                            <button><a><i class="fa fa-floppy-o" aria-hidden="true"></i>Cập nhập</a></button>
                                            <button><a><i class="fa fa-sign-out" aria-hidden="true"></i>Thoát</a></button>
                                        </div>
                                        <div>
                                            <h3>Thông tin người mua</h3>


                                            <!--------------------Bảng hiển thị thông tin người dùng----------------->
                                                <table id="dynamic-table" class="table table-striped table-bordered table-hover">
                                                            <tr>
                                                                <td>Người mua</td>
                                                                <td>${invoiceDetailObj.invoice.users.name}</td>
                                                            </tr>
                                                            <tr>
                                                                <td>Email</td>
                                                                <td>${invoiceDetailObj.invoice.users.email}</td>
                                                            </tr>
                                                            <tr>
                                                                <td>Điện thoại</td>
                                                                <td>${invoiceDetailObj.invoice.phoneNumber}</td>
                                                            </tr>
                                                            <tr>
                                                                <td>Địa chỉ</td>
                                                                <td>${invoiceDetailObj.invoice.address}</td>
                                                            </tr>
                                                            <tr>
                                                                <td>Thời gian đặt hàng</td>
                                                                <td>${invoiceDetailObj.invoice.createDate}</td>
                                                            </tr>
                                                            <tr>
                                                                <td>Tổng tiền</td>
                                                                <td><fmt:formatNumber value="${invoiceDetailObj.price * invoiceDetailObj.invoice.quantity}" type="currency"/></td>
                                                            </tr>

                                                </table>
                                                    <div class="col-xs-12">

                                                        <!-- div.table-responsive -->

                                                        <!-- div.dataTables_borderWrap -->
                                                        <div>
                                                            <table id="dynamic-table2" class="table table-striped table-bordered table-hover">
                                                                <thead>
                                                                <tr>
                                                                    <th>Mã sản phẩm</th>
                                                                    <th>Sản phẩm</th>
                                                                    <th>Số lượng</th>
                                                                    <th>Đơn giá</th>
                                                                    <th>Thành tiền</th>
                                                                </tr>
                                                                </thead>
                                                                <tbody>
                                                                <!--===================== Phần hiển thị hóa đơn người mua============-->
                                                                <tr>
                                                                    <td>${invoiceDetailObj.product.id}</td>
                                                                    <td>
                                                                        <span>${invoiceDetailObj.product.name}</span>
                                                                        <img src="<c:url value="/resources/image/product/pro${invoiceDetailObj.product.id}.jpg"/>" height="60px" width="50px">
                                                                    </td>
                                                                    <td>${invoiceDetailObj.invoice.quantity}</td>
                                                                    <td><fmt:formatNumber value="${invoiceDetailObj.price}" type="currency"/></td>
                                                                    <td><fmt:formatNumber value="${invoiceDetailObj.price * invoiceDetailObj.invoice.quantity}" type="currency"/></td>
                                                                </tr>  <!--======== Phần hiển thị hóa đơn người mua====-->

                                                                <!--===================== Phần hiển thị hóa đơn người mua============-->
                                                                </tbody>
                                                            </table>
                                                        </div>
                                                    </div> <!-- Kết thúc div nội dung bảng-->
                                                    <div class="total">Tổng tiền: <span class="totalmoney"><fmt:formatNumber value="${invoiceDetailObj.price * invoiceDetailObj.invoice.quantity}" type="currency"/></span></div>
                                                </table> <!------------ Kết thúc bảng thông tin người dùng----------------->

                                        </div>
                                    </div>
                                </div>

                                <div id="modal-table" class="modal fade" tabindex="-1">
                                    <div class="modal-dialog">
                                        <div class="modal-content">
                                            <div class="modal-header no-padding">
                                                <div class="table-header">
                                                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                                                        <span class="white">&times;</span>
                                                    </button>
                                                    Results for "Latest Registered Domains
                                                </div>
                                            </div>

                                            <div class="modal-body no-padding">
                                                <table class="table table-striped table-bordered table-hover no-margin-bottom no-border-top">
                                                    <thead>
                                                    <tr>
                                                        <th>Domain</th>
                                                        <th>Price</th>
                                                        <th>Clicks</th>

                                                        <th>
                                                            <i class="ace-icon fa fa-clock-o bigger-110"></i>
                                                            Update
                                                        </th>
                                                    </tr>
                                                    </thead>

                                                    <tbody>
                                                    <tr>
                                                        <td>
                                                            <a href="#">ace.com</a>
                                                        </td>
                                                        <td>$45</td>
                                                        <td>3,330</td>
                                                        <td>Feb 12</td>
                                                    </tr>

                                                    <tr>
                                                        <td>
                                                            <a href="#">base.com</a>
                                                        </td>
                                                        <td>$35</td>
                                                        <td>2,595</td>
                                                        <td>Feb 18</td>
                                                    </tr>

                                                    <tr>
                                                        <td>
                                                            <a href="#">max.com</a>
                                                        </td>
                                                        <td>$60</td>
                                                        <td>4,400</td>
                                                        <td>Mar 11</td>
                                                    </tr>

                                                    <tr>
                                                        <td>
                                                            <a href="#">best.com</a>
                                                        </td>
                                                        <td>$75</td>
                                                        <td>6,500</td>
                                                        <td>Apr 03</td>
                                                    </tr>

                                                    <tr>
                                                        <td>
                                                            <a href="#">pro.com</a>
                                                        </td>
                                                        <td>$55</td>
                                                        <td>4,250</td>
                                                        <td>Jan 21</td>
                                                    </tr>
                                                    </tbody>
                                                </table>
                                            </div>

                                            <div class="modal-footer no-margin-top">
                                                <button class="btn btn-sm btn-danger pull-left" data-dismiss="modal">
                                                    <i class="ace-icon fa fa-times"></i>
                                                    Close
                                                </button>

                                                <ul class="pagination pull-right no-margin">
                                                    <li class="prev disabled">
                                                        <a href="#">
                                                            <i class="ace-icon fa fa-angle-double-left"></i>
                                                        </a>
                                                    </li>

                                                    <li class="active">
                                                        <a href="#">1</a>
                                                    </li>

                                                    <li>
                                                        <a href="#">2</a>
                                                    </li>

                                                    <li>
                                                        <a href="#">3</a>
                                                    </li>

                                                    <li class="next">
                                                        <a href="#">
                                                            <i class="ace-icon fa fa-angle-double-right"></i>
                                                        </a>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div><!-- /.modal-content -->
                                    </div><!-- /.modal-dialog -->
                                </div>

                                <!-- PAGE CONTENT ENDS -->
                            </div><!-- /.col -->
                        </div><!-- /.row -->
                        <!-- PAGE CONTENT ENDS -->
                    </div><!-- /.col -->
                </div><!-- /.row -->
            </div><!-- /.page-content -->
        </div>
    </div><!-- /.main-content -->

    <div class="footer">
        <div class="footer-inner">
            <div class="footer-content">
						<span class="bigger-120">
							<span class="blue bolder">Ace</span>
							Application &copy; 2013-2014
						</span>

                &nbsp; &nbsp;
                <span class="action-buttons">
							<a href="#">
								<i class="ace-icon fa fa-twitter-square light-blue bigger-150"></i>
							</a>

							<a href="#">
								<i class="ace-icon fa fa-facebook-square text-primary bigger-150"></i>
							</a>

							<a href="#">
								<i class="ace-icon fa fa-rss-square orange bigger-150"></i>
							</a>
						</span>
            </div>
        </div>
    </div>

    <a href="#" id="btn-scroll-up" class="btn-scroll-up btn btn-sm btn-inverse">
        <i class="ace-icon fa fa-angle-double-up icon-only bigger-110"></i>
    </a>
</div><!-- /.main-container -->

<script src="<c:url value="/resources/theme1/assets_admin/js/jquery-2.1.4.min.js" />"></script>
<script src="<c:url value="/resources/theme1/assets_admin/js/jquery-1.11.3.min.js" />"></script>
<script type="text/javascript">
    if('ontouchstart' in document.documentElement) document.write("<script src='<c:url value="/resources/theme1/assets_admin/js/jquery.mobile.custom.min.js" />'>"+"<"+"/script>");
</script>
<script src="<c:url value="/resources/theme1/assets_admin/js/bootstrap.min.js" />"></script>
<!-- page specific plugin scripts -->
<script src="<c:url value="/resources/theme1/assets_admin/js/jquery.dataTables.min.js" />"></script>
<script src="<c:url value="/resources/theme1/assets_admin/js/jquery.dataTables.bootstrap.min.js" />"></script>
<script src="<c:url value="/resources/theme1/assets_admin/js/dataTables.buttons.min.js" />"></script>
<script src="<c:url value="/resources/theme1/assets_admin/js/buttons.flash.min.js" />"></script>
<script src="<c:url value="/resources/theme1/assets_admin/js/buttons.html5.min.js" />"></script>
<script src="<c:url value="/resources/theme1/assets_admin/js/buttons.print.min.js" />"></script>
<script src="<c:url value="/resources/theme1/assets_admin/js/buttons.colVis.min.js" />"></script>
<script src="<c:url value="/resources/theme1/assets_admin/js/dataTables.select.min.js" />"></script>
<!-- ace scripts -->
<script src="<c:url value="/resources/theme1/assets_admin/js/ace-elements.min.js" />"></script>
<script src="<c:url value="/resources/theme1/assets_admin/js/ace.min.js" />"></script>
<!-- inline scripts related to this page -->
<script type="text/javascript">
    $(document).ready(function() {
        $('#dynamic-table').DataTable();
    } );
</script>


</body>
</html>
