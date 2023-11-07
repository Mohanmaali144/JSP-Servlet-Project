<%-- 
    Document   : Home
    Created on : 28-Oct-2023, 11:53:13 pm
    Author     : Mohan_Maali
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import = "java.sql.ResultSet"%>

<% 
                   ResultSet rs = (ResultSet)session.getAttribute("rs");
                  
                   if(rs!=null){
%>
<html>
    <head>
        <link rel="stylesheet" href="font-awesome/css/font-awesome.css">
        <link rel="stylesheet" href="css/style.css">


    </head>

    <body>


        <jsp:include page="Navvar.jsp" />

        <!--end header-->
        <section class="home" id="home">
            <div class="slide-container active">
                <div class="slide">
                    <div class="content">
                        <span> Spoort Shoes</span>
                        <h3>Nike Metcon Shoes</h3>
                        <p>
                            Nike sports shoes best qulity long lastic sole made by nike by tested and petend farmula
                        </p>
                        <div class="price"><Span>11000/-</Span>order now! </div>
                        <a href="#" class="btn">add to card</a>
                        <a href="#" class="btn">Buy</a>
                    </div>
                    <div class="image">
                        <img src=".\img\slide\1.png" class="shoe">

                    </div>
                </div>
            </div>
            <div class="slide-container">
                <div class="slide">
                    <div class="content">
                        <span>Nike Sport Shoes</span>
                        <h3>Nike Metcon Shoes</h3>
                        <p>
                            nike new sport shoe Nike meetcon shoes
                        </p>
                        <a href="#" class="btn">add to card</a>

                    </div>
                    <div class="image">
                        <img src="./img/slide/2.png" class="shoe">
                    </div>
                </div>
            </div>
            <div class="slide-container">
                <div class="slide">
                    <div class="content">
                        <div class="price">INR 15999/- <span>INR 17000</span></div>
                        <span>Nike Sport Shoes</span>
                        <h3>Nike Metcon Shoes</h3>
                        <a href="#" class="btn">add to card</a>
                        <p>
                            Lorem ipsum, dolor sit amet consectetur adipisicing elit
                            Sunt nam adipisci ipsa officiis Amet pariatur eaque soluta
                            sit iure neque voluptate.
                        </p>
                        <a href="#" class="btn">add to card</a>
                    </div>
                    <div class="image">
                        <img src="img/slide/3.png" class="shoe">
                    </div>
                </div>
            </div>
            <div class="slide-container">
                <div class="slide">
                    <div class="content">
                        <span>Nike Sport Shoes</span>
                        <h3>Nike Metcon Shoes</h3>
                        <p>
                            Lorem ipsum, dolor sit amet consectetur adipisicing elit
                            Sunt nam adipisci ipsa officiis Amet pariatur eaque soluta
                            sit iure neque voluptate.
                        </p>
                        <a href="#" class="btn">add to card</a>
                        <a href="#" class="btn" id="Buy">Buy</a>
                        <link rel="Buysheet" href="Buy.html">
                    </div>
                    <div class="image">
                        <img src="img/slide/4.png" class="shoe">
                    </div>
                </div>
            </div>

            <div id="prev" class="fa fa-angle-left" onclick="prev();"></div>
            <div id="next" class="fa fa-angle-right" onclick="next();"></div>
        </section>
        <!--end home-->
        <section class="product" id="product">
            <h1 class="heading">latest <span>Products</span></h1>
            <div class="box-container">
                <div class="box">
                    <div class="icons">
                        <a href="#" class="fa fa-heart"></a>
                        <a href="#" class="fa fa-share"></a>
                        <a href="#" class="fa fa-eye"></a>
                    </div>
                    <div class="content">
                        <img src="img/product4/1.jpg" alt="">
                        <h3>Nike Shoes</h3>
                        <div class="price">INR 15999/- <span>INR 17000</span></div>
                        <a href="#" class="btn">Buy</a>
                        <div class="stars">
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                        </div>
                    </div>
                </div>
                <div class="box">
                    <div class="icons">
                        <a href="#" class="fa fa-heart"></a>
                        <a href="#" class="fa fa-share"></a>
                        <a href="#" class="fa fa-eye"></a>
                    </div>
                    <div class="content">
                        <img src="img/product4/2.jpg" alt="">
                        <h3>Nike Shoes</h3>
                        <div class="price">INR 15999/- <span>INR 17000</span></div>
                        <a href="#" class="btn">Buy</a>
                        <div class="stars">
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                        </div>
                    </div>
                </div>
                <div class="box">
                    <div class="icons">
                        <a href="#" class="fa fa-heart"></a>
                        <a href="#" class="fa fa-share"></a>
                        <a href="#" class="fa fa-eye"></a>
                    </div>
                    <div class="content">
                        <img src="img/product4/3.jpg" alt="">
                        <h3>Nike Shoes</h3>
                        <div class="price">INR 15999/- <span>INR 17000</span></div>
                        <a href="#" class="btn">Buy</a>
                        <div class="stars">
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                        </div>
                    </div>
                </div>
                <div class="box">
                    <div class="icons">
                        <a href="#" class="fa fa-heart"></a>
                        <a href="#" class="fa fa-share"></a>
                        <a href="#" class="fa fa-eye"></a>
                    </div>
                    <div class="content">
                        <img src="img/product4/5.jpg" alt="">
                        <h3>Nike Shoes</h3>
                        <div class="price">INR 15999/- <span>INR 17000</span></div>
                        <a href="#" class="btn">Buy</a>
                        <div class="stars">
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                        </div>
                    </div>
                </div>
                <div class="box">
                    <div class="icons">
                        <a href="#" class="fa fa-heart"></a>
                        <a href="#" class="fa fa-share"></a>
                        <a href="#" class="fa fa-eye"></a>
                    </div>
                    <div class="content">
                        <img src="img/product4/7.png" alt="">
                        <h3>Nike Shoes</h3>
                        <div class="price">INR 15999/- <span>INR 17000</span></div>
                        <a href="#" class="btn">Buy</a>
                        <div class="stars">
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                        </div>
                    </div>
                </div>
                <div class="box">
                    <div class="icons">
                        <a href="#" class="fa fa-heart"></a>
                        <a href="#" class="fa fa-share"></a>
                        <a href="#" class="fa fa-eye"></a>
                    </div>
                    <div class="content">
                        <img src="img/product4/8.png" alt="">
                        <h3>Nike Shoes</h3>
                        <div class="price">INR 15999/- <span>INR 17000</span></div>
                        <a href="#" class="btn">Buy</a>

                        <div class="stars">
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!--end product-->
        <section class="featured" id="fearured">
            <h1 class="heading">New <span>Product</span></h1>
            <div class="row">
                <div class="image-container">
                    <div class="small-image">
                        <img src="img/product1/1.jpg" alt="" class="featured-image-1">
                        <img src="img/product1/2.jpg" alt="" class="featured-image-1">
                        <img src="img/product1/3.jpg" alt="" class="featured-image-1">
                        <img src="img/product1/4.jpg" alt="" class="featured-image-1">
                    </div>
                    <div class="big-image">
                        <img src="img/product1/1.jpg" alt="" class="big-image-1">
                    </div>
                </div>
                <div class="content">
                    <h3>new nike airmac shoes</h3>
                    <div class="stars">
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                    </div>
                    <p>
                        Lorem ipsum dolor sit amet consectetur adipisicing elit.
                        Fugit officiis omnis quo laboriosam velit culpa ex illo, error enim nostrum?
                    </p>
                    <div class="price">INR 9999/- <span>INR 11000/-</span></div>
                    <a href="#" class="btn">add to cart</a>
                    <a href="#" class="btn">Buy</a>
                </div>
            </div>
            <div class="row">
                <div class="image-container">
                    <div class="small-image">
                        <img src="img/product2/1.jpg" alt="" class="featured-image-2">
                        <img src="img/product2/2.jpg" alt="" class="featured-image-2">
                        <img src="img/product2/3.jpg" alt="" class="featured-image-2">
                        <img src="img/product2/4.jpg" alt="" class="featured-image-2">
                    </div>
                    <div class="big-image">
                        <img src="img/product2/1.jpg" alt="" class="big-image-2">
                    </div>
                </div>
                <div class="content">
                    <h3>new nike airmac shoes</h3>
                    <div class="stars">
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                    </div>
                    <p>
                        Lorem ipsum dolor sit amet consectetur adipisicing elit.
                        Fugit officiis omnis quo laboriosam velit culpa ex illo, error enim nostrum?
                    </p>
                    <div class="price">INR 9999/- <span>INR 11000/-</span></div>
                    <a href="#" class="btn">add to cart</a>
                    <a href="#" class="btn">Buy</a>
                </div>
            </div>
            <div class="row">
                <div class="image-container">
                    <div class="small-image">
                        <img src="img/product3/1.jpg" alt="" class="featured-image-3">
                        <img src="img/product3/2.jpg" alt="" class="featured-image-3">
                        <img src="img/product3/3.jpg" alt="" class="featured-image-3">
                        <img src="img/product3/4.jpg" alt="" class="featured-image-3">
                    </div>
                    <div class="big-image">
                        <img src="img/product3/1.jpg" alt="" class="big-image-3">
                    </div>
                </div>
                <div class="content">
                    <h3>new nike airmac shoes</h3>
                    <div class="stars">
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                    </div>
                    <p>
                        Lorem ipsum dolor sit amet consectetur adipisicing elit.
                        Fugit officiis omnis quo laboriosam velit culpa ex illo, error enim nostrum?
                    </p>
                    <div class="price">INR 9999/- <span>INR 11000/-</span></div>
                    <a href="#" class="btn">add to cart</a>
                    <a href="#" class="btn">Buy</a>
                </div>
            </div>
        </section>
        <!--end featured-->
        <section class="blog" id="blog">
            <h1 class="heading">Team <span>Weblog</span></h1>
            <div class="box-container">
                <div class="box">
                    <img src="./img/team/mohan.jpg" alt="">
                    <h3></h3>
                    <p>

                    </p>
                    <div class="stars">
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa fa-star"></i>
                    </div>
                </div>
                <div class="box">
                    <img src="./img/team/mohan.jpg" alt="">
                    <h3></h3>
                    <p>

                    </p>
                    <div class="stars">
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa fa-star-half-o"></i>
                    </div>
                </div>

            </div>
        </section>
        <!--end blog-->
        <section class="news" id="news">
            <div class="content">
                <h3>monthly news letter</h3>
                <p>
                    Lorem ipsum dolor sit amet consectetur adipisicing elit.
                    Fuga sed itaque ducimus maxime facere nihil expedita non sunt? Nostrum, voluptatem?
                </p>
                <form action="">
                    <input type="email" placeholder="please enter your email" class="email">
                    <input type="submit" value="save" class="btn">
                </form>
            </div>
        </section>
        <!--end news-->
        <section class="cridet" id="cridet">
            <div class="box">
                <h3>all reserved by Mohan Maali</h3>
            </div>
        </section>
    </body>
    <footer>
        <jsp:include page="Footer.jsp"/>

    </footer>

</html>
<% } 
else{

    response.sendRedirect("LoginUser.jsp");
}
%>
