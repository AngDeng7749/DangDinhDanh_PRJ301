<%-- 
    Document   : university-form.jsp
    Created on : 02-02-2026, 09:58:31
    Author     : AngDeng
--%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>University Form</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
    </head>
    <body class="bg-light">
        <div class="container mt-5">
            <div class="card shadow-sm mx-auto" style="max-width: 800px;">
                <div class="card-header bg-success text-white">
                    <h4 class="mb-0">${mode == 'update' ? 'Cập Nhật University' : 'Thêm Mới University'}</h4>
                </div>
                <div class="card-body">
                    
                    <c:if test="${not empty msg}">
                        <div class="alert alert-success">${msg}</div>
                    </c:if>
                    <c:if test="${not empty error}">
                        <div class="alert alert-danger">${error}</div>
                    </c:if>

                    <form action="MainController" method="POST">
                        <input type="hidden" name="action" value="${mode=='update'?'saveUpdateUniversity':'addUniversity'}"/>

                        <div class="row mb-3">
                            <div class="col-md-6">
                                <label class="form-label fw-bold">ID:</label>
                                <input type="text" name="id" class="form-control" value="${u.id}" ${mode == 'update' ? 'readonly' : ''} required />
                            </div>
                            <div class="col-md-6">
                                <label class="form-label fw-bold">Name:</label>
                                <input type="text" name="name" class="form-control" value="${u.name}" required />
                            </div>
                        </div>

                        <div class="row mb-3">
                            <div class="col-md-6">
                                <label class="form-label">Short Name:</label>
                                <input type="text" name="shortName" class="form-control" value="${u.shortName}" />
                            </div>
                            <div class="col-md-6">
                                <label class="form-label">City:</label>
                                <input type="text" name="city" class="form-control" value="${u.city}" />
                            </div>
                        </div>

                        <div class="mb-3">
                            <label class="form-label">Description:</label>
                            <input type="text" name="description" class="form-control" value="${u.description}" />
                        </div>

                        <div class="mb-3">
                            <label class="form-label">Address:</label>
                            <input type="text" name="address" class="form-control" value="${u.address}" />
                        </div>

                        <div class="row mb-3">
                            <div class="col-md-4">
                                <label class="form-label">Region:</label>
                                <input type="text" name="region" class="form-control" value="${u.region}" />
                            </div>
                            <div class="col-md-4">
                                <label class="form-label">Type:</label>
                                <input type="text" name="type" class="form-control" value="${u.type}" />
                            </div>
                            <div class="col-md-4">
                                <label class="form-label">Founded Year:</label>
                                <input type="number" step="1" min="0" name="foundedYear" class="form-control" value="${u.foundedYear}" />
                            </div>
                        </div>

                        <div class="row mb-3">
                            <div class="col-md-6">
                                <label class="form-label">Total Students:</label>
                                <input type="number" step="1" min="0" name="totalStudents" class="form-control" value="${u.totalStudents}" />
                            </div>
                            <div class="col-md-6">
                                <label class="form-label">Total Faculties:</label>
                                <input type="number" step="1" min="0" name="totalFaculties" class="form-control" value="${u.totalFaculties}" />
                            </div>
                        </div>

                        <div class="form-check mb-4">
                            <input type="checkbox" class="form-check-input" name="isDraft" id="isDraft" ${u.isDraft ? 'checked' : ''} />
                            <label class="form-check-label" for="isDraft">Lưu nháp (isDraft)</label>
                        </div>

                        <div class="d-flex gap-2">
                            <c:choose>
                                <c:when test="${mode == 'update'}">
                                    <button type="submit" class="btn btn-warning px-4">Update</button>
                                </c:when>
                                <c:otherwise>
                                    <button type="submit" class="btn btn-success px-4">Add</button>
                                </c:otherwise>
                            </c:choose>
                            <a href="search.jsp" class="btn btn-secondary">Quay lại</a>
                        </div>
                    </form>
                </div>
            </div>
        </div>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
    </body>
</html>