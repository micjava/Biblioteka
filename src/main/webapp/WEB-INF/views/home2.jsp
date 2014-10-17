<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Home</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    </head>
    <body>

        <style>

            #myDIV {
                color: red;
                border: 1px solid black;
                -webkit-animation: mymove 5s infinite; /* Chrome, Safari, Opera */
                animation: mymove 5s infinite;
            }

            /* Chrome, Safari, Opera */
            @-webkit-keyframes mymove {
                50% {word-spacing: 50px;color: blue;}

            }

            /* Standard syntax */
            @keyframes mymove {
                50% {word-spacing: 50px;color: blue;}
            }

            #header {
                background-color:black;
                color:white;
                text-align:center;
                padding:5px;
            }
            #nav {
                line-height:30px;
                background-color:#33CCFF;
                height:400px;
                width:150px;
                float:left;
                padding:5px;	      
            }
            #section {
                background-color:white;
                text-align:center;
                width:70%;
                float:left;
                padding:10px;	 	 
            }
            #footer {
                background-color:black;
                color:white;
                clear:both;
                text-align:center;
                padding:5px;	 	 
            }
        </style>
        <div id="header">
            <h1>Biblioteka X</h1>
        </div>

        <div id="nav">

            <h2><a href="<c:url value="/" />" >Katalog</a></h2>
            <h2>Kontakt</h2>
        </div>


        <div id="section">

            <h1>Kontakt:</h1>
            ul. javowskiego 2/4<br/>
            wejście B, III piętro<br/>
            50-000 Wrocław<br/>
            tel. 71 00 00 00<br/>
<P>  ${serverTime}. </P>
<b>Pamiętaj! Nie jesteś anonimowy:</b>
<br/>  Twoja Lokalizacja : ${locale} 
<br/>  Twój system operacyjny : ${os} ver.: ${os3}w architekturze: ${os2}
<br/>  Twój IP :  <i id="demo"></i> 

<script type="application/javascript">
var ipaddress;
function getip(json){
    //alert(json.ip); // alerts the ip address
    
    ipaddress = json.ip;
    document.getElementById("demo").innerHTML = ipaddress;
    
    }
    
</script>
<script type="application/javascript" src="http://jsonip.appspot.com/?callback=getip">
</script>

            <br/>  <br/>
            <div id="myDIV">REKLAMA REKLAMA REKLAMA REKLAMA REKLAMA REKLAMA REKLAMA</div>

        </div>



        <div id="footer">
            Copyright © michal.com
        </div>
    </body>
</html>
