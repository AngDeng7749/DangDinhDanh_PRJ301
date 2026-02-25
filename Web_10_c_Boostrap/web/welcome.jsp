<%-- 
    Document   : a.jsp
    Created on : 08-01-2026, 11:15:32
    Author     : AngDeng
--%>

<%@page import="model.UserDTO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Dashboard - Quản Lý Đại Học</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.1/font/bootstrap-icons.css">
    </head>
    <body class="bg-light">

        <c:if test="${empty user}">
            <c:redirect url="login.jsp"/>
        </c:if>

        <c:if test="${not empty user}">
            <nav class="navbar navbar-expand-lg navbar-dark bg-dark shadow-sm">
                <div class="container-fluid">
                    <a class="navbar-brand fw-bold" href="welcome.jsp">
                        <i class="bi bi-building"></i> Quản Lý Đại Học
                    </a>
                    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                    <div class="collapse navbar-collapse" id="navbarNav">
                        <ul class="navbar-nav me-auto">
                            <li class="nav-item">
                                <a class="nav-link" href="search.jsp"><i class="bi bi-search"></i> Tra cứu danh sách</a>
                            </li>
                        </ul>
                        <span class="navbar-text text-white me-3">
                            Welcome, <strong class="text-warning">${user.fullName}</strong>!
                        </span>
                        <a href="MainController?action=logout" class="btn btn-outline-danger btn-sm">
                            <i class="bi bi-box-arrow-right"></i> Logout
                        </a>
                    </div>
                </div>
            </nav>

            <div class="container mt-5">
                <div class="row justify-content-center">
                    <div class="col-md-8">
                        <div class="card shadow-lg border-0 rounded-4">
                            <div class="card-body text-center p-5">
                                <h1 class="display-1 text-primary mb-3"><i class="bi bi-person-bounding-box"></i></h1>
                                <h2 class="fw-bold text-dark">Xin chào, ${user.fullName}!</h2>
                                <p class="lead text-muted mt-3">
                                    Chào mừng bạn đã đăng nhập thành công vào Hệ thống Quản lý. 
                                    Chúc bạn có một ngày làm việc hiệu quả.
                                </p>
                                <hr class="my-4">
                                <p class="text-secondary">Bạn muốn thực hiện tác vụ gì tiếp theo?</p>
                                
                                <div class="d-grid gap-3 d-sm-flex justify-content-sm-center mt-4">
                                    <a href="search.jsp" class="btn btn-primary btn-lg px-4 gap-3 shadow-sm">
                                        <i class="bi bi-list-ul"></i> Xem danh sách trường
                                    </a>
                                    <a href="university-form.jsp" class="btn btn-outline-success btn-lg px-4 shadow-sm">
                                        <i class="bi bi-plus-circle"></i> Thêm trường mới
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </c:if>

        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
    </body>
</html>