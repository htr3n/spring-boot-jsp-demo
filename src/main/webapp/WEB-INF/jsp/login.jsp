<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html lang="en">
<head>
  <link href="webjars/bootstrap/4.1.3/css/bootstrap.min.css" rel="stylesheet">
  <title>Login</title>
</head>
<body>
<div class="jumbotron">
  <h1>Spring Boot 2 + JSP Demo</h1>
</div>
<div class="container">
  <div class="row">
    <form:form method="POST" modelAttribute="loginForm">
      <div class="form-group">
        <label for="email">E-Mail</label>
        <form:input path="email" cssClass="form-control"/>
        <form:errors path="email" cssStyle="color: red"/>
      </div>
      <div class="form-group">
        <label for="password">Password</label>
        <form:password path="password" cssClass="form-control"/>
        <form:errors path="password" cssStyle="color: red"/>
      </div>
      <form:button class="btn btn-primary">Log in</form:button>
    </form:form>
  </div>
  <!--- check login status and display message -->
  <div class="row">
    <% Object status = session.getAttribute("loginStatus");
      if ("OK".equals(status)) { %>
    <div class="alert alert-success" role="alert">
      Congratulations! Login successfully.
    </div>
    <% }
      if ("FAILED".equals(status)) { %>
    <div class="alert alert-danger" role="alert">
      Login failed. Please try again!!!
    </div>
    <% } %>
  </div>
</div>
<script src="webjars/bootstrap/4.1.3/js/bootstrap.min.js"></script>
</body>
</html>