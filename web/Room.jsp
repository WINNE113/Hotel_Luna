<%-- 
    Document   : Room
    Created on : Nov 4, 2022, 10:48:22 AM
    Author     : ASUS-PRO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Room</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="assets/css/main.css">
    <link rel="stylesheet" hre="assets/css/responsive-style.css">
    <link rel="stylesheet" href="./assets/css/room.css">

</head>

<body>
    <div id="container">
        <!-- header -->
        <jsp:include page="Header.jsp"></jsp:include>
        <!-- header -->
        <!-- home background -->
        <div id="home-background">
            <!-- home -->
            <div class="background">
                <!-- home background-->
            </div>
            <div class="title">
                <!-- home title-->
                <h1 style="color: #fff">Our Room</h1>
            </div>
        </div>

        <!-- search -->
        <div id="search_room">
            <div class="grid width">
                <!-- search place -->
                <div class="search_address grid width">
                    <div class="search_container">
                        <div class="hotel_place active">
                            <!-- style="filter: brightness(200%) grayscale(100%) -->
                            <img src="./assets/img/home/hotel.webp" alt="icon hotel">
                            <span style="margin-left:4px;">Hotels</span>
                        </div>
                        <div class="hotel_place place">
                            <img style="width:35px;" src="./assets/img/home/hotel_icon.png" alt="icon place hotel">
                            <span><a href="searchbyplace?hid=1">Da Nang</a></span>
                        </div>
                        <div class="hotel_place place">
                            <img style="width:35px;" src="./assets/img/home/hotel_icon.png" alt="icon place hotel">
                             <span><a href="searchbyplace?hid=2">Da Lat</a></span>
                        </div>
                        <div class="hotel_place place">
                            <img style="width:35px;" src="./assets/img/home/hotel_icon.png" alt="icon place hotel">
                             <span><a href="searchbyplace?hid=3">TP Ho Chi Minh</a></span>
                        </div>
                        <div class="hotel_place">
                            <img style="width:35px;" src="./assets/img/home/hotel_icon.png" alt="icon place hotel">
                            <span>Place</span>
                        </div>
                    </div>
                </div>

                <!-- search address -->
                <div class="search_container">
                    <div class="search_layout">
                        <div class="search_info">
                            <div class="block_search search_desc">
                                <span>Destination</span>
                                <div class="search_input">
                                    <input type="text" placeholder="Where are you going?">
                                </div>
                            </div>
                            <div class="block_search">
                                <span>Check In</span>
                                <div class="search_input">
                                    <input type="text" placeholder="DD-MM-YYYY">
                                </div>
                            </div>
                            <div class="block_search">
                                <span>Check Out</span>
                                <div class="search_input">
                                    <input type="text" placeholder="DD-MM-YYYY">
                                </div>
                            </div>
                            <div class="block_search search_adults">
                                <span>Adults</span>
                                <div class="search_input">
                                    <select name="" id="">
                                        <option value="">01</option>
                                        <option value="">02</option>
                                        <option value="">03</option>
                                    </select>
                                </div>
                            </div>
                            <div class="block_search search_children">
                                <span>Children</span>
                                <div class="search_input">
                                    <select name="" id="">
                                        <option value="">01</option>
                                        <option value="">02</option>
                                        <option value="">03</option>
                                    </select>
                                </div>
                            </div>
                        </div>
                        <div class="check_info">

                        </div>

                        <div class="booking">
                            <a href="#">Search</a>
                            <span></span>
                            <span></span>
                            <span></span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- content -->
        <div id="content">

            <div class="row">
                <!-- filter -->
                <div class="filter">
                    <div class="filter_layout">
                        <div class="sub_filter filter_by">
                            <div class="title_filter">
                                <span>Filter by</span>
                            </div>
                        </div>
                        <div class="sub_filter">
                            <div class="title_filter">
                                <span>Price</span>
                                <div>
                                    <input type="checkbox" name="price_1" id="price" value="">
                                    <label for="price_1"> 0$ - 50$</label>
                                </div>
                                <div>
                                    <input type="checkbox" name="price_2" id="price" value="">
                                    <label for="price_2"> 50$ - 100$</label>
                                </div>
                                <div>
                                    <input type="checkbox" name="price_3" id="price" value="">
                                    <label for="price_3"> 100$ - 200$</label>
                                </div>
                                <div>
                                    <input type="checkbox" name="price_4" id="price" value="">
                                    <label for="price_4"> 200$ +</label>
                                </div>

                            </div>
                        </div>
                        <div class="sub_filter">
                            <div class="title_filter">
                                <span>Room type</span>
                                <div>
                                    <input type="checkbox" name="type_room_1" id="price" value="">
                                    <label for="type_room_1">Super king</label>
                                </div>
                                <div>
                                    <input type="checkbox" name="type_room_2" id="price" value="">
                                    <label for="type_room_2">King</label>
                                </div>
                                <div>
                                    <input type="checkbox" name="type_room_3" id="price" value="">
                                    <label for="type_room_3">Common</label>
                                </div>
                            </div>
                        </div>
                        <div class="sub_filter">
                            <div class="title_filter">
                                <span>Bed type</span>
                                <div>
                                    <input type="checkbox" name="type_bed_1" id="price" value="">
                                    <label for="type_bed_1">Double</label>
                                </div>
                                <div>
                                    <input type="checkbox" name="type_bed_2" id="price" value="">
                                    <label for="type_bed_2">Queen</label>
                                </div>
                                <div>
                                    <input type="checkbox" name="type_bed_3" id="price" value="">
                                    <label for="type_bed_3">Single/twin</label>
                                </div>
                            </div>
                        </div>
                        <div class="sub_filter">
                            <div class="title_filter">
                                <span>Start rating</span>
                                <div>
                                    <input type="checkbox" name="start_rating_1" id="start_rating_1" value="">
                                    <label for="start_rating_1">5 sao</label>
                                </div>
                                <div>
                                    <input type="checkbox" name="start_rating_2" id="start_rating_2" value="">
                                    <label for="start_rating_2">4 sao</label>
                                </div>
                                <div>
                                    <input type="checkbox" name="start_rating_3" id="start_rating_3" value="">
                                    <label for="start_rating_3">3 sao</label>
                                </div>
                                <div>

                                    <input type="checkbox" name="start_rating_4" id="start_rating_4" value="">
                                    <label for="start_rating_4">2 sao</label>
                                </div>
                                <div>

                                    <input type="checkbox" name="start_rating_5" id="start_rating_5" value="">
                                    <label for="start_rating_5">1 sao</label>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- content -->
                <div class="content_layout">
                    <div class="result_number">
                        <span>Result: 3</span>
                    </div>
                    <div class="result_block">
                        <div class="image_hotel">
                            <img src="assets/img/home/349412410.jpg" alt="room hotel">
                        </div>
                        <div class="content_hotel">
                            <div class="main_content">
                                <div class="title_hotel">
                                    <span>Superior Double Room</span>
                                </div>
                                <div class="address_hotel">
                                    <span>DA NANG</span>
                                </div>
                                <div class="price_hotel">
                                    <span>From</span>
                                    <h5>VND 250.000</h5>
                                    <span>For Night</span>
                                </div>
                            </div>
                            <div class="btn_booking">
                                <a href="#">Booking</a>
                                <span></span>
                                <span></span>
                                <span></span>
                            </div>
                        </div>
                    </div>
                    <div class="result_block">
                        <div class="image_hotel">
                            <img src="assets/img/home/349412410.jpg" alt="room hotel">
                        </div>
                        <div class="content_hotel">
                            <div class="main_content">
                                <div class="title_hotel">
                                    <span>Superior Double Room</span>
                                </div>
                                <div class="address_hotel">
                                    <span>DA NANG</span>
                                </div>
                                <div class="price_hotel">
                                    <span>From</span>
                                    <h5>VND 250.000</h5>
                                    <span>For Night</span>
                                </div>
                            </div>
                            <div class="btn_booking">
                                <a href="#">Booking</a>
                                <span></span>
                                <span></span>
                                <span></span>
                            </div>
                        </div>
                    </div>
                    <div class="result_block">
                        <div class="image_hotel">
                            <img src="assets/img/home/349412410.jpg" alt="room hotel">
                        </div>
                        <div class="content_hotel">
                            <div class="main_content">
                                <div class="title_hotel">
                                    <span>Superior Double Room</span>
                                </div>
                                <div class="address_hotel">
                                    <span>DA NANG</span>
                                </div>
                                <div class="price_hotel">
                                    <span>From</span>
                                    <h5>VND 250.000</h5>
                                    <span>For Night</span>
                                </div>
                            </div>
                            <div class="btn_booking">
                                <a href="#">Booking</a>
                                <span></span>
                                <span></span>
                                <span></span>
                            </div>
                        </div>
                    </div>
                    <div class="result_block">
                        <div class="image_hotel">
                            <img src="assets/img/home/349412410.jpg" alt="room hotel">
                        </div>
                        <div class="content_hotel">
                            <div class="main_content">
                                <div class="title_hotel">
                                    <span>Superior Double Room</span>
                                </div>
                                <div class="address_hotel">
                                    <span>DA NANG</span>
                                </div>
                                <div class="price_hotel">
                                    <span>From</span>
                                    <h5>VND 250.000</h5>
                                    <span>For Night</span>
                                </div>
                            </div>
                            <div class="btn_booking">
                                <a href="#">Booking</a>
                                <span></span>
                                <span></span>
                                <span></span>
                            </div>
                        </div>
                    </div>
                    <div class="result_block">
                        <div class="image_hotel">
                            <img src="assets/img/home/349412410.jpg" alt="room hotel">
                        </div>
                        <div class="content_hotel">
                            <div class="main_content">
                                <div class="title_hotel">
                                    <span>Superior Double Room</span>
                                </div>
                                <div class="address_hotel">
                                    <span>DA NANG</span>
                                </div>
                                <div class="price_hotel">
                                    <span>From</span>
                                    <h5>VND 250.000</h5>
                                    <span>For Night</span>
                                </div>
                            </div>
                            <div class="btn_booking">
                                <a href="#">Booking</a>
                                <span></span>
                                <span></span>
                                <span></span>
                            </div>
                        </div>
                    </div>


                </div>
            </div>
        </div>
        <!-- Footer -->
        <jsp:include page="Footer.jsp"></jsp:include>
        <!-- Footer Section Begin -->
       
    </div>
</body>

</html>