<%--
  Created by IntelliJ IDEA.
  User: nguye
  Date: 05/08/2020
  Time: 11:52 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<html>
<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"/>
    <meta charset="utf-8"/>
    <title>Tables - Ace Admin</title>

    <meta name="description" content="Static &amp; Dynamic Tables"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0"/>

    <!-- bootstrap & fontawesome -->
    <link rel="stylesheet" href="<c:url value="/resources/theme1/assets_admin/css/bootstrap.min.css" />" />
    <link rel="stylesheet" href="<c:url value="/resources/theme1/assets_admin/font-awesome/4.5.0/css/font-awesome.min.css" />" />

    <!-- page specific plugin styles -->

    <!-- text fonts -->
    <link rel="stylesheet" href="<c:url value="/resources/theme1/assets_admin/css/fonts.googleapis.com.css" />" />

    <!-- ace styles -->
    <link rel="stylesheet" href="<c:url value="/resources/theme1/assets_admin/css/ace.css" />" class="ace-main-stylesheet" id="main-ace-style" />

    <!--[if lte IE 9]>
    <link rel="stylesheet" href="<c:url value="/resources/theme1/assets_admin/css/ace-part2.min.css" />" class="ace-main-stylesheet" />
    <![endif]-->
    <link rel="stylesheet" href="<c:url value="/resources/theme1/assets_admin/css/ace-skins.min.css" />" />
    <link rel="stylesheet" href="<c:url value="/resources/theme1/assets_admin/css/ace-rtl.min.css" />" />

    <!--[if lte IE 9]>
    <link rel="stylesheet" href="<c:url value="/resources/theme1/assets_admin/css/ace-ie.min.css" />" />
    <![endif]-->

    <!-- inline styles related to this page -->

    <!-- ace settings handler -->
    <script src="<c:url value="/resources/theme1/assets_admin/js/ace-extra.min.js" />"></script>

    <!-- HTML5shiv and Respond.js for IE8 to support HTML5 elements and media queries -->

    <!--[if lte IE 8]>
    <script src="<c:url value="/resources/theme1/assets_admin/js/html5shiv.min.js" />"></script>
    <script src="<c:url value="/resources/theme1/assets_admin/js/respond.min.js" />"></script>
    <![endif]-->
</head>
<body class="no-skin">
<div id="navbar" class="navbar navbar-default          ace-save-state">
    <div class="navbar-container ace-save-state" id="navbar-container">


        <div class="navbar-header pull-left">
            <a href="<c:url value="/admin/home"/>" class="navbar-brand">
                <small>
                    <i class="fa fa-leaf"></i>
                    Quản Trị Admin
                </small>
            </a>
        </div>

        <div class="navbar-buttons navbar-header pull-right" role="navigation">
            <ul class="nav ace-nav">
                <li class="light-blue dropdown-modal">
                    <a data-toggle="dropdown" href="#" class="dropdown-toggle">
                        <img class="nav-user-photo" src="assets/images/avatars/user.jpg" alt="Jason's Photo"/>
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
                            <a href="#">
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
        try {
            ace.settings.loadState('main-container')
        } catch (e) {
        }
    </script>

    <div id="sidebar" class="sidebar                  responsive                    ace-save-state">
        <script type="text/javascript">
            try {
                ace.settings.loadState('sidebar')
            } catch (e) {
            }
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

        <ul class="nav nav-list">
            <li class="">
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
                        <a href="<c:url value="/managerUser"/>">
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
                        <a href="#">
                            <i class="menu-icon fa fa-caret-right"></i>
                            Loại danh mục
                        </a>

                        <b class="arrow"></b>
                    </li>


                </ul>
            </li>

            <li class="active open">
                <a href="<c:url value="/admin/home"/>" class="dropdown-toggle">
                    <i class="menu-icon fa fa-pencil-square-o"></i>
                    <span class="menu-text">Quản lý nhà sản xuất</span>

                    <b class="arrow fa fa-angle-down"></b>
                </a>


                <b class="arrow"></b>
                <ul class="submenu">
                    <li class="active">
                        <a href="<c:url value="/getAllBrands"/>">
                            <i class="menu-icon fa fa-caret-right"></i>
                            Danh sách nhà sản xuất
                        </a>

                        <b class="arrow"></b>
                    </li>
                    <li class="">
                        <a href="<c:url value="/admin/brand/addBrand" />">
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

            <li class="">
                <a href="<c:url value="/admin/home"/>" class="dropdown-toggle">
                    <i class="menu-icon fa fa-calendar"></i>
                    <span class="menu-text">Quản lý đơn hàng </span>

                    <b class="arrow fa fa-angle-down"></b>
                </a>


                <b class="arrow"></b>
                <ul class="submenu">
                    <li class="">
                        <a href="<c:url value="/admin/invoiceDetail/getInvoiceDetail"/>">
                            <i class="menu-icon fa fa-caret-right"></i>
                            Danh sách đơn hàng
                        </a>

                        <b class="arrow"></b>
                    </li>


                </ul>


            </li>


        </ul><!-- /.nav-list -->

        <div class="sidebar-toggle sidebar-collapse" id="sidebar-collapse">
            <i id="sidebar-toggle-icon" class="ace-icon fa fa-angle-double-left ace-save-state"
               data-icon1="ace-icon fa fa-angle-double-left" data-icon2="ace-icon fa fa-angle-double-right"></i>
        </div>
    </div>

    <!--    pages content-->
    <div class="main-content">
        <div class="main-content-inner">
            <div class="breadcrumbs ace-save-state" id="breadcrumbs">
                <ul class="breadcrumb">
                    <li>
                        <i class="ace-icon fa fa-home home-icon"></i>
                        <a href="<c:url value="/admin/home"/>">Trang chủ</a>
                    </li>

                    <li>
                        <a href="#">Quản lí nhà cung cấp</a>
                    </li>
                    <li class="active">Thông tin nhà cung cấp</li>
                </ul><!-- /.breadcrumb -->

                <div class="nav-search" id="nav-search">
                    <form class="form-search">
								<span class="input-icon">
									<input type="text" placeholder="Search ..." class="nav-search-input"
                                           id="nav-search-input1" autocomplete="off"/>
									<i cl   ass="ace-icon fa fa-search nav-search-icon"></i>
								</span>
                    </form>
                </div><!-- /.nav-search -->
            </div>

            <div class="page-content">


                <div class="page-header">
                    <h1>
                        Nhà sản xuất
                        <small>
                            <i class="ace-icon fa fa-angle-double-right"></i>
                            Thông tin các nhà sản xuất
                        </small>
                    </h1>
                </div><!-- /.page-header -->

                <div class="row">
                    <div class="col-xs-12">
                        <!-- PAGE CONTENT BEGINS -->

                        <div class="row">
                            <div class="col-xs-12">

                                <!-- div.table-responsive -->

                                <!-- div.dataTables_borderWrap -->
                                <div>
                                    <table id="dynamic-table" class="table table-striped table-bordered table-hover">
                                        <thead>
                                        <tr>
                                            <th class="center">
                                                <label class="pos-rel">
                                                    <input type="checkbox" class="ace"/>
                                                    <span class="lbl"></span>
                                                </label>
                                            </th>
                                            <th>Id</th>
                                            <th class="hidden-320" >Logo</th>
                                            <th>Tên nhà sản xuất</th>

