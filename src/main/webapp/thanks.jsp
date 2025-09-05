<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.util.List" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Thank you!</title>
    <link rel="stylesheet" href="style.css">
    <style>
        /* Card chứa dữ liệu */
        .card {
            background: #fff;
            width: 820px;
            padding: 25px 35px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0,0,0,.1);
            margin-top: 20px;
            display: table;
            border-collapse: collapse;
        }
        .row {
            display: table-row;
        }
        .label, .value {
            display: table-cell;
            padding: 6px 10px;
            vertical-align: top;
        }
        .label {
            font-weight: bold;
            width: 170px;
        }
        .back-btn {
            display: inline-block;
            margin-top: 20px;
            padding: 10px 25px;
            background: #007BFF;
            color: #fff;
            font-weight: bold;
            border-radius: 5px;
            text-decoration: none;
            transition: 0.3s;
        }
        .back-btn:hover {
            background: #0056b3;
        }
    </style>
</head>
<body>
    <img src="http://www.southeastlinuxfest.org/wp-content/uploads/2014/06/Murach_image.jpg" alt="Logo Murach">
    <h1>Thank you!</h1>
    <p id="welcome_text">We’ve received your survey. Here is what you submitted:</p>

    <div class="card">
        <div class="row">
            <span class="label">First Name:</span>
            <span class="value">${user.firstName}</span>
        </div>
        <div class="row">
            <span class="label">Last Name:</span>
            <span class="value">${user.lastName}</span>
        </div>
        <div class="row">
            <span class="label">Email:</span>
            <span class="value">${user.email}</span>
        </div>
        <div class="row">
            <span class="label">Date of Birth:</span>
            <span class="value">${user.dob}</span>
        </div>
        <div class="row">
            <span class="label">Heard about us via:</span>
            <span class="value">${user.aboutus}</span>
        </div>
        <div class="row">
            <span class="label">Announcements:</span>
            <span class="value">
                <c:forEach var="item" items="${user.announcements}">
                    ${item}<br/>
                </c:forEach>
            </span>
        </div>
        <div class="row">
            <span class="label">Contact by:</span>
            <span class="value">${user.contactPreference}</span>
        </div>
    </div>

    <a href="<%= request.getContextPath() %>/index.jsp" class="back-btn">Back to form</a>
</body>
</html>
