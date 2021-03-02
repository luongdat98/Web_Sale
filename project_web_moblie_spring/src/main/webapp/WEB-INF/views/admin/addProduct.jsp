<%--
  Created by IntelliJ IDEA.
  User: nguye
  Date: 05/08/2020
  Time: 11:37 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<html>
<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
    <meta charset="utf-8" />
    <title>Thêm sản phẩm</title>

    <meta name="description" content="overview &amp; stats" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0" />

    <!-- bootstrap & fontawesome -->
    <%--    <link rel="stylesheet" href="assets/css/bootstrap.min.css" />--%>
    <link href="<c:url value="/resources/theme1/assets_admin/css/bootstrap.min.css" />" rel="stylesheet">
    <%--    <link rel="stylesheet" href="assets/font-awesome/4.5.0/css/font-awesome.min.css" />--%>
    <link href="<c:url value="/resources/theme1/assets_admin/font-awesome/4.5.0/css/font-awesome.min.css" />" rel="stylesheet">

    <!-- page specific plugin styles -->

    <!-- text fonts -->
    <%--    <link rel="stylesheet" href="assets/css/fonts.googleapis.com.css" />--%>
    <link href="<c:url value="/resources/theme1/assets_admin/css/fonts.googleapis.com.css" />" rel="stylesheet">

    <!-- ace styles -->
    <%--    <link rel="stylesheet" href="assets/css/ace.min.css" class="ace-main-stylesheet" id="main-ace-style" />--%>
    <link href="<c:url value="/resources/theme1/assets_admin/css/ace.css" />" rel="stylesheet">

    <!--[if lte IE 9]>

    <link href="<c:url value="/resources/theme1/assets_admin/css/ace-part2.min.css" />" rel="stylesheet">


    <![endif]-->

    <link href="<c:url value="/resources/theme1/assets_admin/css/ace-skins.min.css" />" rel="stylesheet">

    <link href="<c:url value="/resources/theme1/assets_admin/css/ace-rtl.min.css" />" rel="stylesheet">

    <!--[if lte IE 9]>

<link href="<c:url value="/resources/theme1/assets_admin/css/ace-ie.min.css" />" rel="stylesheet">
    <![endif]-->

    <!-- inline styles related to this page -->

    <!-- ace settings handler -->

    <link href="<c:url value="/resources/theme1/assets_admin/js/ace-extra.min.js" />" rel="stylesheet">

    <!-- HTML5shiv and Respond.js for IE8 to support HTML5 elements and media queries -->
    <script type="text/javascript" src="<c:url value="/resources/theme1/assets_admin/css/ckeditor/ckeditor.js" />"></script>
    <!--[if lte IE 8]>

 <link href="<c:url value="/resources/theme1/assets_admin/js/html5shiv.min.js" />" rel="stylesheet">

 <link href="<c:url value="/resources/theme1/assets_admin/js/respond.min.js" />" rel="stylesheet">
    <![endif]-->

    <style>
        .error {
            color: red;
        }
    </style>
</head>

<body class="no-skin">
<div id="navbar" class="navbar navbar-default          ace-save-state">
    <div class="navbar-container ace-save-state" id="navbar-container">
        <!--        <button type="button" class="navbar-toggle menu-toggler pull-left" id="menu-toggler" data-target="#sidebar">-->
        <!--            <span class="sr-only">Toggle sidebar</span>-->

        <!--            <span class="icon-bar"></span>-->

        <!--            <span class="icon-bar"></span>-->

        <!--            <span class="icon-bar"></span>-->
        <!--        </button>-->

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
                        <img class="nav-user-photo" src="<c:url value="/resources/theme1/assets_admin/images/avatars/user.jpg" />" alt="Jason's Photo" />
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
                <a href="#" class="dropdown-toggle">
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
                        <a href="<c:url value="/admin/brand/addBrand"/>">
                            <i class="menu-icon fa fa-caret-right"></i>
                            Thêm nhà sản xuất
                        </a>

                        <b class="arrow"></b>
                    </li>


                </ul>


            </li>

            <li class="active open">
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

                    <li class="active">
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
                        <a href="<c:url value="/admin/invoiceDetail/getInvoiceDetail" />">
                            <i class="menu-icon fa fa-caret-right"></i>
                            Danh sách đơn hàng
                        </a>
                        <b class="arrow"></b>
                    </li>


                </ul>


            </li>


        </ul><!-- /.nav-list -->

        <div class="sidebar-toggle sidebar-collapse" id="sidebar-collapse">
            <i id="sidebar-toggle-icon" class="ace-icon fa fa-angle-double-left ace-save-state" data-icon1="ace-icon fa fa-angle-double-left" data-icon2="ace-icon fa fa-angle-double-right"></i>
        </div>
    </div>

    <!--    page context-->
    <div class="main-content">
        <div class="main-content-inner">
            <div class="breadcrumbs ace-save-state" id="breadcrumbs">
                <ul class="breadcrumb">
                    <li>
                        <i class="ace-icon fa fa-home home-icon"></i>
                        <a href="<c:url value="/admin/home"/>">Trang chủ</a>
                    </li>

                    <li>
                        <a href="<c:url value="/admin/getListProduct"/>">Quản lý sản phẩm </a>
                    </li>
                    <li class="active">Thêm sản phẩm</li>
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


                <div class="page-header">
                    <h1>
                        Quản lý sản phẩm
                        <small>
                            <i class="ace-icon fa fa-angle-double-right"></i>
                            Thêm sản phẩm
                        </small>
                    </h1>
                </div><!-- /.page-header -->

                <div class="row">
                    <div class="col-xs-12">
                        <!-- PAGE CONTENT BEGINS -->
