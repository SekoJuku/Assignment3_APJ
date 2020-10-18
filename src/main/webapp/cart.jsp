<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core_1_1" %>
<%@ page import="Item.Item" %>
<%@ page import="java.util.Queue" %><%--
  Created by IntelliJ IDEA.
  User.User: Арман
  Date: 18.10.2020
  Time: 15:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Cart</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
    <style>
        .wrapper {
            margin : 20px 30px;
            padding : 10px;

        }
        .article {
            padding : 5px;
            border : 1px lightslategray;
        }
    </style>
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-light bg-light">
    <a class="navbar-brand" href="s4">Show All</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNavDropdown">
        <ul class="navbar-nav">
            <li class="nav-item">
                <form action="s7">
                    <button class = "btn btn-sm btn-outline-secondary">My Cart</button>
                </form>
            </li>
            <li class="nav-item">
                <form action="s5">
                    <input type="text" name = "filter" value="Clothes" hidden>
                    <button class = "btn btn-sm btn-outline-secondary">Clothes</button>
                </form>
            </li>
            <li class="nav-item">
                <form action="s5">
                    <input type="text" name = "filter" value="Electronics" hidden>
                    <button class = "btn btn-sm btn-outline-secondary">Electronics</button>
                </form>
            </li>
            <li class="nav-item">
                <form action="s5">
                    <input type="text" name = "filter" value="Food" hidden>
                    <button class = "btn btn-sm btn-outline-secondary">Food</button>
                </form>
            </li>
        </ul>
        <form action="s2" method="post"><button class = "btn btn-sm btn-outline-success">Log out</button></form>
    </div>
</nav>

<div class = "wrapper">
    <c:set var="sum" scope = "session" value = "0"/>
    <:c:if>
    <c:forEach var = "item" items = "$(items)" begin = "1" end = "5">
    <c:out value = "${i}"/><p>
    <div class = "article">
        <div>
            <h4><c:out value = "${item.getName()}"/></h4>
            <p><c:out value = "${item.getCategory()}"/></p>
            <p><c:out value = "${item.getDescription()}"/></p>
            <p><c:out value = "${item.getPrice()}"/></p>
            <c:set var="sum" value="${sum}+1"
        </div>
    </div>
    </c:forEach>
    </:c:if>
    <h4>Total to pay: <%=sum%></h4>
    <form action="end.jsp" method="get">
        <button>Pay!</button>
    </form>
</div>
</body>
</html>
