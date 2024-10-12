<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Form Submission Results</title>
</head>
<body>
    <h1>Form Submission Results</h1>
    <table border="1">
        <tr>
            <th>Parameter Name</th>
            <th>Value</th>
        </tr>
        <%
            java.util.Enumeration<String> parameterNames = request.getParameterNames();
            while (parameterNames.hasMoreElements()) {
                String paramName = parameterNames.nextElement();
                String[] paramValues = request.getParameterValues(paramName);
                String paramValue = paramValues.length > 0 ? paramValues[0] : "";
                %>
                <tr>
                    <td><%= paramName %></td>
                    <td><%= paramValue %></td>
                </tr>
                <%
            }
        %>
    </table>
</body>
</html>
