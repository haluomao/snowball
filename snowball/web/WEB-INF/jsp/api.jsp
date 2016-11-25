<%@ page language="java" pageEncoding="UTF-8" %>
<%@ include file="/common/taglibs.jsp" %>
<%
    final String path = request.getContextPath();
    final String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<html>
<body>
<h2>Http APIs for taf test!</h2>
<ul>
    <li><a href="index.htm">登录注册接口</a></li>
    <li><a href="/index_sc.htm">安全中心接口</a></li>
    <li><a href="/index_icon.htm">昵称头像接口</a></li>
</ul>

<c:forEach var="item" items="${apiList}">
    <table width="100%" border="1" cellspacing="0" cellpadding="0" class="base_tbl">
        <tr>
            <td width="20" height="40" align="center">ApiName</td>
            <td width="80" >
                <div style="vertical-align:middle"><strong>${item.apiName}</strong></div>
            </td>
        <tr>
            <td width="20" height="40" align="center">InParam</td>
            <td width="81" >
                   <div style="word-break:break-all;">${item.inParam} </div>
            </td>
        </tr>
        <tr>
            <td width="20" height="40" align="center">OutParam</td>
            <td width="80" >
                <div style="word-break:break-all;">${item.outParam} </div>
            </td>
        </tr>
    </table>
</c:forEach>
</body>
</html>
