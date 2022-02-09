<%@ page import="ru.javawebinar.topjava.model.MealTo" %>
<%@ page import="java.util.List" %>
<%@ page import="java.time.format.DateTimeFormatter" %>
<%@ page import="ru.javawebinar.topjava.repository.ApplicationDAOImpl" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<html lang="ru">
<head>
    <title>Meals</title>
</head>
<body>
<h3><a href="index.html">Home</a></h3>
<hr>
<%
    List<MealTo> mealsTo = (List) request.getAttribute("mealsTo");
%>
<h2>Meals</h2>
<table border="3">
    <thead>
    <tr>
        <th>Id</th>
        <th>Date</th>
        <th>Description</th>
        <th>Calories</th>
        <th>update</th>
        <th>delete</th>
    </tr>
    </thead>
    <tbody>
    <% for (MealTo mealTo : mealsTo) {
        String format = DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm").format(mealTo.getDateTime());
        if (mealTo.isExcess()){
    %>
    <tr style="color: red">
        <% } %>
        <% if (!mealTo.isExcess()) { %>
    <tr style="color: green">
        <% } %>
            <td><%= ApplicationDAOImpl.getId(mealTo) %></td>
            <td><%= format %></td>
            <td><%= mealTo.getDescription() %></td>
            <td><%= mealTo.getCalories() %></td>
            <td></td>
            <td></td>
        </tr>
        <% } %>
    </tbody>
</table>
</body>
</html>
