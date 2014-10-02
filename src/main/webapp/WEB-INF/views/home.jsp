<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>  
    <head>
        <title>Home</title>
          <link href="${pageContext.request.contextPath}/resources/style.css" rel="stylesheet" type="text/css"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    </head>
<body>
<h1>
	Magazyn
</h1>

<P>  The time on the server is ${serverTime}. </P>

<ul>
		<li>
			<a href="<c:url value="/magazyn" />" >Magazyn</a>
                        
		</li>
               <li> <a href="<c:url value="/magazynzmien"/>">Magazyn zmien</a> </li>
</ul>
         <footer>
           <p id="1">Magazyn</p>
</footer>
</body>
</html>
