<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Search University</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
    </head>
    <body class="bg-light">

        <jsp:include page="welcome.jsp" />

        <c:if test="${not empty user}">
            <div class="container">
                <div class="card shadow-sm mb-4">
                    <div class="card-body d-flex justify-content-between align-items-center">
                        <form action="MainController" method="post" class="d-flex w-50">
                            <input type="hidden" name="action" value="searchUniversity"/>
                            <input type="text" name="keywords" value="${keywords}" class="form-control me-2" placeholder="Nhập tên trường để tìm..." />
                            <button type="submit" class="btn btn-primary">Search</button>
                        </form>
                        <a href="university-form.jsp" class="btn btn-success">+ Add New</a>
                    </div>
                </div>

                <c:if test="${empty list}">
                    <div class="alert alert-warning text-center">
                        No data matching the search criteria found!
                    </div>
                </c:if>

                <c:if test="${not empty list}">
                    <div class="table-responsive bg-white shadow-sm rounded">
                        <table class="table table-hover table-bordered align-middle mb-0">
                            <thead class="table-dark text-center">
                                <tr>
                                    <th>Id</th>
                                    <th>Name</th>
                                    <th>Short Name</th>
                                    <th>City</th>
                                    <th>Region</th>
                                    <th>Type</th>
                                    <th>Founded Year</th>
                                    <th>Students</th>
                                    <th>Faculties</th>
                                    <th colspan="2">Action</th>
                                </tr>
                            </thead>
                            <tbody>
                                <c:forEach items="${list}" var="u">
                                    <tr>
                                        <td class="text-center">${u.id}</td>
                                        <td><strong>${u.name}</strong></td>
                                        <td>${u.shortName}</td>
                                        <td>${u.city}</td>
                                        <td>${u.region}</td>
                                        <td><span class="badge bg-info text-dark">${u.type}</span></td>
                                        <td class="text-center">${u.foundedYear}</td>
                                        <td class="text-center">${u.totalStudents}</td>
                                        <td class="text-center">${u.totalFaculties}</td>
                                        <td class="text-center">
                                            <c:if test="${u.isDraft}">
                                                <a href="MainController?action=updateUniversity&id=${u.id}" class="btn btn-warning btn-sm">Update</a>
                                            </c:if>
                                        </td>
                                        <td class="text-center">
                                            <form action="MainController" method="POST" onsubmit="return confirm('Bạn có chắc chắn muốn xóa trường đại học này không?');">
                                                <input type="hidden" name="action" value="deleteUniversity"/>
                                                <input type="hidden" name="id" value="${u.id}"/>
                                                <input type="hidden" name="keywords" value="${keywords}"/>
                                                <button type="submit" class="btn btn-danger btn-sm">Delete</button>
                                            </form>
                                        </td>
                                    </tr>
                                </c:forEach>
                            </tbody>
                        </table>
                    </div>
                </c:if>
            </div>
        </c:if>
        
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
    </body>
</html>