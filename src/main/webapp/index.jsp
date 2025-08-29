<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Murach Survey</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <img src="http://www.southeastlinuxfest.org/wp-content/uploads/2014/06/Murach_image.jpg" alt="Logo Murach">

    <!-- action: gửi tới servlet /survey; method: POST -->
    <form action="${pageContext.request.contextPath}/survey" method="post">
        <h1>Survey</h1>

        <p id="welcome_text">If you have a moment, we'd appreciate it if you would fill out this survey</p>

        <div id="div_info">
            <h2>Your information</h2><br>

            <label for="firstName" class="info">First Name</label>
            <input type="text" id="firstName" name="firstName" required><br>

            <label for="lastName" class="info">Last Name</label>
            <input type="text" id="lastName" name="lastName" required><br>

            <label for="email" class="info">Email</label>
            <input type="email" id="email" name="email" required><br>

            <label for="dateOfBirth" class="info">Date of Birth</label>
            <input type="date" id="dateOfBirth" name="dateOfBirth" required><br>
        </div>

        <div id="question1">
            <h2>How did you hear about us?</h2><br>
            <input type="radio" name="aboutus" id="searchEngine" value="searchEngine" required>
            <label for="searchEngine">Search Engine</label>

            <input type="radio" name="aboutus" id="wordOfMouth" value="wordOfMouth">
            <label for="wordOfMouth">Word of mouth</label>

            <input type="radio" name="aboutus" id="socialMedia" value="socialMedia">
            <label for="socialMedia">Social Media</label>

            <input type="radio" name="aboutus" id="other" value="other">
            <label for="other">Other</label>
        </div>

        <h2>Would you like to receive announcements about new CDs and special offers?</h2>
        <!-- Dùng cùng name để nhận nhiều lựa chọn -->
        <input type="checkbox" name="announcements" id="Yes1" value="news_and_offers">
        <label for="Yes1">YES, I'd like that.</label><br>

        <input type="checkbox" name="announcements" id="Yes2" value="email_announcements">
        <label for="Yes2">YES, please send me email announcements.</label>

        <br><br>
        <label for="contactPreference">Please contact me by:</label>
        <select name="contactPreference" id="contactPreference">
            <option value="email_postalmail">Email or Postal mail</option>
            <option value="emailOnly">Email only</option>
            <option value="postalMail">Postal mail only</option>
        </select>

        <br><br>
        <input type="submit" id="submit_button" value="Submit">
    </form>
</body>
</html>
