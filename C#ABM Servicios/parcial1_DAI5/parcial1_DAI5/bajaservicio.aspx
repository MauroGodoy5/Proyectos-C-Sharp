<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="bajaservicio.aspx.cs" Inherits="parcial1_DAI5.bajaservicio" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
             <asp:Label ID="Label1" runat="server" Text="Codigo del servicio a borrar:"></asp:Label> <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <br />
            <asp:Button ID="Button1" runat="server" Text="Borrar Servicio" OnClick="Button1_Click" /> <asp:Label ID="resultado" runat="server" Text="..."></asp:Label>
            <br />
            <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/WebForm1.aspx">retornar</asp:LinkButton>
            <asp:SqlDataSource ID="SqlDataSourceborrarservicio" runat="server" ConnectionString="Data Source=DESKTOP-7F1QK8N;Initial Catalog=administracion;Integrated Security=True" DeleteCommand="DELETE FROM servicios WHERE (cod_servicio = @cod_servicio)" ProviderName="System.Data.SqlClient">
                <DeleteParameters>
                    <asp:Parameter Name="cod_servicio" />
                </DeleteParameters>
             </asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
