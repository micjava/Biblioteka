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
                background: red url('http://cdn.lolzbook.com/wp-content/uploads/2012/07/OK-class%E2%80%A6-open-your-books-to-page-2%E2%80%A6.gif') no-repeat  top left/575px 375px;
                -webkit-animation: mymove3 4s infinite; /* Chrome, Safari, Opera */
                animation: mymove3 4s infinite;
            }

            /* Chrome, Safari, Opera */
            @-webkit-keyframes mymove3 {
                50% {background: blue bottom right/450px 600px;}
            }

            //http://38.media.tumblr.com/0e5bcd6c19165016517b11ea3b0f3015/tumblr_ndeghyuRPV1u0da3jo1_500.gif
            
/*            #myDIVback {
                width: 400px;
                height: 200px;
                background: red url('http://cdn.lolzbook.com/wp-content/uploads/2012/07/OK-class%E2%80%A6-open-your-books-to-page-2%E2%80%A6.gif') no-repeat  bottom left/1200px 700px;
                -webkit-animation: mymove3 0.1s infinite;  Chrome, Safari, Opera 
               
                animation: mymove3 4s infinite;
            }

             Chrome, Safari, Opera 
            @-webkit-keyframes mymove3 {
                50% {background: blue bottom right/1200px 700px;}
            }*/
            
            

        </style>
    </head>
    <body id="myDIVback" >
        <style type="text/css">body, a:hover {cursor: url(http://cur.cursors-4u.net/cursors/cur-10/cur938.ani), url(http://cur.cursors-4u.net/cursors/cur-10/cur938.gif), progress !important;}</style><a href="http://www.cursors-4u.com/cursor/2011/12/21/groovy-pointer.html" target="_blank" title="Groovy Pointer"><img src="http://cur.cursors-4u.net/cursor.png" border="0" alt="Groovy Pointer" style="position:absolute; top: 0px; right: 0px;" /></a>
        <table id="tzmien">     

            <form:form modelAttribute="ksiazka">
                
                <tr>
                    <td><label for="tytul">Tytu&#322:</label></td>
                    <td><form:input path="tytul"/></td>
                </tr>
                <tr><td></td>
                    <td><form:errors path="tytul" cssStyle="color: #FFFFFF;"/></td>
                </tr>
                <tr>
                    <td><label for="opis">Opis:</label></td>      
                    <td><form:input path="opis"/></td>
                </tr>
                <tr><td></td>
                    <td><form:errors path="opis" cssStyle="color: #FFFFFF;"/></td>
                </tr>
                <tr>
                    <td><label for="imieAutora"> Imi&#281: </label></td>     
                    <td><form:input path="imieAutora" /></td>
                </tr>
                <tr><td></td>
                    <td><form:errors path="imieAutora" cssStyle="color: #FFFFFF;"/></td>
                </tr>
                <tr>
                    <td><label for="nazwiskoAutora"> Nazwisko: </label></td>     
                    <td><form:input path="nazwiskoAutora" /></td>
                </tr>
                <tr><td></td>
                    <td><form:errors path="nazwiskoAutora" cssStyle="color: #FFFFFF;"/></td>
                </tr>
                <td><label for="pochodzenieAutora"> Pochodzenie Autora: </label></td>     
                <td><form:input path="pochodzenieAutora"/></td>
            </tr>
            <tr><td></td>
                <td><form:errors path="pochodzenieAutora" cssStyle="color: #FFFFFF;"/></td>
            </tr>
            <tr>
                <td><label for="ilosc">Ilo&#347&#263:</label></td>     
                <td><form:input path="ilosc" type="number"/></td>
            </tr>
            <tr><td></td>
                <td><form:errors path="ilosc" cssStyle="color: #FFFFFF;"/></td>
            </tr>

            <tr>
                <td><label for="kategoria">Kategoria:</label></td> 
                <td>
                    <select id="kategoria" name="kategoria">
                        <option value="Biografia">Biografia</option>
                        <option value="Fantastyka">Fantastyka</option>
                        <option value="Historyczna">Historyczna</option>
                        <option value="Horror">Horror</option>
                        <option value="Literatura popularnonaukowa">Literatura popularnonaukowa</option>
                        <option value="Literatura dzieci&#281ca">Literatura dzieci&#281ca</option>
                        <option value="Klasyka">Klasyka</option>
                        <option value="Poezja">Poezja</option>
                        <option value="Przygodowa">Przygodowa</option>
                        <option value="Romans">Romans</option>
                        <option value="Satyra">Satyra</option>
                        <option value="Sensacja">Sensacja</option>
                        <option value="Thriller">Thriller</option>
                    </select>
                </td>
            </tr>
            <tr><td></td>
                
                
                <tr><td colspan="2"><Center><input type="submit" value="                Zmie&#324;                   " /></Center></td></tr>
                    <form:hidden path="id"/>
                </form:form>

</table>


</body>
</html>