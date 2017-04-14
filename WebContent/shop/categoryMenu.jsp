<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="domain.Category" %>
<%@ page import="mgr.CategoryMgr" %>
<%@ page import="java.util.List" %>
<%
CategoryMgr mymgr = new CategoryMgr();
List<Category> categories = mymgr.listCategories();
int categoriesSize = categories.size();
%>
<%
String cataPage = request.getParameter("cata");
String cata1 = "";
String cata2 = "";
String cata3 = "";
String cata4 = "";
%>
<%
if(cataPage != null){
	if(cataPage.equals("domestic")){
	    cata1 = "in";
	}else if(cataPage.equals("oversea")){   
	    cata2 = "in";
	}else if(cataPage.equals("ebook")){
	    cata3 = "in";
	}else if(cataPage.equals("etc")){
        cata4 = "in";
	}else{
	    
	}
}
%>
<style>
#categori a {
	padding: 0.3rem;
}

#categori {
	margin-top: 5rem;
}
</style>

<div class="panel-group" id="categori">
<%
    int i = 1;

    for(Category result:mymgr.listCategories()){
        String catai = "cata"+i;
        String catastr = catai;
        
        if(result.getCode2() == 0){  
        	if(i == 1){        		
    %>
            <div class="panel panel-default">
		        <div class="panel-heading">
		            <h5 class="panel-title">
		                <a data-toggle="collapse" data-parent="#categori" href="#c<%= i %>"><%=result.getCategoryName() %></a>
		            </h5>
		        </div>
		        <div id="c1" class="panel-collapse collapse <%=cata1 %>">
		            <div class="panel-body">
	<%      }else{ %>
		            </div>
		        </div>
		    </div>
		    <div class="panel panel-default">
		        <div class="panel-heading">
		            <h5 class="panel-title">
		                <a data-toggle="collapse" data-parent="#categori" href="#c<%= i %>"><%=result.getCategoryName() %></a>
		            </h5>
		        </div>
		        <div id="c<%= i %>" class="panel-collapse collapse <%=catastr %>">
		            <div class="panel-body">
    <%      }  i++;
		}else{ %>		    
		                <a href="/mainCategory.jsp?cata=oversea"><%=result.getCategoryName() %></a><br>      
    <%  }
    } %>
		            </div>
		        </div>
		    </div>
		</div>