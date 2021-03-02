<%--
  Created by IntelliJ IDEA.
  User: QUOC_THAI
  Date: 7/17/2020
  Time: 10:50 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html lang="en">
<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"/>
    <meta charset="utf-8"/>
    <title>Form Elements - Ace Admin</title>

    <meta name="description" content="Common form elements and layouts"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0"/>

    <!-- bootstrap & fontawesome -->
    <link rel="stylesheet" href="<c:url value="/resources/theme1/assets_admin/css/bootstrap.min.css"/>"/>
    <link rel="stylesheet"
          href="<c:url value="/resources/theme1/assets_admin/font-awesome/4.5.0/css/font-awesome.min.css"/>"/>

    <!-- page specific plugin styles -->
    <link rel="stylesheet" href="<c:url value="/resources/theme1/assets_admin/css/jquery-ui.custom.min.css"/>"/>
    <link rel="stylesheet" href="<c:url value="/resources/theme1/assets_admin/css/chosen.min.css"/>"/>
    <link rel="stylesheet" href="<c:url value="/resources/theme1/assets_admin/css/bootstrap-datepicker3.min.css"/>"/>
    <link rel="stylesheet" href="<c:url value="/resources/theme1/assets_admin/css/bootstrap-timepicker.min.css"/>"/>
    <link rel="stylesheet" href="<c:url value="/resources/theme1/assets_admin/css/daterangepicker.min.css"/>"/>
    <link rel="stylesheet" href="<c:url value="/resources/theme1/assets_admin/css/bootstrap-datetimepicker.min.css"/>"/>
    <link rel="stylesheet" href="<c:url value="/resources/theme1/assets_admin/css/bootstrap-colorpicker.min.css"/>"/>

    <!-- text fonts -->
    <link rel="stylesheet" href="<c:url value="/resources/theme1/assets_admin/css/fonts.googleapis.com.css"/>"/>

    <!-- ace styles -->
    <link rel="stylesheet" href="<c:url value="/resources/theme1/assets_admin/css/ace.css"/>"
          class="ace-main-stylesheet"
          id="main-ace-style"/>

    <!--[if lte IE 9]>
    <link rel="stylesheet"href="<c:url value="/resources/theme1/assets_admin/css/ace-part2.min.css"/>" class="ace-main-stylesheet" />
    <![endif]-->
    <link rel="stylesheet" href="<c:url value="/resources/theme1/assets_admin/css/ace-skins.min.css"/>"/>
    <link rel="stylesheet" href="<c:url value="/resources/theme1/assets_admin/css/ace-rtl.min.css"/>"/>

    <!--[if lte IE 9]>
    <link rel="stylesheet" href="<c:url value="/resources/theme1/assets_admin/css/ace-ie.min.css"/>" />
    <![endif]-->

    <!-- inline styles related to this page -->

    <!-- ace settings handler -->
    <script href="<c:url value="/resources/theme1/assets_admin/js/ace-extra.min.js"/>"></script>

    <!-- HTML5shiv and Respond.js for IE8 to support HTML5 elements and media queries -->

    <!--[if lte IE 8]>
    <script href="<c:url value="/resources/theme1/assets_admin/js/html5shiv.min.js"/>"></script>
    <scripthref="<c:url value="/resources/theme1/assets_admin/js/respond.min.js"/>"></script>
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
        <button type="button" class="navbar-toggle menu-toggler pull-left" id="menu-toggler" data-target="#sidebar">
            <span class="sr-only">Toggle sidebar</span>

            <span class="icon-bar"></span>

            <span class="icon-bar"></span>

            <span class="icon-bar"></span>
        </button>

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
                        <img class="nav-user-photo"
                             src="<c:url value="/resources/theme1/assets_admin/images/avatars/user.jpg"/>"
                             alt="Jason's Photo"/>
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
            <li class="active">
                <a href="<c:url value="/admin/home"/>">
                    <i class="menu-icon fa fa-tachometer"></i>
                    <span class="menu-text"> Trang Chủ </span>
                </a>

                <b class="arrow"></b>
            </li>
            <!--Cấu hình user-->
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
                            Thông tin User
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
            <!--Quản lí danh mục-->
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
            <!--Quản lí nhà sản xuất-->
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
                            Thông tin nhà sản xuất
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

            <!-- Quản lí sản phẩm           -->
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

            <!--   Quản lí đơn hàng        -->
            <li class="">
                <a href="<c:url value="/admin/home"/>" class="dropdown-toggle">
                    <i class="menu-icon fa fa-calendar"></i>
                    <span class="menu-text">Quản lý đơn hàng </span>

                    <b class="arrow fa fa-angle-down"></b>
                </a>


                <b class="arrow"></b>
                <ul class="submenu">
                    <li class="">
                        <a href="/admin/invoiceDetail/getInvoiceDetail">
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

    <div class="main-content">
        <div class="main-content-inner">
            <div class="breadcrumbs ace-save-state" id="breadcrumbs">
                <ul class="breadcrumb">
                    <li>
                        <i class="ace-icon fa fa-home home-icon"></i>
                        <a href="<c:url value="/admin/home"/>">Trang chủ</a>
                    </li>

                    <li>
                        <a href="#">Cấu hình Users</a>
                    </li>
                    <li class="active">Thêm Users</li>
                </ul><!-- /.breadcrumb -->

                <div class="nav-search" id="nav-search">
                    <form class="form-search">
								<span class="input-icon">
									<input type="text" placeholder="Search ..." class="nav-search-input"
                                           id="nav-search-input" autocomplete="off"/>
									<i class="ace-icon fa fa-search nav-search-icon"></i>
								</span>
                    </form>
                </div><!-- /.nav-search -->
            </div>

            <div class="page-content">


                <div class="page-header">
                    <h1>
                        Cấu hình Users
                        <small>
                            <i class="ace-icon fa fa-angle-double-right"></i>
                            Thêm Users
                        </small>
                    </h1>
                </div><!-- /.page-header -->

                <div class="row">
                    <div class="col-xs-12">
                        <!-- PAGE CONTENT BEGINS -->
                        <form:form name="addUserForm" id="addUserForm"  method="POST" modelAttribute="addUser" class="form-horizontal" role="form">
                            <div class="form-group">
                                <label class="col-sm-3 control-label no-padding-right" for="username">Tên đăng
                                    nhập: </label>

                                <div class="col-sm-9">
                                    <form:input path="username" type="text" id="username"
                                                placeholder="Vui lòng nhập tên đăng nhập" class="col-xs-10"/><br><br>
                                    <span id="usernameEr" style="color: #ff0000"></span>
                                    <form:errors id="status" path="username" cssClass="error"/> <br>
                                </div>
                            </div>
                            <div class="space-4"></div>

                            <div class="form-group">
                                <label class="col-sm-3 control-label no-padding-right" for="name">Tên của bạn
                                    :</label>

                                <div class="col-sm-9">
                                    <form:input path="name" type="text" id="name" placeholder="Vui lòng nhập của bạn"
                                                class="col-xs-10"/><br><br>
                                    <span id="nameEr" style="color: #ff0000"></span>
                                    <form:errors path="name" cssClass="error"/> <br>
                                </div>
                            </div>
                            <div class="space-4"></div>


                            <div class="form-group">
                                <label class="col-sm-3 control-label no-padding-right" for="email">Nhập Email
                                    :</label>

                                <div class="col-sm-9">
                                    <form:input path="email" type="email" id="email"
                                                placeholder="Vui lòng nhập email" class="col-xs-10"/><br><br>
                                    <span id="emailEr" style="color: #ff0000"></span>
                                    <form:errors path="email" cssClass="error"/><br>
                                </div>

                            </div>
                            <div class="space-4"></div>
                            <div class="form-group">
                                <label class="col-sm-3 control-label no-padding-right" for="password">Nhập Mật khẩu
                                    :</label>

                                <div class="col-sm-9">
                                    <form:input path="password" type="password" id="password"
                                                placeholder="Vui lòng nhập mật khẩu" class="col-xs-10"/><br><br>
                                    <span id="passwordEr" style="color: #ff0000"></span>
                                    <form:errors path="password" cssClass="error"/> <br>
                                </div>
                            </div>
                            <div class="space-4"></div>
                            <div class="form-group">
                                <label class="col-sm-3 control-label no-padding-right" for="repass">Nhập lại mật
                                    khẩu :</label>

                                <div class="col-sm-9">
                                    <form:input path="passwordConfirm" type="password" id="repass"
                                                placeholder="Vui lòng nhập lại mật khẩu" class="col-xs-10"/><br><br>
                                    <span id="repassEr" style="color: #ff0000"></span>
                                        <%--                                    <span id="repassloc" cssclass="error"></span><br>--%>
                                    <form:errors path="passwordConfirm" cssClass="error"/> <br>

                                </div>
                            </div>

                            <div class="space-4"></div>


                            <div class="space-4"></div>

                            <div class="form-group">
                                <label class="col-sm-3 control-label no-padding-right" for="phone">Nhập số điện
                                    thoại :</label>

                                <div class="col-sm-9">
                                    <input type="text" id="phone" placeholder="Vui lòng nhập số điện thoại"
                                           class="col-xs-10"/><br><br>
                                    <span id="phoneEr" style="color: #ff0000"></span>

                                </div>
                            </div>


                            <div class="space-4"></div>

                            <div class="form-group">
                                <label class="col-sm-3 control-label no-padding-right" for="permission">Quyền:</label>

                                <div class="col-sm-9">

                                    <select name="permission" id="permission" path="listRole">
