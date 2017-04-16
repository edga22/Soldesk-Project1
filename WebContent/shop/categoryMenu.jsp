<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="domain.Category"
		 import="mgr.CategoryMgr"
   		 import="java.util.List" %>
<%
CategoryMgr catemgr = new CategoryMgr();

String cataPage = request.getParameter("cata");
int categoriesSize = catemgr.listCategories().size();
int cataCode = 0;
int[] cateArr;

if(cataPage != null){
	if(cataPage.equals("all")) ;		
	else cataCode = Integer.parseInt(cataPage);
	cateArr = new int[categoriesSize];
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
			<div class="panel panel-default">
		        <div class="panel-heading">
		            <h5 class="panel-title">
		                <a href="/mainCategory.jsp">전체도서</a>
		            </h5>
		        </div>
			</div>	
	<%
    int i = 0;

    for(Category result:catemgr.listCategories()){
    	String cateMenuStr = "";
        
    	if(cataCode != 0){
    		if(cataCode == result.getCode1()){
    		    cateMenuStr = "in";
    		}
    	}
    	
        if(result.getCode2() == 0){  
        	if(i != 0){ %>
            		</div>
		        </div>
		    </div>		               
	     <% } %>		            
		    <div class="panel panel-default">
		        <div class="panel-heading">
		            <h5 class="panel-title">
		                <a data-toggle="collapse" data-parent="#categori" href="#c<%= i %>"><%=result.getCategoryName() %></a>
		            </h5>
		        </div>
		 <% if(cataPage.equals("all")){ %>
		        <div id="c<%= i %>" class="panel-collapse collapse in">
		 <% }else{ %>
		        <div id="c<%= i %>" class="panel-collapse collapse <%=cateMenuStr %>">
		 <% } %>
		            <div class="panel-body">
    	 <% i++;
		}else{ %>		
		                <a href="/mainCategory.jsp?cata=<%=result.getCode1()%>&code="><%=result.getCategoryName() %></a><br>      
   	 <% }
    } %>
		            </div>
		        </div>
		    </div>
		</div>