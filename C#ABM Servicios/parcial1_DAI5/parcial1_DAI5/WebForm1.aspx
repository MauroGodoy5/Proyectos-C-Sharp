<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="parcial1_DAI5.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/altaservicio.aspx">Alta servicios</asp:LinkButton>
            <br />
            <asp:LinkButton ID="LinkButton2" runat="server" PostBackUrl="~/consultaservicio.aspx">Consulta de servicios</asp:LinkButton>
            <br />
            <asp:LinkButton ID="LinkButton3" runat="server" PostBackUrl="~/bajaservicio.aspx">Baja de servicios</asp:LinkButton>
            <br />
            <asp:LinkButton ID="LinkButton4" runat="server" PostBackUrl="~/modificacionservicio.aspx">Modificacion de servicios</asp:LinkButton>
            <br />
            <asp:LinkButton ID="LinkButton5" runat="server" PostBackUrl="~/consultatiposervicio.aspx">Consulta de tipos de servicios</asp:LinkButton>
            <br />
            <asp:LinkButton ID="LinkButton6" runat="server" PostBackUrl="~/consultarubros.aspx">Consulta de rubros</asp:LinkButton>
        </div>
    </form>
</body>
</html>