<%--                                        <form:option value="${listPermistion}"></form:option>--%>
                                        <option value="user">Thành viên</option>
                                        <option value="admin">Admin</option>
                                    </select>

                                </div>
                            </div>


                            <div class="clearfix form-actions">
                                <div class="col-md-offset-3 col-md-9">
                                    <button class="btn btn-info" type="submit">
                                        <i class="ace-icon fa fa-check bigger-110"></i>
                                        Register
                                    </button>

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
<script src="<c:url value="/resources/theme1/assets_admin/js/jquery-2.1.4.min.js"/>"></script>

<!-- <![endif]-->

<!--[if IE]>
<script src="<c:url value="/resources/theme1/assets_admin/js/jquery-1.11.3.min.js"/>"</script>

<![endif]-->
<script type="text/javascript">
    if ('ontouchstart' in document.documentElement) document.write("<script src='/resources/theme1/assets_admin/js/jquery.mobile.custom.min.js'>" + "<" + "/script>");
</script>
<script src="<c:url value="/resources/theme1/assets_admin/js/bootstrap.min.js"/>"></script>

<!-- page specific plugin scripts -->

<!--[if lte IE 8]>
<script src="<c:url value="/resources/theme1/assets_admin/js/excanvas.min.js"/>"</script>
<![endif]-->
<script src="<c:url value="/resources/theme1/assets_admin/js/jquery-ui.custom.min.js"/>"></script>
<script src="<c:url value="/resources/theme1/assets_admin/js/jquery.ui.touch-punch.min.js"/>"></script>
<script src="<c:url value="/resources/theme1/assets_admin/js/chosen.jquery.min.js"/>"></script>
<script src="<c:url value="/resources/theme1/assets_admin/js/spinbox.min.js"/>"></script>
<script src="<c:url value="/resources/theme1/assets_admin/js/bootstrap-datepicker.min.js"/>"></script>
<script src="<c:url value="/resources/theme1/assets_admin/js/bootstrap-timepicker.min.js"/>"></script>
<script src="<c:url value="/resources/theme1/assets_admin/js/moment.min.js"/>"></script>
<script src="<c:url value="/resources/theme1/assets_admin/js/daterangepicker.min.js"/>"></script>
<script src="<c:url value="/resources/theme1/assets_admin/js/bootstrap-datetimepicker.min.js"/>"></script>
<script src="<c:url value="/resources/theme1/assets_admin/js/bootstrap-colorpicker.min.js"/>"></script>
<script src="<c:url value="/resources/theme1/assets_admin/js/jquery.knob.min.js"/>"></script>
<script src="<c:url value="/resources/theme1/assets_admin/js/autosize.min.js"/>"></script>
<script src="<c:url value="/resources/theme1/assets_admin/js/jquery.inputlimiter.min.js"/>"></script>
<script src="<c:url value="/resources/theme1/assets_admin/js/jquery.maskedinput.min.js"/>"></script>
<script src="<c:url value="/resources/theme1/assets_admin/js/bootstrap-tag.min.js"/>"></script>

