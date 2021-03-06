<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="model.User" %>
<%@ page import="model.UserMovie" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: Daniel
  Date: 9/24/2018
  Time: 2:13 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<link rel="stylesheet" type="text/css" href="resources/css/dashboard.css">

<jsp:include page="header.jsp"/>
<% User user = (User) request.getAttribute("userInfo"); %>

<div class="container emp-profile">
    <form method="post">
        <div class="row">

            <div class="col-md-6">
                <div class="profile-head">
                    <h5>
                        <%= user.getFullname() %>
                    </h5>
                    <ul class="nav nav-tabs" id="myTab" role="tablist">
                        <li class="nav-item">
                            <a class="nav-link active" id="home-tab" data-toggle="tab" href="#home" role="tab" aria-controls="home" aria-selected="true">About</a>
                        </li>
                    </ul>
                </div>
            </div>

        </div>
        <div class="row">
            <div class="col-md-8">
                <div class="tab-content profile-tab" id="myTabContent">
                    <div class="tab-pane fade show active" id="home" role="tabpanel" aria-labelledby="home-tab">
                        <div class="row">
                            <div class="col-md-6">
                                <label>Email</label>
                            </div>
                            <div class="col-md-6">
                                <p><%= user.getEmail() %>
                                </p>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-6">
                                <label>Telephone</label>
                            </div>
                            <div class="col-md-6">
                                <p><%=user.getTelephone() %></p>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-6">
                                <label>Address</label>
                            </div>
                            <div class="col-md-6">
                                <p><%= user.getAddress()%></p>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </form>


</div>

<div class="container emp-profile">
    <div class="row">

        <div class="col-md-6">
            <div class="profile-head">
                <h5>
                    Your WatchList
                </h5>
            </div>
        </div>
    </div>
    <div class="row" style="margin-top: 15px;">
        <c:forEach items="${watchlist}" var="w_mov">
            <div class="col-md-3 col-sm-6 mb-4">
                <a href="/movie?id=${w_mov.id}">
                    <img id="simlar${similar_mov.id}" class="img-fluid" src="https://image.tmdb.org/t/p/w500/${w_mov.poster_path}" alt="">
                </a>
                <p id="name${similar_mov.id}" class="similar_name">${w_mov.original_title}</p>
            </div>
        </c:forEach>
    </div>
</div>
<jsp:include page="footer.jsp"/>