<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<!DOCTYPE html>
<html>
    <head>
        <title>Home</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    </head>
    <body>






        <style>

            body, 
            a:hover {cursor: url(http://ani.cursors-4u.net/others/oth-9/oth840.cur), progress !important;}
            
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
                height:300px;
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
        <a href="http://www.cursors-4u.com/cursor/2013/04/30/cute-brown-pencil.html" target="_blank" title="Cute Brown Pencil">
            <img src="http://cur.cursors-4u.net/cursor.png" border="0" alt="Cute Brown Pencil" style="position:absolute; top: 0px; right: 0px;" />
            </a>
        <div id="header">
            <h1>Biblioteka X</h1>
        </div>

        <div id="nav">

            <h2>Katalog</h2>
            <h2><a href="<c:url value="/home2" />" >Kontakt</a></h2>
        </div>


        <div id="section">



            <a href="<c:url value="/biblioteka" />" >Katalog</a>
            <P>  Aktualny czas na serwerze: ${serverTime}. </P>

            <A HREF="<c:url value="/biblioteka" />">
                <IMG SRC="http://media2.giphy.com/media/PwUEE2fhR00xi/giphy.gif" alt="Logo" style="width:200px;height:120px"></a>
            <br/>  <br/>
            <div id="myDIV">REKLAMA REKLAMA REKLAMA REKLAMA REKLAMA REKLAMA REKLAMA</div>

        </div>



        <div id="footer">
            Copyright © michal.com
        </div>
    </body>
</html>
