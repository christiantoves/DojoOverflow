<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Dojo Overflow</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
</head>
<body>
	<h1>What is your question?</h1>
        <form action="/questions" method="POST">
        	<div>
	        	<label for="question">Question:</label>
	        	<textarea rows="5" cols="20" name="question" id="question"></textarea>
        	</div>
        	<p><c:out value="${questionError}"></c:out></p>
        	<div>
       			<label for="tags">Tags:</label>
       			<input type="text" name="tags" id="tags"/>
       		</div>
       		<input type="submit" value="Submit"/>
        </form>
</body>
</html>