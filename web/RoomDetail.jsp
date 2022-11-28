<%-- 
    Document   : RoomDetail
    Created on : Nov 24, 2022, 9:09:53 AM
    Author     : ndatw
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />

    <!--link boodstrap-->
    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css"
      rel="stylesheet"
    />
    <link
      rel="stylesheet"
      href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"
    />
    
    <link rel="stylesheet" href="assets/css/main_2.css" />
    <link rel="stylesheet" hre="assets/css/responsive-style.css" />
    <title>Hotel</title>
  </head>
  <body data-bs-spy="scroll" data-bs-target=".navbar" data-bs-offset="100">
    <!-- 1.header-section Begin -->
    <header class="header-section">
      <div class="top-nav">
        <div class="container">
          <div class="row">
            <div class="col-lg-6">
              <ul class="tn-left">
                <li>
                  <i class="fa fa-phone"></i>
                  (+84) 345678910
                </li>
                <li>
                  <i class="fa fa-envelope"></i>
                  Bookinghotel.com.vn
                </li>
              </ul>
            </div>
            <div class="col-lg-6">
              <div class="tn-right">
                <div class="top-social">
                  <a href="#"><i class="fa fa-facebook-f"></i></a>
                  <a href="#"><i class="fa fa-twitter"></i></a>
                  <a href="#"><i class="fa fa-tripadvisor"></i></a>
                  <a href="#"><i class="fa fa-instagram"></i></a>
                </div>
                <a href="#" class="bk-btn">Booking Now</a>
                <div class="language-option">
                  <img src="assets/img/flag.png" alt="" />
                  <span>VN <i class="fa fa-angle-down"></i></span>
                  <div class="flag-dropdown">
                    <ul>
                      <li><a href="#">VN</a></li>
                      <li><a href="#">EN</a></li>
                    </ul>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
      <div class="menu-item">
        <div class="container">
          <div class="row">
            <div class="col-lg-2">
              <div class="logo">
                <a class="navbar-brand" href="#">
                  <img
                    src="assets/img/logo.png"
                    width="50%"
                    height="10%"
                    class="img-thumbnail"
                    alt="logo"
                  />
                </a>
              </div>
            </div>
            <div class="col-lg-10">
              <div class="nav-menu">
                <nav class="mainmenu">
                  <ul>
                    <li class="active"><a href="#">Home</a></li>
                    <li><a href="room.html">Rooms</a></li>
                    <li><a href="about.html">About Us</a></li>
                    <li>
                      <a href="#">Pages</a>
                      <ul class="dropdown">
                        <li><a href="#">Room Details</a></li>
                        <li><a href="#">Blog Details</a></li>
                        <li><a href="#">Family Room</a></li>
                        <li><a href="#">Premium Room</a></li>
                      </ul>
                    </li>
                    <li><a href="blog.html">News</a></li>
                    <li><a href="contact.html">Contact</a></li>
                  </ul>
                </nav>
                <div class="nav-right search-switch">
                  <i class="fa fa-search"></i>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </header>
    <!-- 1.header-section End -->

    <!-- 2.Detail Section Begin -->
    <div class="containerDetailRoom">
      <div class="NameTypeRoom"><h2>${type}</h2></div>
      <div class="RoomPicContainer">
        <img src="${img}" alt="" class="RoomPic" />
        <img src="${img}" alt="" class="RoomPic" />
        <img src="${img}" alt="" class="RoomPic" />
        <img src="${img}" alt="" class="RoomPic" />
      </div>
      <div class="roomService"><h3>Service</h3></div>
      <div class="RoomInfoDetailContainer">
        
        <table>
          <tr>
            <th>Amenities</th>
            <td>Parking Free</td>
            <td>Airport pick-up service</td>
            <td>Wi-Fi in public areas</td>
            <td>Luggage storage</td>
            <td>24-hour front desk</td>
          </tr>
          <tr>
            <th>Transportation</th>
            <td>Airport pick-up service</td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
          </tr>
          <tr>
            <th>Front Desk</th>
            <td>Luggage storage</td>
            <td>24-hour front desk</td>
            <td></td>
            <td></td>
            <td></td>
          </tr>
          <tr>
            <th>Public Area</th>
            <td>Wi-Fi in public areas Free</td>
            <td>Elevator</td>
            <td>Non-smoking in all rooms</td>
            <td></td>
            <td></td>
          </tr>
          
          <tr class="DescriptionContent">
            <th>More Decription</th>
            <td colspan="5" rowspan="2">
              1.9 km from Asia Park Danang, Hoang Phuong Hotel is set in Da Nang
              and features air-conditioned rooms. The property is around 2.5 km
              from Cham Museum and 3.2 km from Love Lock Bridge Da Nang. Private
              parking can be arranged at an extra charge. The rooms in the hotel
              are equipped with a kettle. Every room has a flat-screen TV, and
              some rooms come with a balcony. When guests need guidance on where
              to visit, the reception will be happy to provide advice. Indochina
              Riverside Mall is 3.6 km from Hoang Phuong Hotel Da Nang. The
              nearest airport is Da Nang International Airport, 1 km from the
              property.
            </td>
          </tr>
        </table>
      </div>
      <div class="occupancy"><h4>occupancy: ${occ}</h4></div>
      <div class="floorNo"><h4>Floor : ${floor}</h4></div>
      <div class="price"><h4>Price: ${price} $</h4></div>
      <div class="CommentContainer">
        <form class="formComment" action="">
          <p><label for="w3review">Comment:</label></p>
          <textarea id="w3review" name="w3review" rows="4" cols="90"></textarea>
          <br />
          <input type="submit" value="Submit" />
        </form>

      </div>
      <div class="showComment"></div>
    </div>
    <!-- 2.Detail Section End -->

    <!-- 3.Footer Section Begin -->
    <footer class="footer-section">
      <div class="container">
        <div class="footer-text">
          <div class="row">
            <div class="col-lg-4">
              <div class="ft-about">
                <div class="logo">
                  <a href="#">
                    <img src="" alt="" />
                  </a>
                </div>
                <p>
                  We inspire and reach millions of travelers<br />
                  across 10 local websites
                </p>
                <div class="fa-social">
                  <a href="#"><i class="fa fa-facebook"></i></a>
                  <a href="#"><i class="fa fa-twitter"></i></a>
                  <a href="#"><i class="fa fa-tripadvisor"></i></a>
                  <a href="#"><i class="fa fa-instagram"></i></a>
                  <a href="#"><i class="fa fa-youtube-play"></i></a>
                </div>
              </div>
            </div>
            <div class="col-lg-3 offset-lg-1">
              <div class="ft-contact">
                <h6>Contact Us</h6>
                <ul>
                  <li>(+84) 345678910</li>
                  <li>Bookinghotel.com.vn</li>
                  <li>54 Thanh Thai,Khue Trung,Cam Le, Da Nang, Viet Nam</li>
                </ul>
              </div>
            </div>
            <div class="col-lg-3 offset-lg-1">
              <div class="ft-newslatter">
                <h6>New latest</h6>
                <p>Get the latest updates and offers.</p>
                <form action="#" class="fn-form">
                  <input type="text" placeholder="Email" />
                  <button type="submit"><i class="fa fa-send"></i></button>
                </form>
              </div>
            </div>
          </div>
        </div>
      </div>
    </footer>
    <!-- 3.Footer Section End -->

    <script src="js/main.js"></script>

    <script
      src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
      integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
      crossorigin="anonymous"
    ></script>
  </body>
</html>

