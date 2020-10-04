<%-- 
    Document   : index
    Created on : Jul 20, 2020, 6:42:27 PM
    Author     : My DELL
--%>

<%@page import="App.Country"%>
<%@page import="java.util.List"%>
<%@page import="App.CountryControl"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Country List</title>
    </head>
    <body>
        <div style="max-width: 500px;">
            <%!
                CountryControl countryControl = new CountryControl();
                List<Country> countries = countryControl.getCountries();
            %>
            <%@include file="/WEB-INF/header.jsp" %>
            <table>
                <tr style="background-color: black">
                    <th style="width: 40px;">Country Flag</th>
                    <th style="width: 100px;">Name</th>
                    <th style="width: 200px;">Full Name</th>
                    <th style="width: 80px;">Capital</th>
                    <th style="width: 60px;">Phone Code</th>
                    <th style="width: 60px;">TLD</th>
                    <th style="width: 80px;">Region</th>  
                </tr>
                <%
                    for (Country country : countries) {
                %>
                <tr>
                    <td style="text-align: center">
                        <img src="<%= country.getFlag()%>" width="20" height="20" alt="<%= country.getName()%>">
                    </td>
                    <td><%= country.getName()%></td>
                    <td><%= country.getFullname()%></td>
                    <td><%= country.getCapital()%></td>
                    <td><%= country.getPhoneCode()%></td>
                    <td><%= country.getTopLevelDomain()%></td>
                    <td><%= country.getRegion()%></td>
                </tr>
                <%
                    }
                %>
            </table>
                <%@include file="/WEB-INF/footer.jsp" %>
        </div>
    </body>
</html>
