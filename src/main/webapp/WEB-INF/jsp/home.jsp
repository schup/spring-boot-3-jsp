<%@ page import="java.util.Collections" %>
<%@ page import="java.io.IOException" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Home</title>
</head>
<body>
<h1>Home - Spring Boot 3</h1>
<pre>
  request.getRequestURI() = <%= request.getRequestURI() %>
</pre>
<table>
    <thead>
    <tr>
        <th>Name</th>
        <th>Value</th>
    </tr>
    </thead>
    <tbody>
    <%
        final JspWriter o = out;
        Collections.list(request.getAttributeNames()).forEach( name -> {
                    Object value = request.getAttribute(name);

                    try {
                        o.println(String.format("<tr><td>%s</td><td>%s</td></tr>", name, value));
                    } catch (IOException e) {
                        //
                    }
                }
        );
    %>
    </tbody>
</table>
</body>
</html>
