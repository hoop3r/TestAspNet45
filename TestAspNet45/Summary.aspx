﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Summary.aspx.cs" Inherits="TestAspNet45.Summary" %>
<%@ Import Namespace="TestAspNet45" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link rel="stylesheet"href="Styles.css" />
</head>
<body>
    <h2>Приглашения</h2>
    <h3>Люди которые придут</h3>
    <table>
        <thead>
            <tr>
                <th>Имя</th>
                <th>Email</th>
                <th>Телефон</th>
            </tr>
        </thead>
        <tbody>
            <% var yesData = ResponseRepository.GetRepository().GetAllResponses().Where(r => r.WillAttend.Value);
                foreach (var rsvp in yesData)
                {
                    string htmlString = String.Format("<tr><td>{0}</td><td>{1}</td><td>{2}</td>", rsvp.Name, rsvp.Email, rsvp.Phone);
                    Response.Write(htmlString);
                }%>
        </tbody>
    </table>
             <h3>Люди которые не придут</h3>
    <table>
        <thead>
            <tr>
                <th>Имя</th>
                <th>Email</th>
                <th>Телефон</th>
            </tr>
        </thead>
        <tbody>
            <%=GetNoShowHtml()%>
            <%--<% var noData = ResponseRepository.GetRepository()
            .GetAllResponses().Where(r => !r.WillAttend.Value);
            foreach (var rsvp in noData)
            {
                string html1 = String.Format("<tr><td>{0}</td><td>{1}</td><td>{2}</td>",
            rsvp.Name, rsvp.Email, rsvp.Phone);
                    Response.Write(html1);
            } %>--%>
        </tbody>
    </table>
</body>
</html>
