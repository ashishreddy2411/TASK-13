
<%@page import="java.util.ArrayList"%>
<%@ page import="model.Item" %>
<html>
    <head>
        <%
            String user = (String) session.getAttribute("user");
            if (user == null) {
                response.sendRedirect("index.jsp");
            }
        %>
        <title>Shopping Cart - Shop</title>
		<link rel="stylesheet" type="text/css" href="css/shop_style.css"/>
    </head>
    <body style="margin:0; padding:0">


        <div class="container">
            <form action="requesthandler" method="post"> 
            <div class="headbanner">
                <h1 style="display:inline">
                        <img src="img/shopping.png" /> HCL Tech Arena<br/>
                </h1>
                 <h2 style="display:inline">
 						Best Shopping Application
	             </h2>
            </div>  
                <div class="mycontent">
                    <div class="cartof">
                        <center><a style="color: #CC3300;">Cart Of &nbsp;<% out.print(session.getAttribute("user"));%>&nbsp;&nbsp;<input name="logout" type="submit" value="Logout"></input></a></center>
                    </div>
                    <div class="cartcontent">
                        <div class="myitems">
                            <table width="600px" cellpadding="0" cellspacing="0">
                                <tr>
                                    <th>#id</th> 
                                    <th>Item</th>
                                    <th>Price</th>
                                    <th>Action</th>
                                </tr>
                                <%if (session.getAttribute("itemlist") != null) {
                                        ArrayList<Item> mycart = (ArrayList) session.getAttribute("itemlist");
                                        for (int i = 0; i < mycart.size(); i++) {
                                            Item it = (Item) mycart.get(i);
                                %>
                                <tr>
                                    <td align="center"><%out.print(i+1);%></td>
                                    <td align="center"><% out.print(it.name);%></td> 
                                    <td align="center"><% out.print(it.price);%></td>
                                    <td align="center"><input name="del" type="submit" value="Delete" onclick="this.value=<%out.print(i);%>"></input></td>
                                </tr>
                                <%}
                                    }
                                %>    
                            </table>
                        </div>
                        <div class="total">
                            <a>My Total : Rs.<% out.print(session.getAttribute("total"));%></a><br />
                            <a style="font-size:14px">Total Qty:-<% ArrayList<Item> il = (ArrayList) session.getAttribute("itemlist");
                    	   out.print(il.size());%></a><br />
                            <input name="chkout" type="submit" value="Checkout" />
                        </div>
                    </div>
                    <div class="items">
                        <table width="900px">
                            <tr class="border_bottom">
                                <td>#1</td>
                                <td>Sunglass</td>
                                <td>Ray-Ban, Dark Purple Sunglass with the Casing</td>
                                <td>Rs.2500</td>
                                <td><img src="img/sunglass.jpg" width="90" height="90" /></td>
                                <td><input name="addtocart1" type="submit" value="Add to Cart" /></td>
                            </tr>
                            <tr class="border_bottom">
                                <td>#2</td>
                                <td>Wrist Watch</td>
                                <td>Quartz, Men's wrist watch, Black</td>
                                <td>Rs.5000</td>
                                <td><img src="img/watch.jpg" width="90" height="90" /></td>
                                <td><input name="addtocart2" type="submit" value="Add to Cart" /></td>
                            </tr>
                            <tr class="border_bottom">
                                <td>#3</td>
                                <td>Camera</td>
                                <td>Canon, 16x Digital SLR Camera with Dual Lens </td>
                                <td>Rs.15000</td>
                                <td><img src="img/camera.jpg" width="90" height="90" /></td>
                                <td><input name="addtocart3" type="submit" value="Add to Cart" /></td>
                            </tr>
                            <tr class="border_bottom">
                                <td>#4</td>
                                <td>Shoes</td>
                                <td>Bettans, 60 Leather Shoes, Brown</td>
                                <td>Rs.2000</td>
                                <td><img src="img/shoes.jpg" width="90" height="90" /></td>
                                <td><input name="addtocart4" type="submit" value="Add to Cart" /></td>
                            </tr>
                            <tr class="border_bottom">
                                <td>#5</td>
                                <td>Mobile</td>
                                <td>iPhone 12, 256Gb, Midnight Blue</td>
                                <td>Rs.75000</td>
                                <td><img src="img/iphone-12.jpeg" width="90" height="90" /></td>
                                <td><input name="addtocart5" type="submit" value="Add to Cart" /></td>
                            </tr>                            
                            <tr class="border_bottom">
                                <td>#6</td>
                                <td>Laptop</td>
                                <td>MacBook Pro, 16inch Retina Display,Touch Bar<br/>Space Grey Color,512Gb</td>
                                <td>Rs.220000</td>
                                <td><img src="img/MacBookPro.png" width="90" height="90" /></td>
                                <td><input name="addtocart6" type="submit" value="Add to Cart" /></td>
                                </tr>    
                            <tr class="border_bottom">
                                <td>#7</td>
                                <td>iPad</td>
                                <td>iPad Air,9.7inch Full HD Display,Lightening cable<br/>Space Grey Color,128Gb</td>
                                <td>Rs.45000</td>
                                <td><img src="img/ipadair.jpg" width="90" height="90" /></td>
                                <td><input name="addtocart7" type="submit" value="Add to Cart" /></td>
                                 </tr>   
                            <tr class="border_bottom">
                                <td>#8</td>
                                <td>iPad</td>
                                <td>iPad Pro,12inch Full HDR Display, Type C cable<br/>Space Grey Color,512Gb</td>
                                <td>Rs.65000</td>
                                <td><img src="img/iPadPro.png" width="90" height="90" /></td>
                                <td><input name="addtocart8" type="submit" value="Add to Cart" /></td> 
                                 </tr>                                  
                            <tr class="border_bottom">
                                <td>#9</td>
                                <td>Gaming_Console</td>
                                <td>Xbox One Series X,4K UHD Gaming ,2TB Hard Disk with 3 digital Downloaded Games</td>
                                <td>Rs.55000</td>
                                <td><img src="img/XBox.jfif" width="90" height="90" /></td>
                                <td><input name="addtocart9" type="submit" value="Add to Cart" /></td>
                                 </tr>   
                            <tr class="border_bottom">
                                <td>#10</td>
                                <td>Gaming_Console</td>
                                <td>Play Station V,4K UHD Gaming ,2TB Hard Disk with 2 digital Downloaded Games</td>
                                <td>Rs.50000</td>
                                <td><img src="img/Ps5.png" width="90" height="90" /></td>
                                <td><input name="addtocart10" type="submit" value="Add to Cart" /></td>                                                                                                
                             </tr>   
                        </table>
                    </div>
                </div>
<!--                 <div class="myfooter"> -->
<!--                     <h3 style="font-weight:normal; padding-left:10px">&copy;This Shopping Website is Designed and Developed by Ashish Reddy</h3> -->
<!--                 </div> -->
            </form>
        </div>
    </body>
</html>

