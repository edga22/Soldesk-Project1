<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="domain.Category"
		import="dao.CategoryDao" import="dao.DbBasedCategoryDao" %>
<%
	CategoryDao mydao = new DbBasedCategoryDao();
	if(mydao.getCategories().size() <2){
		Category[] temp = new Category[6];
		temp[0] = new Category(10,10,"역사");
		temp[1] = new Category(10,20,"과학");
		
		temp[2] = new Category(20,10,"역사");
		temp[3] = new Category(20,20,"과학");
		
		temp[4] = new Category(30,10,"역사");
		temp[5] = new Category(30,20,"과학");
		
		for(Category input:temp){
			mydao.addCategory(input);
		}
	}
%>
<!DOCTYPE html PUBLIC>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<title>Insert title here</title>
</head>
<body>
<div class="row">
<div class="col-md-6 col-md-offset-3">

<table class="table table-striped">
<thead>
<tr>
	<th>ID</th>
	<th>code1	</th>
	<th>code2	</th>
	<th>이름	</th>
</tr>
</thead>
<tbody>
	<%for(Category result:mydao.getCategories()){ %>
	<tr>
		<th><%=result.getCategoryID() %>	</th>
		<th><%=result.getCode1() %>	</th>
		<th><%=result.getCode2() %>	</th>
		<th><%=result.getCategoryName() %>		</th>
	</tr>
	<%} %>
</tbody>
</table>
</div>
</div>
<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</body>
</html>