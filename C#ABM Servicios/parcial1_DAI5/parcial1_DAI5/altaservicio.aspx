<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="altaservicio.aspx.cs" Inherits="parcial1_DAI5.altaservicio" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Text="Ingrese descripcion"></asp:Label> <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <br />
             <asp:Label ID="Label2" runat="server" Text="Ingrese Tipo de servicio"></asp:Label><asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSourcetiposervicio" DataTextField="desc_tipo_serv" DataValueField="cod_tipo_serv"></asp:DropDownList>
           <br />
             <asp:Label ID="Label3" runat="server" Text="Ingrese rubro"></asp:Label><asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSourcerubros" DataTextField="desc_rubro" DataValueField="cod_rubro"></asp:DropDownList>
            <br />
            <asp:Button ID="Button1" runat="server" Text="Cargar Servicio" OnClick="Button1_Click" /> <asp:Label ID="resultado" runat="server" Text="..."></asp:Label>
            <br />
            <asp:SqlDataSource ID="SqlDataSourcerubros" runat="server" ConnectionString="Data Source=DESKTOP-7F1QK8N;Initial Catalog=administracion;Integrated Security=True" SelectCommand="select cod_rubro,desc_rubro from rubros2"></asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSourcetiposervicio" runat="server" ConnectionString="Data Source=DESKTOP-7F1QK8N;Initial Catalog=administracion;Integrated Security=True" ProviderName="System.Data.SqlClient" SelectCommand="SELECT cod_tipo_serv, desc_tipo_serv FROM tipos_servicio"></asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSourceservicios" runat="server" ConnectionString="Data Source=DESKTOP-7F1QK8N;Initial Catalog=administracion;Integrated Security=True" InsertCommand="INSERT INTO servicios(desc_servicio, tipo_servicio, rubro) VALUES (@desc_servicio, @tipo_servicio, @rubro)" ProviderName="System.Data.SqlClient">
                <InsertParameters>
                    <asp:Parameter Name="desc_servicio" />
                    <asp:Parameter Name="tipo_servicio" />
                    <asp:Parameter Name="rubro" />
                </InsertParameters>
            </asp:SqlDataSource>
            <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/WebForm1.aspx">retornar</asp:LinkButton>
           

        </div>
    </form>
</body>
</html>
