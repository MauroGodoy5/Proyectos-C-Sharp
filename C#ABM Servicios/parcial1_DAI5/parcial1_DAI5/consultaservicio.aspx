<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="consultaservicio.aspx.cs" Inherits="parcial1_DAI5.consultaservicio" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            
            <asp:GridView ID="GridView1" runat="server" caption="SERVICIOS" AutoGenerateColumns="False" DataKeyNames="cod_servicio" DataSourceID="SqlDataSource1" EmptyDataText="No hay registros de datos para mostrar." AllowPaging="True" AllowSorting="True" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2">
                <Columns>
                    <asp:BoundField DataField="cod_servicio" HeaderText="cod_servicio" ReadOnly="True" SortExpression="cod_servicio" />
                    <asp:BoundField DataField="desc_servicio" HeaderText="desc_servicio" SortExpression="desc_servicio" />
                    <asp:BoundField DataField="tipo_servicio" HeaderText="tipo_servicio" SortExpression="tipo_servicio" />
                    <asp:BoundField DataField="rubro" HeaderText="rubro" SortExpression="rubro" />
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
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:administracionConnectionString1 %>" DeleteCommand="DELETE FROM [servicios] WHERE [cod_servicio] = @cod_servicio" InsertCommand="INSERT INTO [servicios] ([desc_servicio], [tipo_servicio], [rubro]) VALUES (@desc_servicio, @tipo_servicio, @rubro)" ProviderName="<%$ ConnectionStrings:administracionConnectionString1.ProviderName %>" SelectCommand="SELECT [cod_servicio], [desc_servicio], [tipo_servicio], [rubro] FROM [servicios]" UpdateCommand="UPDATE [servicios] SET [desc_servicio] = @desc_servicio, [tipo_servicio] = @tipo_servicio, [rubro] = @rubro WHERE [cod_servicio] = @cod_servicio">
                <DeleteParameters>
                    <asp:Parameter Name="cod_servicio" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="desc_servicio" Type="String" />
                    <asp:Parameter Name="tipo_servicio" Type="Int32" />
                    <asp:Parameter Name="rubro" Type="Int32" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="desc_servicio" Type="String" />
                    <asp:Parameter Name="tipo_servicio" Type="Int32" />
                    <asp:Parameter Name="rubro" Type="Int32" />
                    <asp:Parameter Name="cod_servicio" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <br />
            <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/WebForm1.aspx">retornar</asp:LinkButton>
        </div>
    </form>
</body>
</html>
