<%@ page import="java.util.Set" %>
<%@ page import="Item.Item" %>
<%@ page import="Item.ItemSet" %>
<%@ page import="java.util.HashSet" %>
<%@ page import="java.util.Collections" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Main Menu</title>
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
    <form action="s6">
    <%
        if(request.getAttribute("error") != null) {
            System.out.println("Error!");
        }
        if(ItemSet.getItems() != null) {
            for (Item item : ItemSet.getItems() ) {%>
            <div class = "article">
                <div>
                    <h4><%=item.getName()%></h4>
                    <p><%=item.getCategory()%></p>
                    <p><%=item.getDescription()%></p>
                    <p><%=item.getPrice()%></p>
                </div>
                <div>
                        <input type="checkbox" value="<%=item.getName()%>" name = "itemname"> Add to cart
                </div>
            </div>
    <%
            }
        }
    %>
    <input type="submit" value = "Add">
    </form>
</div>
</body>
</html>
