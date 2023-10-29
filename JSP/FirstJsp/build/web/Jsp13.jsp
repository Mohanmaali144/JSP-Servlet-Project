<%-- 
    Document   : Jsp13
    Created on : 13-Oct-2023, 9:42:06 am
    Author     : Mohan_Maali
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
    </body>
    <%
  
            int n = 157;
            int temp = n, arm = 0, count = 0;

            for (; n > 0; n /= 10, count++);

            n = temp;

            for (; n > 0;) {
                int r = n % 10;
                int i = 1, pow = 1;

                for (i = 1; i <= count; i++, pow *= r);
                arm += pow;
                n /= 10;
            }

            out.print("Input number: " + temp + "<br>");

            if (temp == arm)
                out.print("Armstrong");
            else
                out.print("Not Armstrong");
        
    %>

</body>
</html>