<!-- ace scripts -->
<script src="<c:url value="/resources/theme1/assets_admin/js/ace-elements.min.js"/>"></script>
<script src="<c:url value="/resources/theme1/assets_admin/js/ace.min.js"/>"></script>


<%--<script>--%>
<%--    function validation() {--%>
<%--        var firstpassword = document.getElementById('pass').value;--%>
<%--        var secondpassword = document.getElementById('repass').value;--%>
<%--        if (firstpassword == secondpassword) {--%>
<%--            return true;--%>
<%--        } else {--%>
<%--            document.getElementById("repassloc").innerHTML = "repassword phải trùng với password";--%>
<%--            return false;--%>
<%--        }--%>
<%--    }--%>
<%--</script>--%>

<!-- inline scripts related to this page -->
<script type="text/javascript">
    jQuery(function ($) {
        $('#id-disable-check').on('click', function () {
            var inp = $('#form-input-readonly').get(0);
            if (inp.hasAttribute('disabled')) {
                inp.setAttribute('readonly', 'true');
                inp.removeAttribute('disabled');
                inp.value = "This text field is readonly!";
            } else {
                inp.setAttribute('disabled', 'disabled');
                inp.removeAttribute('readonly');
                inp.value = "This text field is disabled!";
            }
        });


        if (!ace.vars['touch']) {
            $('.chosen-select').chosen({allow_single_deselect: true});
            //resize the chosen on window resize

            $(window)
                .off('resize.chosen')
                .on('resize.chosen', function () {
                    $('.chosen-select').each(function () {
                        var $this = $(this);
                        $this.next().css({'width': $this.parent().width()});
                    })
                }).trigger('resize.chosen');
            //resize chosen on sidebar collapse/expand
            $(document).on('settings.ace.chosen', function (e, event_name, event_val) {
                if (event_name != 'sidebar_collapsed') return;
                $('.chosen-select').each(function () {
                    var $this = $(this);
                    $this.next().css({'width': $this.parent().width()});
                })
            });


            $('#chosen-multiple-style .btn').on('click', function (e) {
                var target = $(this).find('input[type=radio]');
                var which = parseInt(target.val());
                if (which == 2) $('#form-field-select-4').addClass('tag-input-style');
                else $('#form-field-select-4').removeClass('tag-input-style');
            });
        }


        $('[data-rel=tooltip]').tooltip({container: 'body'});
        $('[data-rel=popover]').popover({container: 'body'});

        autosize($('textarea[class*=autosize]'));

        $('textarea.limited').inputlimiter({
            remText: '%n character%s remaining...',
            limitText: 'max allowed : %n.'
        });

        $.mask.definitions['~'] = '[+-]';
        $('.input-mask-date').mask('99/99/9999');
        $('.input-mask-phone').mask('(999) 999-9999');
        $('.input-mask-eyescript').mask('~9.99 ~9.99 999');
        $(".input-mask-product").mask("a*-999-a999", {
            placeholder: " ", completed: function () {
                alert("You typed the following: " + this.val());
            }
        });


        $("#input-size-slider").css('width', '200px').slider({
            value: 1,
            range: "min",
            min: 1,
            max: 8,
            step: 1,
            slide: function (event, ui) {
                var sizing = ['', 'input-sm', 'input-lg', 'input-mini', 'input-small', 'input-medium', 'input-large', 'input-xlarge', 'input-xxlarge'];
                var val = parseInt(ui.value);
                $('#form-field-4').attr('class', sizing[val]).attr('placeholder', '.' + sizing[val]);
            }
        });

        $("#input-span-slider").slider({
            value: 1,
            range: "min",
            min: 1,
            max: 12,
            step: 1,
            slide: function (event, ui) {
                var val = parseInt(ui.value);
                $('#form-field-5').attr('class', 'col-xs-' + val).val('.col-xs-' + val);
            }
        });


        //"jQuery UI Slider"
        //range slider tooltip example
        $("#slider-range").css('height', '200px').slider({
            orientation: "vertical",
            range: true,
            min: 0,
            max: 100,
            values: [17, 67],
            slide: function (event, ui) {
                var val = ui.values[$(ui.handle).index() - 1] + "";

                if (!ui.handle.firstChild) {
                    $("<div class='tooltip right in' style='display:none;left:16px;top:-6px;'><div class='tooltip-arrow'></div><div class='tooltip-inner'></div></div>")
                        .prependTo(ui.handle);
                }
                $(ui.handle.firstChild).show().children().eq(1).text(val);
            }
        }).find('span.ui-slider-handle').on('blur', function () {
            $(this.firstChild).hide();
        });


        $("#slider-range-max").slider({
            range: "max",
            min: 1,
            max: 10,
            value: 2
        });

        $("#slider-eq > span").css({width: '90%', 'float': 'left', margin: '15px'}).each(function () {
            // read initial values from markup and remove that
            var value = parseInt($(this).text(), 10);
            $(this).empty().slider({
                value: value,
                range: "min",
                animate: true

            });
        });

        $("#slider-eq > span.ui-slider-purple").slider('disable');//disable third item


        $('#id-input-file-1 , #id-input-file-2').ace_file_input({
            no_file: 'No File ...',
            btn_choose: 'Choose',
            btn_change: 'Change',
            droppable: false,
            onchange: null,
            thumbnail: false //| true | large
            //whitelist:'gif|png|jpg|jpeg'
            //blacklist:'exe|php'
            //onchange:''
            //
        });
        //pre-show a file name, for example a previously selected file
        //$('#id-input-file-1').ace_file_input('show_file_list', ['myfile.txt'])


        $('#id-input-file-3').ace_file_input({
            style: 'well',
            btn_choose: 'Drop files here or click to choose',
            btn_change: null,
            no_icon: 'ace-icon fa fa-cloud-upload',
            droppable: true,
            thumbnail: 'small'//large | fit
            //,icon_remove:null//set null, to hide remove/reset button
            /**,before_change:function(files, dropped) {
						//Check an example below
						//or examples/file-upload.html
						return true;
					}*/
            /**,before_remove : function() {
						return true;
					}*/
            ,
            preview_error: function (filename, error_code) {
                //name of the file that failed
                //error_code values
                //1 = 'FILE_LOAD_FAILED',
                //2 = 'IMAGE_LOAD_FAILED',
                //3 = 'THUMBNAIL_FAILED'
                //alert(error_code);
            }

        }).on('change', function () {
            //console.log($(this).data('ace_input_files'));
            //console.log($(this).data('ace_input_method'));
        });


        //$('#id-input-file-3')
        //.ace_file_input('show_file_list', [
        //{type: 'image', name: 'name of image', path: 'http://path/to/image/for/preview'},
        //{type: 'file', name: 'hello.txt'}
        //]);


        //dynamically change allowed formats by changing allowExt && allowMime function
        $('#id-file-format').removeAttr('checked').on('change', function () {
            var whitelist_ext, whitelist_mime;
            var btn_choose
            var no_icon
            if (this.checked) {
                btn_choose = "Drop images here or click to choose";
                no_icon = "ace-icon fa fa-picture-o";

                whitelist_ext = ["jpeg", "jpg", "png", "gif", "bmp"];
                whitelist_mime = ["image/jpg", "image/jpeg", "image/png", "image/gif", "image/bmp"];
            } else {
                btn_choose = "Drop files here or click to choose";
                no_icon = "ace-icon fa fa-cloud-upload";

                whitelist_ext = null;//all extensions are acceptable
                whitelist_mime = null;//all mimes are acceptable
            }
            var file_input = $('#id-input-file-3');
            file_input
                .ace_file_input('update_settings',
                    {
                        'btn_choose': btn_choose,
                        'no_icon': no_icon,
                        'allowExt': whitelist_ext,
                        'allowMime': whitelist_mime
                    })
            file_input.ace_file_input('reset_input');

            file_input
                .off('file.error.ace')
                .on('file.error.ace', function (e, info) {
                    //console.log(info.file_count);//number of selected files
                    //console.log(info.invalid_count);//number of invalid files
                    //console.log(info.error_list);//a list of errors in the following format

                    //info.error_count['ext']
                    //info.error_count['mime']
                    //info.error_count['size']

                    //info.error_list['ext']  = [list of file names with invalid extension]
                    //info.error_list['mime'] = [list of file names with invalid mimetype]
                    //info.error_list['size'] = [list of file names with invalid size]


                    /**
                     if( !info.dropped ) {
							//perhapse reset file field if files have been selected, and there are invalid files among them
							//when files are dropped, only valid files will be added to our file array
							e.preventDefault();//it will rest input
						}
                     */


                    //if files have been selected (not dropped), you can choose to reset input
                    //because browser keeps all selected files anyway and this cannot be changed
                    //we can only reset file field to become empty again
                    //on any case you still should check files with your server side script
                    //because any arbitrary file can be uploaded by user and it's not safe to rely on browser-side measures
                });


            /**
             file_input
             .off('file.preview.ace')
             .on('file.preview.ace', function(e, info) {
						console.log(info.file.width);
						console.log(info.file.height);
						e.preventDefault();//to prevent preview
					});
             */

        });

        $('#spinner1').ace_spinner({
            value: 0,
            min: 0,
            max: 200,
            step: 10,
            btn_up_class: 'btn-info',
            btn_down_class: 'btn-info'
        })
            .closest('.ace-spinner')
            .on('changed.fu.spinbox', function () {
                //console.log($('#spinner1').val())
            });
        $('#spinner2').ace_spinner({
            value: 0,
            min: 0,
            max: 10000,
            step: 100,
            touch_spinner: true,
            icon_up: 'ace-icon fa fa-caret-up bigger-110',
            icon_down: 'ace-icon fa fa-caret-down bigger-110'
        });
        $('#spinner3').ace_spinner({
            value: 0,
            min: -100,
            max: 100,
            step: 10,
            on_sides: true,
            icon_up: 'ace-icon fa fa-plus bigger-110',
            icon_down: 'ace-icon fa fa-minus bigger-110',
            btn_up_class: 'btn-success',
            btn_down_class: 'btn-danger'
        });
        $('#spinner4').ace_spinner({
            value: 0,
            min: -100,
            max: 100,
            step: 10,
            on_sides: true,
            icon_up: 'ace-icon fa fa-plus',
            icon_down: 'ace-icon fa fa-minus',
            btn_up_class: 'btn-purple',
            btn_down_class: 'btn-purple'
        });

        //$('#spinner1').ace_spinner('disable').ace_spinner('value', 11);
        //or
        //$('#spinner1').closest('.ace-spinner').spinner('disable').spinner('enable').spinner('value', 11);//disable, enable or change value
        //$('#spinner1').closest('.ace-spinner').spinner('value', 0);//reset to 0


        //datepicker plugin
        //link
        $('.date-picker').datepicker({
            autoclose: true,
            todayHighlight: true
        })
            //show datepicker when clicking on the icon
            .next().on(ace.click_event, function () {
            $(this).prev().focus();
        });

        //or change it into a date range picker
        $('.input-daterange').datepicker({autoclose: true});


        //to translate the daterange picker, please copy the "examples/daterange-fr.js" contents here before initialization
        $('input[name=date-range-picker]').daterangepicker({
            'applyClass': 'btn-sm btn-success',
            'cancelClass': 'btn-sm btn-default',
            locale: {
                applyLabel: 'Apply',
                cancelLabel: 'Cancel',
            }
        })
            .prev().on(ace.click_event, function () {
            $(this).next().focus();
        });


        $('#timepicker1').timepicker({
            minuteStep: 1,
            showSeconds: true,
            showMeridian: false,
            disableFocus: true,
            icons: {
                up: 'fa fa-chevron-up',
                down: 'fa fa-chevron-down'
            }
        }).on('focus', function () {
            $('#timepicker1').timepicker('showWidget');
        }).next().on(ace.click_event, function () {
            $(this).prev().focus();
        });


        if (!ace.vars['old_ie']) $('#date-timepicker1').datetimepicker({
            //format: 'MM/DD/YYYY h:mm:ss A',//use this option to display seconds
            icons: {
                time: 'fa fa-clock-o',
                date: 'fa fa-calendar',
                up: 'fa fa-chevron-up',
                down: 'fa fa-chevron-down',
                previous: 'fa fa-chevron-left',
                next: 'fa fa-chevron-right',
                today: 'fa fa-arrows ',
                clear: 'fa fa-trash',
                close: 'fa fa-times'
            }
        }).next().on(ace.click_event, function () {
            $(this).prev().focus();
        });


        $('#colorpicker1').colorpicker();
        //$('.colorpicker').last().css('z-index', 2000);//if colorpicker is inside a modal, its z-index should be higher than modal'safe

        $('#simple-colorpicker-1').ace_colorpicker();
        //$('#simple-colorpicker-1').ace_colorpicker('pick', 2);//select 2nd color
        //$('#simple-colorpicker-1').ace_colorpicker('pick', '#fbe983');//select #fbe983 color
        //var picker = $('#simple-colorpicker-1').data('ace_colorpicker')
        //picker.pick('red', true);//insert the color if it doesn't exist


        $(".knob").knob();


        var tag_input = $('#form-field-tags');
        try {
            tag_input.tag(
                {
                    placeholder: tag_input.attr('placeholder'),
                    //enable typeahead by specifying the source array
                    source: ace.vars['US_STATES'],//defined in ace.js >> ace.enable_search_ahead
                    /**
                     //or fetch data from database, fetch those that match "query"
                     source: function(query, process) {
						  $.ajax({url: 'remote_source.php?q='+encodeURIComponent(query)})
						  .done(function(result_items){
							process(result_items);
						  });
						}
                     */
                }
            )

            //programmatically add/remove a tag
            var $tag_obj = $('#form-field-tags').data('tag');
            $tag_obj.add('Programmatically Added');

            var index = $tag_obj.inValues('some tag');
            $tag_obj.remove(index);
        } catch (e) {
            //display a textarea for old IE, because it doesn't support this plugin or another one I tried!
            tag_input.after('<textarea id="' + tag_input.attr('id') + '" name="' + tag_input.attr('name') + '" rows="3">' + tag_input.val() + '</textarea>').remove();
            //autosize($('#form-field-tags'));
        }


        /////////
        $('#modal-form input[type=file]').ace_file_input({
            style: 'well',
            btn_choose: 'Drop files here or click to choose',
            btn_change: null,
            no_icon: 'ace-icon fa fa-cloud-upload',
            droppable: true,
            thumbnail: 'large'
        })

        //chosen plugin inside a modal will have a zero width because the select element is originally hidden
        //and its width cannot be determined.
        //so we set the width after modal is show
        $('#modal-form').on('shown.bs.modal', function () {
            if (!ace.vars['touch']) {
                $(this).find('.chosen-container').each(function () {
                    $(this).find('a:first-child').css('width', '210px');
                    $(this).find('.chosen-drop').css('width', '210px');
                    $(this).find('.chosen-search input').css('width', '200px');
                });
            }
        })
        /**
         //or you can activate the chosen plugin after modal is shown
         //this way select element becomes visible with dimensions and chosen works as expected
         $('#modal-form').on('shown', function () {
					$(this).find('.modal-chosen').chosen();
				})
         */


        $(document).one('ajaxloadstart.page', function (e) {
            autosize.destroy('textarea[class*=autosize]')

            $('.limiterBox,.autosizejs').remove();
            $('.daterangepicker.dropdown-menu,.colorpicker.dropdown-menu,.bootstrap-datetimepicker-widget.dropdown-menu').remove();
        });

    });
