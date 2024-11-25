<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="consultatiposervicio.aspx.cs" Inherits="parcial1_DAI5.consultatiposervicio" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:GridView ID="GridView1" runat="server" Caption="TIPOS DE SERVICIOS" AutoGenerateColumns="False" DataKeyNames="cod_tipo_serv" DataSourceID="SqlDataSource1" EmptyDataText="No hay registros de datos para mostrar." AllowPaging="True" AllowSorting="True" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2">
                <Columns>
                    <asp:BoundField DataField="cod_tipo_serv" HeaderText="cod_tipo_serv" ReadOnly="True" SortExpression="cod_tipo_serv" />
                    <asp:BoundField DataField="desc_tipo_serv" HeaderText="desc_tipo_serv" SortExpression="desc_tipo_serv" />
                </Columns>
                <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#FFF1D4" />
                <SortedAscendingHeaderStyle BackColor="#B95C30" />
                <SortedDescendingCellStyle BackColor="#F1E5CE" />
                <SortedDescendingHeaderStyle BackColor="#93451F" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:administracionConnectionString1 %>" DeleteCommand="DELETE FROM [tipos_servicio] WHERE [cod_tipo_serv] = @cod_tipo_serv" InsertCommand="INSERT INTO [tipos_servicio] ([desc_tipo_serv]) VALUES (@desc_tipo_serv)" ProviderName="<%$ ConnectionStrings:administracionConnectionString1.ProviderName %>" SelectCommand="SELECT [cod_tipo_serv], [desc_tipo_serv] FROM [tipos_servicio]" UpdateCommand="UPDATE [tipos_servicio] SET [desc_tipo_serv] = @desc_tipo_serv WHERE [cod_tipo_serv] = @cod_tipo_serv">
                <DeleteParameters>
                    <asp:Parameter Name="cod_tipo_serv" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="desc_tipo_serv" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="desc_tipo_serv" Type="String" />
                    <asp:Parameter Name="cod_tipo_serv" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <br />
            <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/WebForm1.aspx">retornar</asp:LinkButton>
        </div>
    </form>
</body>
</html>
