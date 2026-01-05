<%-- 
    Document   : index
    Created on : Jan 5, 2026, 11:18:37 AM
    Author     : AngDeng
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>HTML Forms with Bootstrap & JS</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">

        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
        
        <style>
            body {
                padding: 20px;
                background-color: #f8f9fa; /* Màu nền xám nhẹ */
            }
            .form-container {
                background-color: white;
                padding: 30px;
                border-radius: 10px;
                box-shadow: 0 0 10px rgba(0,0,0,0.1);
                max-width: 600px; /* Giới hạn chiều rộng form */
                margin: auto;     /* Canh giữa màn hình */
            }
            .custom-label {
                font-weight: bold;
                margin-top: 10px;
            }
        </style>
    </head>
    <body>

        <div class="container">
            <div class="form-container">
                <h2 class="text-center text-primary mb-4">HTML Forms (Styled)</h2>
                
                <form action="index.html" id="myForm">
                    
                    <div class="mb-3">
                        <label class="form-label custom-label">Textbox</label>
                        <input type="text" name="txtText" class="form-control" placeholder="Nhập text..." />
                    </div>

                    <div class="mb-3">
                        <label class="form-label custom-label">Password</label>
                        <input type="password" name="txtPassword" class="form-control" />
                    </div>

                    <input type="hidden" name="txtHidden" value="hidden_value" />

                    <div class="mb-3 form-check">
                        <input type="checkbox" name="chkCheck" value="ON" checked="checked" class="form-check-input" id="chkMale"/>
                        <label class="form-check-label" for="chkMale">Male</label>
                    </div>

                    <div class="mb-3">
                        <label class="custom-label d-block">Status</label>
                        <div class="form-check form-check-inline">
                            <input type="radio" name="rdoStatus" value="Single" checked="checked" class="form-check-input" /> Single
                        </div>
                        <div class="form-check form-check-inline">
                            <input type="radio" name="rdoStatus" value="Married" class="form-check-input" /> Married
                        </div>
                        <div class="form-check form-check-inline">
                            <input type="radio" name="rdoStatus" value="Divorced" class="form-check-input" /> Divorced
                        </div>
                    </div>

                    <div class="mb-3">
                        <label class="form-label custom-label">ComboBox</label>
                        <select name="txtCombo" class="form-select">
                            <option value="Servlet">JSP and Servlet</option>
                            <option value="EJB">EJB</option>
                        </select>
                    </div>

                    <div class="mb-3">
                        <label class="form-label custom-label">Multiple</label>
                        <select name="txtList" multiple="multiple" size="3" class="form-select">
                            <option value="Servlet" selected>JSP and Servlet</option>
                            <option value="EJB" selected>EJB</option>
                            <option value="Java">Core Java</option>
                        </select>
                    </div>

                    <div class="mb-3">
                        <label class="form-label custom-label">TextArea</label>
                        <textarea name="txtArea" rows="4" class="form-control">This is a form parameters demo!!!!</textarea>
                    </div>

                    <div class="mt-4 text-center">
                        <button type="submit" name="txtB" class="btn btn-primary">Submit Query</button>
                        <button type="submit" name="action" value="Register" class="btn btn-success">Register</button>
                        <button type="reset" class="btn btn-secondary">Reset</button>
                        <button type="button" class="btn btn-warning" onclick="showChaoMung()">JavaScript</button>
                    </div>
                </form>
            </div>
        </div>

        <script>
            // Hàm này chạy khi bấm nút "JavaScript"
            function showChaoMung() {
                alert("Xin chào! Đây là thông báo từ JavaScript cơ bản.");
                
                // Ví dụ đổi màu nền trang web khi bấm nút
                document.body.style.backgroundColor = "#e2e6ea";
            }
        </script>
        
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
    </body>
</html>