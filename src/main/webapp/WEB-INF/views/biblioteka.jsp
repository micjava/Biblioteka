<%@include file="./includes/common.jsp"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Biblioteka</title>
        <link href="${pageContext.request.contextPath}/resources/style.css" rel="stylesheet" type="text/css"/>
        <script type="text/javascript">
            //<![CDATA[
            try {
                if (!window.CloudFlare) {
                    var CloudFlare = [{verbose: 0, p: 0, byc: 0, owlid: "cf", bag2: 1, mirage2: 0, oracle: 0, paths: {cloudflare: "/cdn-cgi/nexp/dok2v=1613a3a185/"}, atok: "e70937e6e72207e2388b5d8144700473", petok: "393766d0e3156c08c5f81ce1db345a38a16bca37-1413533231-1800", zone: "ltdev.im", rocket: "0", apps: {"ga_key": {"ua": "UA-23469607-6", "ga_bs": "2"}, "abetterbrowser": {"ie": "10"}}}];
                    !function(a, b) {
                        a = document.createElement("script"), b = document.getElementsByTagName("script")[0], a.async = !0, a.src = "//ajax.cloudflare.com/cdn-cgi/nexp/dok2v=919620257c/cloudflare.min.js", b.parentNode.insertBefore(a, b)
                    }()
                }
            } catch (e) {
            }
            ;
            //]]>
        </script>
        <style>body{background-color:black;color:white;}</style>
        <script type="text/javascript" src="./resources/matrix.js"></script>
        <script type="text/javascript">
            var matrix = false;
            window.onload = function() {
                matrix = new Matrix({count: 300, auto: 1});
            };
            function start() {
                if (matrix && !matrix.interval) {
                    matrix.init();
                }
            }
            function stop() {
                if (matrix && matrix.interval) {
                    matrix.stop();
                }
            }
            function pause() {
                if (matrix && matrix.interval) {
                    matrix.pause();
                }
            }
        </script>
        <script type="text/javascript">
            /* <![CDATA[ */
            var _gaq = _gaq || [];
            _gaq.push(['_setAccount', 'UA-23469607-6']);
            _gaq.push(['_trackPageview']);

            (function() {
                var ga = document.createElement('script');
                ga.type = 'text/javascript';
                ga.async = true;
                ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
                var s = document.getElementsByTagName('script')[0];
                s.parentNode.insertBefore(ga, s);
            })();

            (function(b) {
                (function(a) {
                    "__CF"in b && "DJS"in b.__CF ? b.__CF.DJS.push(a) : "addEventListener"in b ? b.addEventListener("load", a, !1) : b.attachEvent("onload", a)
                })(function() {
                    "FB"in b && "Event"in FB && "subscribe"in FB.Event && (FB.Event.subscribe("edge.create", function(a) {
                        _gaq.push(["_trackSocial", "facebook", "like", a])
                    }), FB.Event.subscribe("edge.remove", function(a) {
                        _gaq.push(["_trackSocial", "facebook", "unlike", a])
                    }), FB.Event.subscribe("message.send", function(a) {
                        _gaq.push(["_trackSocial", "facebook", "send", a])
                    }));
                    "twttr"in b && "events"in twttr && "bind"in twttr.events && twttr.events.bind("tweet", function(a) {
                        if (a) {
                            var b;
                            if (a.target && a.target.nodeName == "IFRAME")
                                a:{
                                    if (a = a.target.src) {
                                        a = a.split("#")[0].match(/[^?=&]+=([^&]*)?/g);
                                        b = 0;
                                        for (var c; c = a[b]; ++b)
                                            if (c.indexOf("url") === 0) {
                                                b = unescape(c.split("=")[1]);
                                                break a
                                            }
                                    }
                                    b = void 0
                                }
                            _gaq.push(["_trackSocial", "twitter", "tweet", b])
                        }
                    })
                })
            })(window);
            /* ]]> */
        </script>
    </head>

    <!--  <body id="background1">-->
    <body>
        <style type="text/css">body, a:hover {cursor: url(http://cur.cursors-4u.net/cursors/cur-11/cur1003.cur), progress !important;}</style><a href="http://www.cursors-4u.com/cursor/2012/01/17/crocodile-print-pointer.html" target="_blank" title="Crocodile Print Pointer"><img src="http://cur.cursors-4u.net/cursor.png" border="0" alt="Crocodile Print Pointer" style="position:absolute; top: 0px; right: 0px;" /></a>
        <script type="text/javascript">
            //<![CDATA[
            try {
                (function(a) {
                    var b = "http://", c = "fb.ltdev.im", d = "/cdn-cgi/cl/", e = "img.gif", f = new a;
                    f.src = [b, c, d, e].join("")
                })(Image)
            } catch (e) {
            }
            //]]>
        </script>

        <h1>
            Katalog książek
        </h1>

        <form:form modelAttribute="ksiazka">
            <h2>
                Podstawowe dane
            </h2>
        <center> <table id="t1">
                <tr>
                    <td><label for="tytul">Tytu&#322:</label></td>
                    <td><form:input path="tytul" /></td>
                    <td><label for="opis">Opis:</label></td>      
                    <td><form:input path="opis"/></td>

                </tr>
                <tr>
                    <td></td>
                    <td><form:errors path="tytul" cssStyle="color: #ff0000;"/></td> 
                    <td></td>
                    <td><form:errors path="opis" cssStyle="color: #ff0000;"/></td> 

                </tr>   
                <tr>
                    <td><label for="ilosc">Ilo&#347&#263:</label></td>     
                    <td><form:input path="ilosc" type="number" required="true"/></td>
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
                <tr>
                    <td></td>
                    <td><form:errors path="ilosc" cssStyle="color: #ff0000;"/></td> 
                </tr> 
            </table></center>
        <br>
        <h2>
            Dane Autora
        </h2>
        <center> <table id="t11">     
                <tr>                
                    <td><label for="imieAutora"> Imi&#281 Autora: </label></td>     
                    <td><form:input path="imieAutora" /></td>
                    <td><label for="nazwiskoAutora"> Nazwisko Autora: </label></td>     
                    <td><form:input path="nazwiskoAutora" /></td>
                    <td><label for="pochodzenieAutora"> Pochodzenie Autora: </label></td>     
                    <td><form:input path="pochodzenieAutora" /></td>
                </tr>
                <tr>
                    <td></td>
                    <td><form:errors path="imieAutora" cssStyle="color: #ff0000;"/></td> 
                    <td></td>
                    <td><form:errors path="nazwiskoAutora" cssStyle="color: #ff0000;"/></td>
                    <td></td>
                    <td><form:errors path="pochodzenieAutora" cssStyle="color: #ff0000;"/></td>

                </tr> 
            </table></center>
        <br>
        <input type="submit" value="            Dodaj            " formaction="biblioteka"
               formmethod="post" />

    </form:form>

    <center><h2>
            Filtr
        </h2>
        <center><table id="t111">
                <tr><td>
                        <form action="biblioteka" method="get">
                            <input type="text" value=".*" name="wyrazenie" ><br></td></tr> 
                            <tr><td><center><select name="kategoria">
                                    <option value="1" >Tytu&#322</option>
                                    <option value="2" >Opis</option>
                                    <option value="5" >Kategoria</option>
                                </select><br></td></tr>
                                <tr><td><center><input type="submit" name="filter" value="Filtruj" >
                                    </form>

                                    </td></tr>
                                    </table>
                                    <br>
                                    <table id="t2">
                                        <tr><th colspan="5"><center>Podstawowe dane</center></th>
                                        <th colspan="3" ><center>Dane Autora</center></th>
                                        <th colspan="2"><center>Operacje</center></th>
                                        </tr>
                                        <tr>
                                            <th><a href="biblioteka?sort=0">Id</a></th>
                                            <th><a href="biblioteka?sort=1">Tytu&#322</a></th>
                                            <th><a href="biblioteka?sort=2">Opis</a></th>
                                            <th><a href="biblioteka?sort=4">Ilo&#347&#263</a></th>
                                            <th><a href="biblioteka?sort=5">Kategoria</a></th>
                                            <th><a href="biblioteka?sort=6">Imi&#281 Autora</a></th>
                                            <th><a href="biblioteka?sort=3">Nazwisko Autora</a></th>
                                            <th><a href="biblioteka?sort=7">Pochodzenie Autora</a></th>

                                            <th>Wypo&#380ycz</th>
                                            <th>Zmie&#324;</th>
                                        </tr>
                                        <c:forEach var="ksiazka" items="${biblioteka}">
                                            <tr>
                                                <td><c:out value="${ksiazka.id+1}" /></td>
                                                <td><c:out value="${ksiazka.tytul}" /></td>
                                                <td><c:out value="${ksiazka.opis}" /></td>
                                                <td><c:out value="${ksiazka.ilosc}" /></td>
                                                <td><c:out value="${ksiazka.kategoria}" /></td>
                                                <td><c:out value="${ksiazka.imieAutora}" /></td>
                                                <td><c:out value="${ksiazka.nazwiskoAutora}" /></td>
                                                <td><c:out value="${ksiazka.pochodzenieAutora}" /></td>

                                                <td><a href="biblioteka?id=${ksiazka.id}&action=delete">Wypo&#380ycz</a></td>
                                                <td><a href="bibliotekazmien?id=${ksiazka.id}&action=update">Zmie&#324;</a>
                                                </td>
                                            </tr>
                                        </c:forEach>
                                    </table>
                                    <footer>
                                        <p id="1">Katalog</p>
                                    </footer>
                                    </body>
                                    </html>
