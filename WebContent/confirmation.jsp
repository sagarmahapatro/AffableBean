<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
 <link rel="stylesheet" type="text/css" href="css/affablebean.css">
 <link rel="stylesheet" type="text/css" href="css/confirmation.css">
<title>The Affable Bean</title>
</head>
<body>
  <div id="main">
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
       <p  id="confirmationText">
       		[ text ]
            <br><br>
            [ order reference number ]
       </p>
       
        <div class="summaryColumn" >
        	 <table id="orderSummaryTable" class="detailsTable" >
                        <tr class="header">
                            <th style="padding:10px">[ order summary table ]</th>
                        </tr>
              </table>
        </div>
        
         <div class="summaryColumn" >
             <table id="deliveryAddressTable" class="detailsTable">
                  <tr class="header">
                      <th style="padding:10px">[ customer details ]</th>
                  </tr>
              </table>
        </div>
     
     </div>
     <div id="footer">
            <hr>
    		<p id="footerText">[ footer text ]</p>
      </div>
  </div>
</body>
</html>