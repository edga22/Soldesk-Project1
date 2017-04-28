<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import="mgr.BestsellerMgr"
         import="domain.BestSeller"%>
         
<div class="row">
                <div class="col-md-12">
                    <div id="ad2">
                        <a href="http://localhost/inven/bookDetail.jsp?bookID=218">
                            <img alt="ad2" src="/img/main/170320_ebook.jpg" />
                        </a>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-12">
                    <div class="best10">
                        <div class="title">베스트셀러 <font color="#0275d8">TOP10</font></div>
                        <ul class="best10_text">
                        <%
                            BestsellerMgr mgr=new BestsellerMgr();
                            BestSeller[] bestseller=mgr.getBestseller();
                            
                            String monthAgo=mgr.getMonthAgoDate();
                            
                            for(int k=0;k<10;k++){
                                int bookIdInt = bestseller[k].getBookID();
                                String bookIdLink = "/inven/bookDetail.jsp?bookID="+bookIdInt;
                                String bookNamestr = bestseller[k].getBook().getBookName(); 
                                
                                if(k == 0){
                         %>
                            <li>
                                <div class="best10_1">
                                    <div class="number active"><%=k+1 %></div>
                                    <div class="best10_img">                          
                                        <a href="<%=bookIdLink %>" title="<%=bookNamestr %> 바로가기">
                                        <img src="<%=bestseller[k].getBook().getImageID()%>" style="width:65px;height:auto;" onerror="ImgError(this)"/>
                                        </a>
                                        <a href="<%=bookIdLink %>" title="<%=bookNamestr %> 바로가기"><%=bookNamestr %></a>
                                    </div>
                                </div>                        
                            </li>
                            <%  }else{ %>
                            <li><div class="number"><%=k+1 %></div><a href="<%=bookIdLink %>" title="<%=bookNamestr %> 바로가기"><%=bookNamestr %></a></li>
                         <% }
                         } %>    
                        </ul>
                    </div>
                </div>
            </div>