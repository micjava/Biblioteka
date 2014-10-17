<%@include file="./includes/common.jsp"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <title>Insert title here</title>
        <link href="${pageContext.request.contextPath}/resources/style.css" rel="stylesheet" type="text/css"/>
        <style>
            #myDIVback {
                width: 400px;
                height: 200px;
                background: red;
                -webkit-animation: mymove3 10s infinite; /* Chrome, Safari, Opera */
                animation: mymove3 0.1s infinite;
            }

            /* Chrome, Safari, Opera */
            @-webkit-keyframes mymove3 {
                50% {background-color: blue;}
            }

            /* Standard syntax */
            @keyframes mymove3 {
                50% {background-color: blue;}
            }

        </style>
    </head>
    <body id="myDIVback" >
        <style type="text/css">body, a:hover {cursor: url(http://cur.cursors-4u.net/cursors/cur-10/cur938.ani), url(http://cur.cursors-4u.net/cursors/cur-10/cur938.gif), progress !important;}</style><a href="http://www.cursors-4u.com/cursor/2011/12/21/groovy-pointer.html" target="_blank" title="Groovy Pointer"><img src="http://cur.cursors-4u.net/cursor.png" border="0" alt="Groovy Pointer" style="position:absolute; top: 0px; right: 0px;" /></a>
        <table id="tzmien">     

            <form:form modelAttribute="ksiazka">
                <tr><td>Tytu&#322:</td><td><form:input path="tytul" /></td></tr>

                <tr><td>Opis:</td><td><form:input path="opis" /></td></tr>

                <tr><td>Ilo&#347&#263:</td><td><form:input path="ilosc" /></td></tr>

                <tr><td>Kategoria:</td><td><form:input path="kategoria" /></td></tr>
                <tr><td> <br/> </td></tr>
                <tr><td>Imi&#281 autora:</td><td><form:input path="imieAutora" /></td></tr>

                <tr><td>Nazwisko autora:</td><td><form:input path="nazwiskoAutora" /></td></tr>

                <tr><td>Pochodzenie autora:</td><td> <form:input path="pochodzenieAutora" /></td></tr>
                <tr><td> <br/> </td></tr>
                <tr><td colspan="2"><Center><input type="submit" value="                Zmie&#324;                   " /></Center></td></tr>
                    <form:hidden path="id"/>
                </form:form>

</table>


</body>
</html>