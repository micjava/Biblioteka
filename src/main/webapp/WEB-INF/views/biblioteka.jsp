<%@include file="./includes/common.jsp"%>
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Biblioteka</title>
<link href="${pageContext.request.contextPath}/resources/style.css" rel="stylesheet" type="text/css"/>
</head>

<body>
<h1>
	Formularz danych
</h1>

	<form:form modelAttribute="ksiazka">
           
            <table id="t1">
                <tr>
		<td><label for="tytul">Tytu?:</label></td> </label></td>
                <td><form:input path="tytul" required="true"/></td>
                </tr>
		<tr>
		<td><label for="opis">Opis:</label></td>      
                <td><form:input path="opis" required="true"/></td>
                </tr>
		<tr>
               <td><label for="imieAutora"> Imi?: </label></td>     
               <td><form:input path="imieAutora" required="true" /></td>
               </tr>
               <td><label for="nazwiskoAutora"> Nazwisko: </label></td>     
               <td><form:input path="nazwiskoAutora" required="true" /></td>
               </tr>
               <td><label for="pochodzenieAutora"> Pochodzenie Autora: </label></td>     
               <td><form:input path="pochodzenieAutora" required="true" /></td>
               </tr>
		<tr>
		<td><label for="ilosc">Ilo&#347&#263:</label></td>     
                <td><form:input path="ilosc" required="true"/></td>
                </tr>
		<tr>
                <td><label for="kategoria">Kategoria:</label></td> 
                <td><form:input path="kategoria" required="true" /></td>
                </tr>
		</table>
                <br>
		<input type="submit" value="Dodaj" formaction="biblioteka"
			formmethod="post" />
                 
	</form:form>
	<form action="biblioteka" method="get">
		<input type="text" value=".*" name="wyrazenie" ><br> 
		<select name="kategoria">
			<option value="1" >Tytul</option>
			<option value="2" >Opis</option>
			<option value="5" >Kategoria</option>
		</select><br>
		<input type="submit" name="filter" value="Filtruj" >
		
	</form>

	<table id="t2">
		<tr>
			<th><a href="biblioteka?sort=0">Id</a></th>
			<th><a href="biblioteka?sort=1">Tytul</a></th>
			<th><a href="biblioteka?sort=2">Opis</a></th>
			<th><a href="biblioteka?sort=3">Nazwisko Autora</a></th>
			<th><a href="biblioteka?sort=4">Ilo&#347&#263</a></th>
			<th><a href="biblioteka?sort=5">Kategoria</a></th>
			<th>Usu&#324;</th>
			<th>Zmie&#324;</th>
		</tr>
		<c:forEach var="ksiazka" items="${biblioteka}">
			<tr>
				<td><c:out value="${ksiazka.id+1}" /></td>
				<td><c:out value="${ksiazka.tytul}" /></td>
				<td><c:out value="${ksiazka.opis}" /></td>
				<td><c:out value="${ksiazka.nazwiskoAutora}" /></td>
				<td><c:out value="${ksiazka.ilosc}" /></td>
				<td><c:out value="${ksiazka.kategoria}" /></td>
				<td><a href="biblioteka?id=${ksiazka.id}&action=delete">Usu&#324;</a></td>
				<td><a href="bibliotekazmien?id=${ksiazka.id}&action=update">Zmie&#324;</a>
				</td>
			</tr>
		</c:forEach>
	</table>
       <footer>
           <p id="1">Biblioteka</p>
</footer>
</body>
</html>