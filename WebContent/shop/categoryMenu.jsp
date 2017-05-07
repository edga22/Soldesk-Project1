<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="domain.Category"
		 import="mgr.CategoryMgr"   		  
   		 import="domain.Book"
         import="mgr.BookMgr"%>
<%
CategoryMgr catemgr = new CategoryMgr();
BookMgr bookmgr = new BookMgr();

String cataPage = request.getParameter("cata"); //분류1
String codePage = request.getParameter("code"); //분류2
String cataBookID = request.getParameter("bookID"); //도서아이디
int categoriesSize = catemgr.listCategories().size();
int cataCode = 0; //분류1 숫자
int codeId = 0; //분류2 숫자
int cateBookID = 0; //도서아이디 숫자
int[] cateArr;

if(cataBookID != null){
	int codeID = 0;
	cateBookID = Integer.parseInt(cataBookID);
    Book book = bookmgr.getBook(cateBookID);
    codeID = book.getCategoryID();
    Category codeCateg = catemgr.findCategory(codeID);
    cataPage = Integer.toString(codeCateg.getCode1());
    codePage =  Integer.toString(codeID);
}

if(cataPage != null){
	if(cataPage.equals("all")) ;
	else if(cataPage.equals("best")) ;
	else cataCode = Integer.parseInt(cataPage);
	if(codePage != null) codeId = Integer.parseInt(codePage);
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
        
		<div class="panel-group hidden-xs" id="categori">
			<div class="panel panel-default">
		        <div class="panel-heading">
		            <h5 class="panel-title">
		                <a href="/mainCategory.jsp?cata=all">전체도서</a>
		            </h5>
		        </div>
			</div>	
		<%
	    int i = 0;
	
	    for(Category result:catemgr.listCategoriesUse()){
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
		   <% if(cataPage.equals("all") || cataPage.equals("best") ||cataPage.equals(null)){ %>
		        <div id="c<%= i %>" class="panel-collapse collapse in">
		   <% }else{ %>
		        <div id="c<%= i %>" class="panel-collapse collapse <%=cateMenuStr %>">
		   <% } %>
		            <div class="panel-body">
    	   <% i++;
    	   }else{ %>		
		                <a href="/mainCategory.jsp?cata=<%=result.getCode1()%>&code=<%=result.getCategoryID()%>">
		   <%  if(codeId == result.getCategoryID()){   %>
		                <strong style="color:darkblue;font-size:1.6rem;"><%=result.getCategoryName() %></strong></a><br>
		   <% }else{ %>
		                <%=result.getCategoryName() %></a><br>
		                      
	   	 <%   }
		  }
	    } %>

		            </div>
		        </div>
		    </div>
		</div>
