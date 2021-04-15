<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" 	rel="stylesheet">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="icon" href="../img/favicon-16x16.png" type="image/gif" sizes="16x16">
<link rel="stylesheet" href="../css/adminCss/style.css">

</head>
<body>
 <div class="containers">
        <div class="navigation">
            <ul>
                <li>
                <a href="">
                    <span class="icn"><i class="fa fa-rocket" aria-hidden="true"></i>
                    </span>
                    <span class="title mt-2"> <img alt="logo" src="../img/logo2.png"> </span>
                 </a>
                </li>
                <li><a href="">
                    <span class="icn"><i class="fa fa-home" aria-hidden="true"></i>
                    </span>
                    <span class="title">Dashboard</span></a>
                </li>
                <li><a href="">
                    <span class="icn"><i class="fa fa-users" aria-hidden="true"></i>
                    </span>
                    <span class="title">Customers</span></a>
                </li>
                <li><a href="">
                    <span class="icn"><i class="fa fa-comment" aria-hidden="true"></i>
                    </span>
                    <span class="title">Message</span></a>
                </li>
                <li><a href="">
                    <span class="icn"><i class="fa fa-question-circle" aria-hidden="true"></i>
                    </span>
                    <span class="title">Help</span></a>
                </li>
                <li><a href="">
                    <span class="icn"><i class="fa fa-cog" aria-hidden="true"></i>
                    </span>
                    <span class="title">Settings</span></a>
                </li>
                <li><a href="">
                    <span class="icn"><i class="fa fa-lock" aria-hidden="true"></i>
                    </i>
                    </span>
                    <span class="title">Password</span></a>
                </li>
                <li><a href="">
                    <span class="icn"><i class="fa fa-sign-out" aria-hidden="true"></i>

                    </span>
                    <span class="title">Sign Out    </span></a>
                </li>
            </ul>
        </div>

        <div class="main">
            <div class="topbar">
                <div class="toggle" onclick="toggleMenu()"></div>
                <div class="search">
                    <label for="">
                        <input type="text" placeholder="Search Here">
                        <i class="fa fa-search" aria-hidden="true"></i>
                    </label></div>
                    <div class="user">
                      <img src="user.jpeg" alt="">
                    </div>
            </div>
                <div class="cardBox">
                    <div class="card">
                        <div>
                            <div class="number">1,042</div>
                            <div class="cardNumber">Daily Views</div>
                        </div>
                        <div class="iconBox">
                            <i class="fa fa-eye" aria-hidden="true"></i>
                        </div>
                    </div>
                    <div class="card">
                        <div>
                            <div class="number">42</div>
                            <div class="cardNumber">Sales</div>
                        </div>
                        <div class="iconBox">
                            <i class="fa fa-shopping-cart" aria-hidden="true"></i>
                        </div>
                    </div>
                    <div class="card">
                        <div>
                            <div class="number">142</div>
                            <div class="cardNumber">Comments</div>
                        </div>
                        <div class="iconBox">
                            <i class="fa fa-comment" aria-hidden="true"></i>
                        </div>
                    </div>
                    <div class="card">
                        <div>
                            <div class="number">$1,042</div>
                            <div class="cardNumber">Earning</div>
                        </div>
                        <div class="iconBox">
                            <i class="fa fa-usd" aria-hidden="true"></i>
                        </div>
                    </div>
                </div>
            <div class="details">
                <div class="recentOrders">
                    <div class="cardHeader"><h2>Recent Orders</h2><a href="" class="btn">view All</a></div>
                
                <table>
                    <thead>
                        <tr>
                            <td>Name</td>
                            <td>Price</td>
                            <td>Payment</td>
                            <td>Status</td>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>Star Refrigenator</td>
                            <td>$123</td>
                            <td>Paid</td>
                            <td><span class="status deleiver"> Deliver</span></td>
                        </tr>
                        <tr>
                            <td>Star Refrigenator</td>
                            <td>$123</td>
                            <td>Paid</td>
                            <td><span class="status return"> return</span></td>
                        </tr>
                        <tr>
                            <td>Star Refrigenator</td>
                            <td>$123</td>
                            <td>Paid</td>
                            <td><span class="status deleiver"> Deliver</span></td>
                        </tr>
                        <tr>
                            <td>Star Refrigenator</td>
                            <td>$123</td>
                            <td>Paid</td>
                            <td><span class="status inprogress"> inprogress</span></td>
                        </tr>
                        <tr>
                            <td>Star Refrigenator</td>
                            <td>$123</td>
                            <td>Paid</td>
                            <td><span class="status pending"> pending</span></td>
                        </tr>
                        <tr>
                            <td>Star Refrigenator</td>
                            <td>$123</td>
                            <td>Paid</td>
                            <td><span class="status return"> return</span></td>
                        </tr>
                        <tr>
                            <td>Star Refrigenator</td>
                            <td>$123</td>
                            <td>Paid</td>
                            <td><span class="status pending"> pending</span></td>
                        </tr>
                        <tr>
                            <td>Star Refrigenator</td>
                            <td>$123</td>
                            <td>Paid</td>
                            <td><span class="status deleiver"> Deliver</span></td>
                        </tr><tr>
                            <td>Star Refrigenator</td>
                            <td>$123</td>
                            <td>Paid</td>
                            <td><span class="status inprogress">inprogress</span></td>
                        </tr>
                    </tbody>
                </table>
                </div>
                <div class="recentCustomers">
                    <div class="cardHeader">
                        <h2>Recent Customers</h2>
                    </div>
                   <table>
                       <tbody>
                           <tr>
                               <td width="60px">
                                  <div class="imgBox"><img src="img1.png" alt="as"></div>
                              </td>
                              <td><h4>David <br><span> Italy</span></h4></td>
                        </tr>
                        <tr>
                            <td width="60px">
                                <div class="imgBox"><img src="img1.png" alt="as"></div>
                            </td>
                            <td>
                                <h4>David <br><span> Italy</span></h4>
                            </td>
                        </tr>
                        <tr>
                            <td width="60px">
                                <div class="imgBox"><img src="img1.png" alt="as"></div>
                            </td>
                            <td>
                                <h4>David <br><span> Italy</span></h4>
                            </td>
                        </tr>
                        <tr>
                            <td width="60px">
                                <div class="imgBox"><img src="img1.png" alt="as"></div>
                            </td>
                            <td>
                                <h4>David <br><span> Italy</span></h4>
                            </td>
                        </tr>
                        <tr>
                            <td width="60px">
                                <div class="imgBox"><img src="img1.png" alt="as"></div>
                            </td>
                            <td>
                                <h4>David <br><span> Italy</span></h4>
                            </td>
                        </tr>
                        <tr>
                            <td width="60px">
                                <div class="imgBox"><img src="img1.png" alt="as"></div>
                            </td>
                            <td>
                                <h4>David <br><span> Italy</span></h4>
                            </td>
                        </tr>
                        <tr>
                            <td width="60px">
                                <div class="imgBox"><img src="img1.png" alt="as"></div>
                            </td>
                            <td>
                                <h4>David <br><span> Italy</span></h4>
                            </td>
                        </tr>
                        <tr>
                            <td width="60px">
                                <div class="imgBox"><img src="img1.png" alt="as"></div>
                            </td>
                            <td>
                                <h4>David <br><span> Italy</span></h4>
                            </td>
                        </tr>
                       </tbody>
                   </table>
                </div>
            </div>
        </div>
    </div>
    <script>
        function toggleMenu(){
            let toggle = document.querySelector('.toggle');
            let navigation = document.querySelector('.navigation');
             let main = document.querySelector('.main');
            toggle.classList.toggle('active');
            navigation.classList.toggle('active');
            main.classList.toggle('active');
        }
    </script>
</body>
</html>