<%--                        <c:url value="/admin/product/addProduct" var="url"></c:url>--%>
<%--                        <form:form method="post" action="${url}" modelAttribute="productFormObj" enctype="multipart/form-data" class="form-horizontal" role="form">--%>
                        <c:url value="/admin/addProduct" var="url"></c:url>
                        <form:form action="${url}" commandName="productFormObj" class="form-horizontal" role="form"
                                   enctype="multipart/form-data" method="post">
                            <div class="form-group">
                                <label class="col-sm-3 control-label no-padding-right" for="nameProduct">Tên sản phẩm: </label>
                                <div class="col-sm-9">
                                    <form:input path="name" type="text" id="nameProduct" placeholder="Vui lòng nhập tên sản phẩm" class="col-xs-10"/><br><br>
                                    <span id="nameProductEr" style="color: red"></span>
                                    <form:errors  path="name" cssClass="error"/> <br>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-3 control-label no-padding-right">Danh mục :</label>
                                <div class="col-sm-9">
<%--                                    <form:input path="category.id" type="" name="" id="form-field-2" class="col-xs-10"/>--%>
                                    <form:select path="categoryId.id" name="" id="">
                                        <c:forEach var="category" items="${categories}">
                                            <option value="${category.id}">${category.name}</option>
                                        </c:forEach>
                                    </form:select>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-3 control-label no-padding-right">Nhà sản xuất :</label>
                                <div class="col-sm-9">
<%--                                    <form:input path="brand.id" type="" name="" id="form-field-2" class="col-xs-10"/>--%>
                                    <form:select path="brandId.id" name="" id="">
                                        <c:forEach var="brand" items="${brands}">
                                            <option value="${brand.id}">${brand.name}</option>
                                        </c:forEach>
                                    </form:select>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-3 control-label no-padding-right">Số lượng:</label>
                                <div class="col-sm-9">
<%--                                    <form:input path="code" type="" name="" id="form-field-2" class="col-xs-10"/>--%>
                                    <form:input path="quantity" type="number" id="quantityProduct" placeholder="Vui lòng nhập số lượng"
                                                class="col-xs-10"/><br><br>
                                    <span id="quantityProductEr" style="color: red"></span>
                                    <form:errors  path="quantity" cssClass="error"/> <br>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-3 control-label no-padding-right">Ảnh đại diện</label>
                                <div class="col-sm-9">
<%--                                    <form:input path="price" type="" name="" id="form-field-2" class="col-xs-10"/>--%>
                                    <form:input path="imgMain" type="file" id="form-field-3" placeholder="Vui lòng nhập mật khẩu"
                                           class="col-xs-10"/>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-3 control-label no-padding-right">Danh sách ảnh:</label>
                                <div class="col-sm-9">
