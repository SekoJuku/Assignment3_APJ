<%@ page import="Item.Item" %>
<%@ page import="Cart.Cart" %>
<%@ page import="User.User" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>End</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
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

<%
    if(Cart.getItems()  != null)
    for (Item item :
            Cart.getItems()) { %>
    <div class = "article">
        <div>
            <h4><%=item.getName()%></h4>
            <p><%=item.getCategory()%></p>
            <p><%=item.getDescription()%></p>
            <p><%=item.getPrice()%></p>
        </div>
    </div>
<%
    }
%>
    User info:
    <%
        User a = (User) session.getAttribute("user");
    %>
    Username : <%=a.getUsername()%><br>
    Session start : <%=session.getAttribute("start")%><br>
    Name : <%=a.getName()%><br>
    Visits : <%=a.getVisits()%><br>
    Last time : <%=a.getDateTime(a.getLasttime())%><br>
</body>
</html>
