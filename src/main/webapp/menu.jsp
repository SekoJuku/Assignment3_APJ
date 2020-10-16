<%@ page import="java.util.Set" %>
<%@ page import="Item.Item" %>
<%@ page import="java.util.HashSet" %>
<%@ page import="java.util.Collections" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Main Menu</title>
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
            <li class="nav-item active">
                <a class="nav-link" href="#">My Cart</a>
            </li>
            <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    Filter
                </a>
                <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
                    <a class="dropdown-item" href="${pageContext.request.contextPath}s5?filter='Clothes'">Clothes</a>
                    <a class="dropdown-item" href="${pageContext.request.contextPath}s5?filter='Electronics'">Electronics</a>
                    <a class="dropdown-item" href="${pageContext.request.contextPath}s5?filter='Food'">Food</a>
                </div>
            </li>
        </ul>
    </div>
    <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
        <div class="navbar-nav">
            <a class="nav-link active" href="#">My Cart<span class="sr-only">(current)</span></a>
            <a class="nav-link" href="#">Filter</a>
        </div>
    </div>
    <form class="form-inline" action="s2" method = "post">
        <button class="btn btn-success my-2 my-sm-0" type="submit">Log Out</button>
    </form>
</nav>

<div>
    <%
        for (Item item :
                (Set<Item>)request.getAttribute("items")) {%>
        <div>
            <h4><%=item.getName()%></h4>
            <p><%=item.getCategory()%></p>
            <p><%=item.getDescription()%></p>
            <p><%=item.getPrice()%></p>
        </div>
    <%
    }
    %>
</div>
</body>
</html>
