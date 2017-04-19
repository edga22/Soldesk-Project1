<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="domain.Category"
		 import="mgr.CategoryMgr"
   		 import="java.util.List" %>
<%
CategoryMgr catemgr = new CategoryMgr();

String cataPage = request.getParameter("cata");
String codePage = request.getParameter("code");
int categoriesSize = catemgr.listCategories().size();
int cataCode = 0;
int codeId = 0;
int[] cateArr;

if(cataPage != null){
	if(cataPage.equals("all")) ;		
	else cataCode = Integer.parseInt(cataPage);
	if(codePage != null) codeId = Integer.parseInt(codePage);
}
%>
<% if(cataPage.equals("all") || cataPage.equals(null)){ %>
	        <style>
	        /* 메인왼쪽메뉴 시작 */
	        .main_lmenu {
	            list-style: none outside;
	            margin:0;
	            padding:0;
	        }
	        .main_lmenu li{
	            font-size:1.3rem;
	            font-weight: 400;
	            padding:2px 0;
	        }
	        .main_lmenu .title a{
                font-size:1.5rem;
                font-weight: 600;
                color:#00ace6;
                margin-bottom:3px;
            }
	        .main_lmenu li a{
	            color:#000;
	        }       
	        #categori {
	            margin-top: 5rem;
	        }
	        </style>
            <div class="list-group" id="categori">
                <strong class="list-group-item disabled" style="font-size:1.6rem;">전체도서</strong>
<%
        int i = 0;
    
        for(Category result:catemgr.listCategoriesUse()){
            String cateMenuStr = "";
            
            if(result.getCode2() == 0){  
                if(i != 0){ %>
                    </ul>
                </div>                     
           <% } %>                  
            <div class="list-group-item">
                    <ul class="main_lmenu">
                        <li class="title"><a href="/mainCategory.jsp?cata=<%=result.getCode1()%>"><%=result.getCategoryName() %></a></li>
           <% i++;
           }else{ %>    
                        <li><a href="/mainCategory.jsp?cata=<%=result.getCode1()%>&code=<%=result.getCategoryID()%>"><%=result.getCategoryName() %></a></li>    
         <% }
        } %>
                    </ul>
                </div>             
            </div>
<% }else{ %> 
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
		   <% if(cataPage.equals("all")){ %>
		        <div id="c<%= i %>" class="panel-collapse collapse in">
		   <% }else{ %>
		        <div id="c<%= i %>" class="panel-collapse collapse <%=cateMenuStr %>">
		   <% } %>
		            <div class="panel-body">
    	   <% i++;
    	   }else{ %>		
		                <a href="/mainCategory.jsp?cata=<%=result.getCode1()%>&code=<%=result.getCategoryID()%>"><%=result.getCategoryName() %></a><br>      
	   	 <% }
	    } %>

		            </div>
		        </div>
		    </div>
		</div>
<% } %>