<html>
    <head>
        <title>Shopping Cart - Success</title>
		<link rel="stylesheet" type="text/css" href="css/style.css"/>
    </head>

    <body style="margin:0; padding:0">
        <%if(session.getAttribute("purch")!="true"){response.sendRedirect("index.jsp");
        } %>
        
        <form action="shop.jsp" method="post">
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
                    <h3 align="center" style="color:#CC3300;">Purchase has been succeeded! Thank You.<br /><input type="submit" value="Ok" /></h3>
                </div>
                <div class="myfooter">
                    <h3 style="font-weight:normal; padding-left:10px">&copy;This Online Shopping Website is Designed and Developed by Ashish Reddy</h3>
                </div>
            </div>
        </form>
    </body>
</html>