<%--                                    <form:input path="description" type="" name="" id="form-field-2" class="col-xs-10"/>--%>
                                    <form:input path="imgList" name="imgMain" multiple="multiple" type="file" id="form-field-" placeholder="Vui lòng nhập lại mật khẩu"
                                                class="col-xs-10"/>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-3 control-label no-padding-right">Mã sản phẩm:</label>
                                <div class="col-sm-9">
                                    <form:textarea path="code"  class="col-xs-10" id="codeProduct"/><br><br>
                                    <!--                                    <input type="texta" id="form-field-10" placeholder="Vui lòng nhập số điện thoại" class="col-xs-10" />-->
                                    <span id="codeProductEr" style="color: red"></span>
                                    <form:errors  path="code" cssClass="error"/> <br>
                                </div>
                            </div>

                            <div class="form-group">
                                <label class="col-sm-3 control-label no-padding-right">Mô tả tóm tắt:</label>
                                <div class="col-sm-9">
<%--                                    <form:input path="imgMain" type="file" name="upload" id="form-field-2" class="col-xs-10"/>--%>
                                      <textarea class="col-xs-10" id="edit"></textarea>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-3 control-label no-padding-right">Mô tả chi tiết:</label>
                                <div class="col-sm-9">
                                    <form:textarea path="description" class="col-xs-10" id="editor2"/>
                                    <!--                                    <input type="texta" id="form-field-10" placeholder="Vui lòng nhập số điện thoại" class="col-xs-10" />-->
                                    <form:errors  path="description" cssClass="error"/> <br>

                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-3 control-label no-padding-right">Giá sản phẩm:</label>
                                <div class="col-sm-9">
                                    <form:input path="price" type="number" id="priceProduct" placeholder="" class="col-xs-10"/><br><br>
                                    <span id="priceProductEr" style="color: red"></span>
                                    <form:errors  path="price" cssClass="error"/> <br>

                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-3 control-label no-padding-right">Giảm giá:</label>
                                <div class="col-sm-9">
                                    <form:input path="discount" type="number" id="discountProduct" placeholder="" class="col-xs-10"/><br><br>
                                    <span id="discountProductEr" style="color:red"></span>
                                    <br><br>
                                </div>
                            </div>
                            <div class="clearfix form-actions">
                                <div class="col-md-offset-3 col-md-9">
                                    <button class="btn btn-info" type="submit"><i class="ace-icon fa fa-check bigger-110"></i>Submit</button>
                                    &nbsp; &nbsp; &nbsp;
                                    <button class="btn" type="reset">
                                        <i class="ace-icon fa fa-undo bigger-110"></i>
                                        Reset
                                    </button>
                                </div>
                            </div>
                            <div class="hr hr-24"></div>
                            <div class="space-24"></div>
                        </form:form>


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

<%--Ajax kiem tra name product ton tai--%>
<script type="text/javascript">
    $('document').ready(function () {
        $("#nameProduct").blur(function () {
            var nameProduct = $('#nameProduct').val();
            if(nameProduct ==''){
                $('#nameProductEr').html("Không được bỏ trống");
            }




            $.ajax({
                type: 'POST',
                url:  "${pageContext.request.contextPath }/checkNameProductExist",
                data: {
                    'nameProduct': nameProduct,
                },
                success: function (response) {
                    if (response == 'exist') {
                        $('#nameProductEr').html("Tên sản phẩm đã tồn tại");
                    } else {
                        $('#nameProductEr').html("");
                    }
                    if (nameProduct == '') {
                        $('#nameProductEr').html("không được bỏ trống");
                    }
                }
            })
        });

        $('#priceProduct').blur(function () {
            var priceProduct = $('#priceProduct').val()
            if(priceProduct == ''){
                $('#priceProductEr').html("không được để trống");
            }else{
                if(priceProduct < 0){
                    $('#priceProductEr').html("Giá sản phẩm không được là số âm");

                }else if(priceProduct == 0){
                    $('#priceProductEr').html("Giá sản phẩm không được bằng 0");
                }
                else{
                    $('#priceProductEr').html("");

                }
            }

        });

        $('#quantityProduct').blur(function () {
            var quantityProduct = $('#quantityProduct').val()
            if(quantityProduct == ''){
                $('#quantityProductEr').html("không được để trống");
            }else{
                if(quantityProduct < 0){
                    $('#quantityProductEr').html("Số lượng sản phẩm không được là số âm");

                }else if(quantityProduct == 0){
                    $('#quantityProductEr').html("Số lượng sản phẩm không được bằng 0");
                }
                else{
                    $('#quantityProductEr').html("");

                }
            }

        });

        $('#codeProduct').blur(function () {
            var codeProduct = $('#codeProduct').val()
            if(codeProduct == ''){
                $('#codeProductEr').html("không được để trống");
            }


        });

        $('#discountProduct').blur(function () {
            var discountProduct = $('#discountProduct').val()
            if(discountProduct < 0) {
                $('#discountProductEr').html("Giảm giá không được là số âm");
            }

        });

    });

