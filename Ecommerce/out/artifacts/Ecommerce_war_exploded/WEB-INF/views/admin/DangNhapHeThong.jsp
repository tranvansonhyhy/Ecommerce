<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="s"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Đăng nhập hệ thống</title>
</head>
<body>
	<s:form action="xuLyDangNhap" method="post" modelAttribute="user">
		<div>
			<label>Tên đăng nhập:</label> <input type="text" name="tenDangNhap" />
		</div>
		<div>
			<label>Mật khẩu:</label> <input type="password" name="matKhau" />
		</div>
		<div>
			<input type="checkbox" name="remember-me" /> Nho mat khau
		</div>
		<div>
			<label></label> <input type="submit" name="btnDangNhap" value="Đăng nhập" /><br>
			<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}">
				
		</div>
		<div>
			<label></label> 
			<div>
				<h6 style="color:red;">${thongBao}</h6>
			</div>
		</div>
	</s:form>
</body>
</html>