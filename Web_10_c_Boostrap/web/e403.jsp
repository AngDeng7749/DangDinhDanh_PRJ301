<%-- 
    Document   : e303.jsp
    Created on : 22-01-2026, 09:45:36
    Author     : AngDeng
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>403 - Access Denied</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.1/font/bootstrap-icons.css">
    </head>
    <body class="bg-light d-flex align-items-center vh-100">
        <div class="container text-center">
            <div class="row justify-content-center">
                <div class="col-md-6">
                    <div class="card shadow-lg border-danger border-2 rounded-4">
                        <div class="card-body py-5">
                            <h1 class="display-1 text-danger"><i class="bi bi-exclamation-triangle-fill"></i></h1>
                            <h2 class="fw-bold mt-3 text-dark">403 - Access Denied!</h2>
                            <p class="text-muted mt-3 px-4">
                                Rất tiếc, tài khoản của bạn hiện đang bị khóa hoặc không có quyền truy cập vào chức năng này.
                            </p>
                            <a href="login.jsp" class="btn btn-outline-danger mt-3 px-4 rounded-pill">
                                <i class="bi bi-arrow-left me-2"></i> Quay lại Đăng Nhập
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
    </body>
</html>