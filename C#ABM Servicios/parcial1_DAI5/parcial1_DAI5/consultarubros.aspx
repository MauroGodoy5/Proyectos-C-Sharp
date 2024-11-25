<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="consultarubros.aspx.cs" Inherits="parcial1_DAI5.consultarubros" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:GridView ID="GridView1" runat="server" Caption="RUBROS" AutoGenerateColumns="False" DataKeyNames="cod_rubro" DataSourceID="SqlDataSource1" EmptyDataText="No hay registros de datos para mostrar." AllowPaging="True" AllowSorting="True" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2">
                <Columns>
                    <asp:BoundField DataField="cod_rubro" HeaderText="cod_rubro" ReadOnly="True" SortExpression="cod_rubro" />
                    <asp:BoundField DataField="desc_rubro" HeaderText="desc_rubro" SortExpression="desc_rubro" />
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
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:administracionConnectionString1 %>" DeleteCommand="DELETE FROM [rubros2] WHERE [cod_rubro] = @cod_rubro" InsertCommand="INSERT INTO [rubros2] ([desc_rubro]) VALUES (@desc_rubro)" ProviderName="<%$ ConnectionStrings:administracionConnectionString1.ProviderName %>" SelectCommand="SELECT [cod_rubro], [desc_rubro] FROM [rubros2]" UpdateCommand="UPDATE [rubros2] SET [desc_rubro] = @desc_rubro WHERE [cod_rubro] = @cod_rubro">
                <DeleteParameters>
                    <asp:Parameter Name="cod_rubro" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="desc_rubro" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="desc_rubro" Type="String" />
                    <asp:Parameter Name="cod_rubro" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <br />
            <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/WebForm1.aspx">retornar</asp:LinkButton>
        </div>
    </form>
</body>
</html>
