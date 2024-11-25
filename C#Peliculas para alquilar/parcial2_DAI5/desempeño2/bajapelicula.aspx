<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="bajapelicula.aspx.cs" Inherits="desempeño2.bajapelicula" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="id_pelicula" DataSourceID="SqlDataSourcepeliculas">
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" />
                    <asp:BoundField DataField="id_pelicula" HeaderText="id_pelicula" InsertVisible="False" ReadOnly="True" SortExpression="id_pelicula" />
                    <asp:BoundField DataField="nombre_pelicula" HeaderText="nombre_pelicula" SortExpression="nombre_pelicula" />
                    <asp:BoundField DataField="web_pelicula" HeaderText="web_pelicula" SortExpression="web_pelicula" />
                    <asp:BoundField DataField="descripcion" HeaderText="descripcion" SortExpression="descripcion" />
                    <asp:BoundField DataField="id_genero" HeaderText="id_genero" SortExpression="id_genero" />
                    <asp:BoundField DataField="anio" HeaderText="anio" SortExpression="anio" />
                    <asp:BoundField DataField="archivo" HeaderText="archivo" SortExpression="archivo" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSourcepeliculas" runat="server" ConnectionString="<%$ ConnectionStrings:peliculasConnectionString %>" SelectCommand="SELECT * FROM [PELICULAS]" DeleteCommand="DELETE FROM PELICULAS WHERE (id_pelicula = @id_pelicula)">
                <DeleteParameters>
                    <asp:Parameter Name="id_pelicula" />
                </DeleteParameters>
            </asp:SqlDataSource>
        </div>
        <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/peliculas.aspx">Retornar</asp:LinkButton>
    </form>
</body>
</html>
