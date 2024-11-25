<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="consultapelicula.aspx.cs" Inherits="desempeño2.consultapelicula" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" DataSourceID="SqlDataSourcepeliculas">
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSourcepeliculas" runat="server" ConnectionString="<%$ ConnectionStrings:peliculasConnectionString %>" SelectCommand="SELECT * FROM [PELICULAS]"></asp:SqlDataSource>
        </div>
        <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/peliculas.aspx">Retornar</asp:LinkButton>
    </form>
</body>
</html>
