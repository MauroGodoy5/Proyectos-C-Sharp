<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="modificacionservicio.aspx.cs" Inherits="parcial1_DAI5.modificacionservicio" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Text="Codigo del servicio a buscar:"></asp:Label> <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <br />
            <asp:SqlDataSource ID="SqlDataSourceservicio" runat="server" ConnectionString="Data Source=DESKTOP-7F1QK8N;Initial Catalog=administracion;Integrated Security=True" ProviderName="System.Data.SqlClient" SelectCommand="SELECT cod_servicio, desc_servicio, tipo_servicio, rubro FROM servicios WHERE (cod_servicio = @cod_servicio)" UpdateCommand="UPDATE servicios SET desc_servicio = @desc_servicio, tipo_servicio = @tipo_servicio, rubro = @rubro WHERE (cod_servicio = @cod_servicio)">
                <SelectParameters>
                    <asp:Parameter Name="cod_servicio" />
                </SelectParameters>
                <UpdateParameters>
                    <asp:Parameter Name="desc_servicio" />
                    <asp:Parameter Name="tipo_servicio" />
                    <asp:Parameter Name="rubro" />
                    <asp:Parameter Name="cod_servicio" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSourcetiposervicio" runat="server" ConnectionString="Data Source=DESKTOP-7F1QK8N;Initial Catalog=administracion;Integrated Security=True" ProviderName="System.Data.SqlClient" SelectCommand="select * from tipos_servicio"></asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSourcerubro" runat="server" ConnectionString="Data Source=DESKTOP-7F1QK8N;Initial Catalog=administracion;Integrated Security=True" ProviderName="System.Data.SqlClient" SelectCommand="select * from rubros2"></asp:SqlDataSource>
            <asp:Button ID="Button1" runat="server" Text="Consular Servicio" OnClick="Button1_Click" /> <asp:Label ID="resultado1" runat="server" Text="..."></asp:Label>
             <br />
            <asp:Label ID="Label2" runat="server" Text="Descripcion:"></asp:Label> <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            <br />
            <asp:Label ID="Label3" runat="server" Text="Tipo de Servicio:"></asp:Label> <asp:DropDownList ID="DropDownList1" runat="server"></asp:DropDownList>
            <br />
            <asp:Label ID="Label4" runat="server" Text="Rubro:"></asp:Label> <asp:DropDownList ID="DropDownList2" runat="server"></asp:DropDownList>
            <br />
            <asp:Button ID="Button2" runat="server" Text="Modificar Servicio" OnClick="Button2_Click" /> <asp:Label ID="resultado2" runat="server" Text="..."></asp:Label>
             <br />
            <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/WebForm1.aspx">retornar</asp:LinkButton>
        </div>
    </form>
</body>
</html>
