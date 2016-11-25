<%--
  Created by IntelliJ IDEA.
  User: yuhuitao
  Date: 2016/3/14
  Time: 15:49
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix='security' uri='http://www.springframework.org/security/tags' %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div class="list_page">
    <c:if test="${param.show_add == null or param.show_add=='' }">

        <c:if test="${userQuery == null or userQuery  != true}">
            <div class="list_btn">
                <input name="btn-upload-pre" type="button" class="btn btn-success" value="新增">
            </div>
        </c:if>
    </c:if>

    <div class="page_w">
        本页显示 <strong>
        <c:choose>
            <c:when test="${list.totalRecord<list.page*list.pageSize}">
                ${list.totalRecord-(list.page-1)*list.pageSize}
            </c:when>
            <c:otherwise>
                ${list.pageSize}
            </c:otherwise>
        </c:choose>
    </strong> 条记录，总共 <strong>${list.totalRecord }</strong> 条记录
    </div>
    <div class="page_cnt" id="linkdiv" param="">
        <div class="page_btn" name="page_first" param="1">
            &lt;&lt;
        </div>
        <c:choose>
            <c:when test="${list.page > 1 }">
                <div class="page_btn" name="page_prev" param="${list.page - 1 }">
                    &lt;
                </div>
            </c:when>
            <c:otherwise>
                <div class="page_btn" name="page_prev" param="1">
                    &lt;
                </div>
            </c:otherwise>
        </c:choose>
        <div class="w">
            第
        </div>
        <div class="page_ipt">
            <input type="text" id="incurpage" value="${list.page }">
        </div>
        <div class="w">
            页, 共<span>${list.totalPage }</span>页
        </div>
        <c:choose>
            <c:when test="${list.page < list.totalPage }">
                <div class="page_btn" name="page_next" param="${list.page + 1 }">
                    &gt;
                </div>
            </c:when>
            <c:otherwise>
                <div class="page_btn" name="page_next" param="${list.totalPage }">
                    &gt;
                </div>
            </c:otherwise>
        </c:choose>
        <div class="page_btn" name="page_last" param="${list.totalPage }">
            &gt;&gt;
        </div>
        <div class="reset no_pic_pb" name="page_reset" param="${list.page }">
        </div>
    </div>
</div>