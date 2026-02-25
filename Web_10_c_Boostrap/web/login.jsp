<%-- 
    Document   : login
    Created on : 08-01-2026, 11:08:26
    Author     : AngDeng
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
    </head>
    <body class="bg-light d-flex align-items-center vh-100">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-md-4">
                    <div class="card shadow-sm">
                        <div class="card-header bg-primary text-white text-center">
                            <h4 class="mb-0">Đăng Nhập</h4>
                        </div>
                        <div class="card-body">
                            <form action="MainController" method="post">
                                <input type="hidden" name="action" value="login"/>
                                <div class="mb-3">
                                    <label class="form-label">Username:</label>
                                    <input type="text" name="txtUsername" class="form-control" required="required" placeholder="Nhập tài khoản..." />
                                </div>
                                <div class="mb-3">
                                    <label class="form-label">Password:</label>
                                    <input type="password" name="txtPassword" class="form-control" required="required" placeholder="Nhập mật khẩu..." />
                                </div>
                                <button type="submit" class="btn btn-primary w-100">Login</button>
                            </form>

                            <c:if test="${not empty message}">
                                <div class="alert alert-danger mt-3 text-center" role="alert">
                                    ${message}
                                </div>
                            </c:if>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
    </body>
</html>