<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" href="css/affablebean.css">
<link rel="stylesheet" type="text/css" href="css/checkout.css">
<title>The Affable Bean</title>
</head>
<body>
	<div id="header">
		     <div id="widgetBar">
		        <div class="headerWidget">
				      
				</div>
		     	<div class="headerWidget">
				      
				</div>
				<div class="headerWidget">
				           [ shopping cart widget ]
				</div>
			</div>	
			<a href="#">
			   <img src="img/logo.png" id="logo" alt="Affable Bean logo">
		    </a>
		    <img src="img/logoText.png" id="logoText" alt="the affable bean">
	 </div>
	  <div id="singleColumn">
	       <h2>checkout</h2>
           <p>[ text ]</p>

           <form action="purchase" method="post">
               <table id="checkoutTable">
                   <tr>
                       <td>[ form containing fields to
                           <br>capture customer details ]</td>
                   </tr>
                   <tr>
                       <td></td>
                   </tr>
                   <tr>
                       <td><input type="submit" value="submit button"></td>
                   </tr>

               </table>
            </form>
            
             <div id="infoBox">
                    <div style="border: black solid 1px; height:100px; padding: 10px">
                        [ purchase conditions ]
                    </div>
                    <div id="priceBox">
                        [ purchase calculations:<br>subtotal + delivery charge ]
                    </div>
             </div>
	      
	  </div>
	  <div id="footer">
            <hr>
    		<p id="footerText">[ footer text ]</p>
      </div>
</body>
</html>