<%--                                            <th>--%>
<%--                                                <i class="ace-icon fa fa-clock-o bigger-110 hidden-480"></i>--%>
<%--                                                Hiện thị--%>
<%--                                            </th>--%>


                                            <th>Tác vụ</th>
                                        </tr>
                                        </thead>

                                        <tbody>
                                        <c:forEach items="${brands}" var="brand">
                                            <c:choose>
                                            <c:when test="${brand.activeFlag==1}">
                                            <!--                                        Dòng thứ nhất-->
                                            <tr>
                                                <td class="center">
                                                    <label class="pos-rel">
                                                        <input type="checkbox" class="ace"/>
                                                        <span class="lbl"></span>
                                                    </label>
                                                </td>


                                                <td>${brand.id}</td>

                                                <td class="hidden-320"><img src="<c:url value="/resources/image/brand/logo${brand.id}.jpg"/>"
                                                                            style="max-height:60px" alt="${brand.logo}" /></td>
                                                <td >${brand.name}</td>
                                                <!--                                            <td>Thành viên</td>-->

<%--                                                <td class="hidden-480">--%>
<%--                                                    <div class="col-xs-3">--%>
<%--                                                        <label>--%>
<%--                                                            <input name="switch-field-1" class="ace ace-switch"--%>
<%--                                                                   type="checkbox"/>--%>
<%--                                                            <span class="lbl"></span>--%>
<%--                                                        </label>--%>
<%--                                                    </div>--%>
<%--                                                </td>--%>

                                                <td>
                                                    <div class="hidden-sm hidden-xs action-buttons">

                                                        <a class="green" href="<c:url value="/admin/brand/editBrand/${brand.id}" />">
                                                            <i class="ace-icon fa fa-pencil bigger-130"></i>
                                                        </a>

                                                        <a onclick="return confirm('Bạn chắc chắn xóa? '+'${brand.name}');" class="red" href="<c:url value="/admin/delete1/${brand.id}" />" >
                                                            <i class="ace-icon fa fa-trash-o bigger-130"></i>

                                                        </a>
                                                    </div>


                                                </td>
                                            </tr>

                                            </c:when></c:choose>

                                        </c:forEach>


                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                        <%--jquery--%>


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

<!-- basic scripts -->


<!--[if !IE]> -->
<script src="<c:url value="/resources/theme1/assets_admin/js/jquery-2.1.4.min.js" />"></script>

<!-- <![endif]-->

<!--[if IE]>
<script src="<c:url value="/resources/theme1/assets_admin/js/jquery-1.11.3.min.js" />"></script>
<![endif]-->
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
