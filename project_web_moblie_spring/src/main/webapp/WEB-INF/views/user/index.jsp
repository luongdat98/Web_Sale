<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="fmt" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<title>Trang chu</title>
<body>
<!--================Home Banner Area =================-->
<section class="home_banner_area mb-40">
    <div class="banner_inner d-flex align-items-center">
        <div class="container">
            <div class="banner_content row">
                <div class="col-lg-12">
                    <p class="sub text-uppercase">Điện thoại thông minh</p>
                    <h3><span>Mang</span> Điện Thoại <br/>Đến <span>Tầm Tay Bạn</span></h3>
                    <a class="main_btn mt-40" href="<c:url value="client" />">Xem Danh sách điện thoại</a>
                </div>
            </div>
        </div>
    </div>
</section>
<!--================End Home Banner Area =================-->

<!-- Start feature Area -->
<section class="feature-area section_gap_bottom_custom">
    <div class="container">
        <div class="row">
            <div class="col-lg-3 col-md-6">
                <div class="single-feature">
                    <a href="#" class="title">
                        <i class="flaticon-money"></i>
                        <h3>Money back gurantee</h3>
                    </a>
                    <p>Shall open divide a one</p>
                </div>
            </div>

            <div class="col-lg-3 col-md-6">
                <div class="single-feature">
                    <a href="#" class="title">
                        <i class="flaticon-truck"></i>
                        <h3>Free Delivery</h3>
                    </a>
                    <p>Shall open divide a one</p>
                </div>
            </div>

            <div class="col-lg-3 col-md-6">
                <div class="single-feature">
                    <a href="#" class="title">
                        <i class="flaticon-support"></i>
                        <h3>Alway support</h3>
                    </a>
                    <p>Shall open divide a one</p>
                </div>
            </div>

            <div class="col-lg-3 col-md-6">
                <div class="single-feature">
                    <a href="#" class="title">
                        <i class="flaticon-blockchain"></i>
                        <h3>Secure payment</h3>
                    </a>
                    <p>Shall open divide a one</p>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- End feature Area -->

<!--================ Feature Product Area =================-->
<section class="feature_product_area section_gap_bottom_custom">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-lg-12">
                <div class="main_title">
                    <h2><span>Danh sách sản phẩm</span></h2>
                </div>
            </div>
        </div>
        <div class="row">
            <c:forEach var="productIndex" items="${listProductIndex}">
                    <div class="col-lg-4 col-md-6">
                        <div class="single-product">
                            <div class="product-img">
                                <a href="<c:url value="/client/category/getProductDetail/${productIndex.id}"/> ">
                                 <img src="<c:url value="/resources/image/product/pro${productIndex.id}.jpg"/>" height="266" width="266"/>
                                </a>
                                <div class="p_icon">
                                    <a href=" <c:url value="/client/category/getProductDetail/${productIndex.id}"/>" style="padding-top: 10px;">
                                        <i class="ti-eye"></i>
                                    </a>
                                    <a href="<c:url value="/client"/>" style="padding-top: 10px;">
                                        <i class="ti-heart"></i>
                                    </a>
                                    <a href="<c:url value="/client/cart/addCart/${productIndex.id}"/>" style="padding-top: 10px;">
                                        <i class="ti-shopping-cart"></i>
                                    </a>
                                </div>
                            </div>
                            <div class="product-btm">
                                <a href="#" class="d-block">
                                    <h4>${productIndex.name}</h4>
                                </a>
                                <div class="mt-3">
                                    <span class="mr-4"><fmt:formatNumber value="${productIndex.price-productIndex.discount}" type="currency"/></span>
                                    <del><fmt:formatNumber value="${productIndex.price}" type="currency"/></del>
                                </div>
                            </div>
                        </div>
                    </div>
            </c:forEach>
        </div>
    </div>
</section>
<!--================ End Feature Product Area =================-->
<!--================ Start Blog Area =================-->
<section class="blog-area section-gap">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-lg-12">
                <div class="main_title">
                    <h2><span>Blog mới nhất</span></h2>
                </div>
            </div>
        </div>

        <div class="row">
            <c:forEach var="productIndex" items="${listProductIndex}">
            <div class="col-lg-4 col-md-6">
                <div class="single-blog">
                    <div class="thumb">
                        <img class="img-fluid" src="<c:url value="/resources/image/product/pro${productIndex.id}.jpg"/>" alt="">
                    </div>
                    <div class="short_details">
                        <div class="meta-top d-flex">
                            <a href="#">Đăng bởi Admin</a>
                            <a href="#"><i class="ti-comments-smiley"></i>2 Bình luận</a>
                        </div>
                        <a class="d-block" href="single-blog.html">
                            <h4>Ford clever bed stops your sleeping
                                partner hogging the whole</h4>
                        </a>
                        <div class="text-wrap">
                            <p>
                                Let one fifth i bring fly to divided face for bearing the divide unto seed winged
                                divided light
                                Forth.
                            </p>
                        </div>
                        <a href="#" class="blog_btn">Learn More <span class="ml-2 ti-arrow-right"></span></a>
                    </div>
                </div>
            </div>
            </c:forEach>
        </div>

    </div>
</section>
</body>