</script>
<!-- <![endif]-->

<!--[if IE]>
<script src="<c:url value="/resources/theme1/assets_admin/js/jquery-1.11.3.min.js" />"></script>
<![endif]-->
<script type="text/javascript">
    if('ontouchstart' in document.documentElement) document.write("<script src='<c:url value="/resources/theme1/assets_admin/js/jquery.mobile.custom.min.js" />'>"+"<"+"/script>");
</script>
<script src="<c:url value="/resources/theme1/assets_admin/js/bootstrap.min.js" />"></script>

<!-- page specific plugin scripts -->

<!--[if lte IE 8]>
<script src="<c:url value="/resources/theme1/assets_admin/js/excanvas.min.js" />"></script>
<![endif]-->
<script src="<c:url value="/resources/theme1/assets_admin/js/jquery-ui.custom.min.js" />"></script>
<script src="<c:url value="/resources/theme1/assets_admin/js/jquery.ui.touch-punch.min.js" />"></script>
<script src="<c:url value="/resources/theme1/assets_admin/js/jquery.easypiechart.min.js" />"></script>
<script src="<c:url value="/resources/theme1/assets_admin/js/jquery.sparkline.index.min.js" />"></script>
<script src="<c:url value="/resources/theme1/assets_admin/js/jquery.flot.min.js" />"></script>
<script src="<c:url value="/resources/theme1/assets_admin/js/jquery.flot.pie.min.js" />"></script>
<script src="<c:url value="/resources/theme1/assets_admin/js/jquery.flot.resize.min.js" />"></script>

<!-- ace scripts -->
<script src="<c:url value="/resources/theme1/assets_admin/js/ace-elements.min.js" />"></script>
<script src="<c:url value="/resources/theme1/assets_admin/js/ace.min.js" />"></script>