</script>

<%--<script>
    var request;
    function sendInfo() {
        var username = document.registerForm.username.value;

        var url = "/checkUsername?username=" + username;

        if (window.XMLHttpRequest) {
            request = new XMLHttpRequest();
        } else if (window.ActiveXObject) {
            request = new ActiveXObject("Microsoft.XMLHTTP");
        }

        try {
            request.onreadystatechange = getInfo;
            request.open("POST", url, true);
            request.send();
        } catch (e) {
            alert("Unable to connect to server");
        }
    }

    function getInfo() {
        if (request.readyState == 4) {
            var val = request.responseText;
            document.getElementById('check').innerHTML = "Username tồn tại";
        }
    }

</script>--%>

<script>

    $('document').ready(function () {
        // check username exist in database
        $("#username").blur(function () {
            var username = $('#username').val();

            $.ajax({
                type: 'POST',
                url: 'checkUsername',
                data: {
                    'username': username,
                },
                success: function (response) {
                    if (response == 'exist') {
                        $('#usernameEr').html("Username đã tồn tại");
                    } else {
                        $('#usernameEr').html("");
                    }
                    if (username == '') {
                        $('#usernameEr').html("không được bỏ trống");
                    }
                }
            })
        });


        $('#name').blur(function () {
            if ($('#name').val() == '') {
                $('#nameEr').html("không được bỏ trống");
            } else {
                $('#nameEr').html("");
            }
        });
        $('#password').blur(function () {

            if ($('#password').val() == '') {
                $('#passwordEr').html("không được bỏ trống");
            } else {
                $('#passwordEr').html("");
            }
        });
        $('#repass').blur(function () {

            if ($('#repass').val() == '') {
                $('#repassEr').html("không được bỏ trống");
            } else {
                $('#repassEr').html("");
            }
        });

        $('#phone').blur(function () {
            if ($('#phone').val() == '') {
                $('#phoneEr').html("không được bỏ trống");
            } else {
                $('#phoneEr').html("");
            }
        });

        $("#email").blur(function () {
            var email = $('#email').val();

            $.ajax({
                type: 'POST',
                url: 'checkEmail',
                data: {
                    'email': email,
                },
                success: function (response) {
                    if (response == 'exist') {
                        $('#emailEr').html("Email đã tồn tại");
                    } else {
                        $('#emailEr').html("");
                    }
                    if (email == '') {
                        $('#emailEr').html("không được bỏ trống");
                    }
                }
            })
        });


    });

</script>
</body>
</html>
