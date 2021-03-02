<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="fmt" %>
<header class="header_area">

    <div class="main_menu">
        <div class="container">
            <nav class="navbar navbar-expand-lg navbar-light w-100">
                <!-- Brand and toggle get grouped for better mobile display -->
                <a class="navbar-brand logo_h" href="<c:url value="/client"/>"> <img src="<c:url value="/resources/theme1/assets_client/img/logo.png"/>" alt="" />
                </a>
                <button class="navbar-toggler"
                        type="button"
                        data-toggle="collapse"
                        data-target="#navbarSupportedContent"
                        aria-controls="navbarSupportedContent"
                        aria-expanded="false"
                        aria-label="Toggle navigation">
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <!-- Collect the nav links, forms, and other content for toggling -->
                <div class="collapse navbar-collapse offset w-100"
                     id="navbarSupportedContent">
                    <div class="row w-100 mr-0">
                        <div class="col-lg-5 pr-0" style="flex: 0 0 50.666667%; max-width: 45.666667%;">
                            <ul class="nav navbar-nav center_nav pull-right" >
                                <li class="nav-item active">
                                    <a class="nav-link" href="<c:url value="/client"/>">Trang chủ</a>
                                </li>

                                <!--========= Đổ danh sách thể loại ( category) vào header ===========-->
                                <c:forEach var="category" items="${listCategory}">
                                <li class="nav-item  submenu dropdown">
                                    <a
                                            href=""
                                            class="nav-link dropdown-toggle"
                                            data-toggle="dropdown"
                                            role="button"
                                            aria-haspopup="true"
                                            aria-expanded="false">${category.name}</a>
                                    <ul class="dropdown-menu">
                                        <li class="nav-item">

                                            <!--======  Id  của Category  =========-->
                                            <a class="nav-link" href="<c:url value="/client/category/getListProductByIdCategory/${category.id}" />">Danh mục sản phẩm</a>
                                        </li>
                                    </ul>
                                </li>
                                </c:forEach>

                                <li class="nav-item" style="margin-right: 20px;">
                                    <a class="nav-link" href="<c:url value="/client"/>">Liên Hệ</a>
                                </li>
                            </ul>
                        </div>

                        <div class="col-lg-6 pr-0">
                            <ul class="nav navbar-nav navbar-right right_nav pull-right" style="float: none;">
                                <li class="nav-item">
                                    <nav class="navbar navbar-light bg-light" style="margin-top: 20px;">
                                        <form class="form-inline">
                                            <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
                                            <button class="btn btn-outline-success my-2 my-sm-0" type="button"><i class="fa fa-search" aria-hidden="true"></i></button>
                                        </form>
                                    </nav>
                                </li>
                                </li>
                                <%
                                    String username = (String) session.getAttribute("username");
                                %>
                                <c:choose>
                                    <c:when test="${username != null}">
                                        <div style="margin-left: 20px"></div>
                                        <li class="nav-item active submenu dropdown"><a href="#"
                                                                                        class="nav-link dropdown-toggle"
                                                                                        data-toggle="dropdown"
                                                                                        role="button"
                                                                                        aria-haspopup="true"
                                                                                        aria-expanded="false">   Chào, <%=username%>
                                        </a>
                                            <ul class="dropdown-menu">
                                                <li class="nav-item"><a class="nav-link" href="<c:url value="/client/logout"/>"/>Đăng xuất</a>
                                                </li>
                                            </ul>
                                        </li>

                                    </c:when>
                                    <c:otherwise>
                                        <li class="nav-item">
                                            <a class="icons" href="<c:url value="/client/login"/>" style="margin-top: 34px;" ><i class="fa fa-sign-in"></i></a>
                                        </li>
                                        <li class="nav-item">
                                            <a class="icons" href="<c:url value="/client/register"/>" style="margin-top: 34px;"><i class="fa fa-registered"></i></a>
                                        </li>
                                    </c:otherwise>
                                </c:choose>

                                <li class="nav-item">
                                    <a href="<c:url value="/client/cart/listCart"/>" class="icons" style="margin-top: 34px;line-height: 0px; ">
                                        <i class="ti-shopping-cart"></i>
                                        <span>${TotalQuantityCart}</span>
                                        <br/>
                                        <span style="line-height: 25px;"><fmt:formatNumber value="${TotalPriceCart}" type="currency"/></span>
                                    </a>
                                </li>


                            </ul>

                        </div>

                    </div>
                </div>
            </nav>
        </div>
    </div>
</header>
