<%@page import="java.util.ArrayList"%>
<%@ page import="model.Item" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <title>Shopping Cart - Check out</title>
		<link rel="stylesheet" type="text/css" href="css/style.css"/>
    </head>

    <body style="margin:0; padding:0">
        <form action="purchase" method="post">   
            <%
               ArrayList<Item> it_list = (ArrayList) session.getAttribute("itemlist");
               %>
            <div class="container">
         <div class="headbanner">
                <h1 style="display:inline">
                        <img src="img/shopping.png" /> HCL Tech Arena<br/>
                </h1>
                 <h2 style="display:inline">
 						Best Shopping Application
	             </h2>
            </div>  
                <div class="mycontent">
                    <a style="color:#CC3300; font-family:Verdana, Geneva, sans-serif; font-size:20px; font-weight:bold">Checkout My Cart</a><br />
                    <table width="500px">
                        <%
                        if(it_list.size()==0)
                        {
                        	%><h3> Cart is Empty</h3>
                        <tr>
                            <td><button onclick="document.forms[0].action = 'shop.jsp'; return true;">Back</button> </td>
                        </tr>	
                            <%
                        }
                        else
                        {
                        for (int i = 0; i < it_list.size(); i++) {
                        model.Item itm = (Item) it_list.get(i);
                        %>
                        <tr>
                            <td><%out.print(itm.name);%></td> 
                            <td><%out.print(itm.price);%></td> 
                        </tr>
                        <% }%>
                        <tr>
                            <td style="font-weight:bold">My Total</td><td style="font-weight:bold">Rs.<%out.print(session.getAttribute("total"));%></td>
                        </tr>
                        <tr>
                            <td><input type="submit" value="Purchase" /></td>
                        </tr>	
                        <tr>
                            <td><img src="img/paywith.png" width="210" height="80" /></td></tr>
                            <% }%>
                    </table>
                </div>
                <div class="myfooter">
                    <h3 style="font-weight:normal; padding-left:10px">&copy;This Online Shopping Project is Designed and Developed by Ashish Reddy</h3>
                </div>
            </div>
        </form>
    </body>
</html>