<!-- inline scripts related to this page -->
<script type="text/javascript">
    jQuery(function($) {
        $('.easy-pie-chart.percentage').each(function(){
            var $box = $(this).closest('.infobox');
            var barColor = $(this).data('color') || (!$box.hasClass('infobox-dark') ? $box.css('color') : 'rgba(255,255,255,0.95)');
            var trackColor = barColor == 'rgba(255,255,255,0.95)' ? 'rgba(255,255,255,0.25)' : '#E2E2E2';
            var size = parseInt($(this).data('size')) || 50;
            $(this).easyPieChart({
                barColor: barColor,
                trackColor: trackColor,
                scaleColor: false,
                lineCap: 'butt',
                lineWidth: parseInt(size/10),
                animate: ace.vars['old_ie'] ? false : 1000,
                size: size
            });
        })

        $('.sparkline').each(function(){
            var $box = $(this).closest('.infobox');
            var barColor = !$box.hasClass('infobox-dark') ? $box.css('color') : '#FFF';
            $(this).sparkline('html',
                {
                    tagValuesAttribute:'data-values',
                    type: 'bar',
                    barColor: barColor ,
                    chartRangeMin:$(this).data('min') || 0
                });
        });


        //flot chart resize plugin, somehow manipulates default browser resize event to optimize it!
        //but sometimes it brings up errors with normal resize event handlers
        $.resize.throttleWindow = false;

        var placeholder = $('#piechart-placeholder').css({'width':'90%' , 'min-height':'150px'});
        var data = [
            { label: "social networks",  data: 38.7, color: "#68BC31"},
            { label: "search engines",  data: 24.5, color: "#2091CF"},
            { label: "ad campaigns",  data: 8.2, color: "#AF4E96"},
            { label: "direct traffic",  data: 18.6, color: "#DA5430"},
            { label: "other",  data: 10, color: "#FEE074"}
        ]
        function drawPieChart(placeholder, data, position) {
            $.plot(placeholder, data, {
                series: {
                    pie: {
                        show: true,
                        tilt:0.8,
                        highlight: {
                            opacity: 0.25
                        },
                        stroke: {
                            color: '#fff',
                            width: 2
                        },
                        startAngle: 2
                    }
                },
                legend: {
                    show: true,
                    position: position || "ne",
                    labelBoxBorderColor: null,
                    margin:[-30,15]
                }
                ,
                grid: {
                    hoverable: true,
                    clickable: true
                }
            })
        }
        drawPieChart(placeholder, data);

        /**
         we saved the drawing function and the data to redraw with different position later when switching to RTL mode dynamically
         so that's not needed actually.
         */
        placeholder.data('chart', data);
        placeholder.data('draw', drawPieChart);


        //pie chart tooltip example
        var $tooltip = $("<div class='tooltip top in'><div class='tooltip-inner'></div></div>").hide().appendTo('body');
        var previousPoint = null;

        placeholder.on('plothover', function (event, pos, item) {
            if(item) {
                if (previousPoint != item.seriesIndex) {
                    previousPoint = item.seriesIndex;
                    var tip = item.series['label'] + " : " + item.series['percent']+'%';
                    $tooltip.show().children(0).text(tip);
                }
                $tooltip.css({top:pos.pageY + 10, left:pos.pageX + 10});
            } else {
                $tooltip.hide();
                previousPoint = null;
            }

        });

        /////////////////////////////////////
        $(document).one('ajaxloadstart.page', function(e) {
            $tooltip.remove();
        });




        var d1 = [];
        for (var i = 0; i < Math.PI * 2; i += 0.5) {
            d1.push([i, Math.sin(i)]);
        }

        var d2 = [];
        for (var i = 0; i < Math.PI * 2; i += 0.5) {
            d2.push([i, Math.cos(i)]);
        }

        var d3 = [];
        for (var i = 0; i < Math.PI * 2; i += 0.2) {
            d3.push([i, Math.tan(i)]);
        }


        var sales_charts = $('#sales-charts').css({'width':'100%' , 'height':'220px'});
        $.plot("#sales-charts", [
            { label: "Domains", data: d1 },
            { label: "Hosting", data: d2 },
            { label: "Services", data: d3 }
        ], {
            hoverable: true,
            shadowSize: 0,
            series: {
                lines: { show: true },
                points: { show: true }
            },
            xaxis: {
                tickLength: 0
            },
            yaxis: {
                ticks: 10,
                min: -2,
                max: 2,
                tickDecimals: 3
            },
            grid: {
                backgroundColor: { colors: [ "#fff", "#fff" ] },
                borderWidth: 1,
                borderColor:'#555'
            }
        });


        $('#recent-box [data-rel="tooltip"]').tooltip({placement: tooltip_placement});
        function tooltip_placement(context, source) {
            var $source = $(source);
            var $parent = $source.closest('.tab-content')
            var off1 = $parent.offset();
            var w1 = $parent.width();

            var off2 = $source.offset();
            //var w2 = $source.width();

            if( parseInt(off2.left) < parseInt(off1.left) + parseInt(w1 / 2) ) return 'right';
            return 'left';
        }


        $('.dialogs,.comments').ace_scroll({
            size: 300
        });


        //Android's default browser somehow is confused when tapping on label which will lead to dragging the task
        //so disable dragging when clicking on label
        var agent = navigator.userAgent.toLowerCase();
        if(ace.vars['touch'] && ace.vars['android']) {
            $('#tasks').on('touchstart', function(e){
                var li = $(e.target).closest('#tasks li');
                if(li.length == 0)return;
                var label = li.find('label.inline').get(0);
                if(label == e.target || $.contains(label, e.target)) e.stopImmediatePropagation() ;
            });
        }

        $('#tasks').sortable({
                opacity:0.8,
                revert:true,
                forceHelperSize:true,
                placeholder: 'draggable-placeholder',
                forcePlaceholderSize:true,
                tolerance:'pointer',
                stop: function( event, ui ) {
                    //just for Chrome!!!! so that dropdowns on items don't appear below other items after being moved
                    $(ui.item).css('z-index', 'auto');
                }
            }
        );
        $('#tasks').disableSelection();
        $('#tasks input:checkbox').removeAttr('checked').on('click', function(){
            if(this.checked) $(this).closest('li').addClass('selected');
            else $(this).closest('li').removeClass('selected');
        });


        //show the dropdowns on top or bottom depending on window height and menu position
        $('#task-tab .dropdown-hover').on('mouseenter', function(e) {
            var offset = $(this).offset();

            var $w = $(window)
            if (offset.top > $w.scrollTop() + $w.innerHeight() - 100)
                $(this).addClass('dropup');
            else $(this).removeClass('dropup');
        });

    })
</script>
<script type="text/javascript">
    // var editor = CKEDITOR.replace('editor1');
    // CKFinder.setupCKEditor(editor,'ckfinder');
    var editor1 = CKEDITOR.replace('editor2');

</script>
</body>
</html>
