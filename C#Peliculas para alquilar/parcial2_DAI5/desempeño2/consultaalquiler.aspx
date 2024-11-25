<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="consultaalquiler.aspx.cs" Inherits="desempeño2.consultaalquiler" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="id_alquiler" DataSourceID="SqlDataSourcealquiler" AllowSorting="True">
                <Columns>
                    <asp:BoundField DataField="id_alquiler" HeaderText="id_alquiler" InsertVisible="False" ReadOnly="True" SortExpression="id_alquiler" />
                    <asp:BoundField DataField="nombre_pelicula" HeaderText="Nombre de la pelicula" SortExpression="nombre_pelicula" />
                    <asp:BoundField DataField="fecha_alquiler" HeaderText="Alquiler" SortExpression="fecha_alquiler" />
                    <asp:BoundField HeaderText="Genero" DataField="nombre_genero" SortExpression="nombre_genero" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSourcealquiler" runat="server" ConnectionString="<%$ ConnectionStrings:peliculasConnectionString %>" SelectCommand="SELECT  P.id_pelicula, A.id_alquiler, P.nombre_pelicula, A.fecha_alquiler, G.nombre_genero,G.Id_genero  FROM ALQUILER AS A INNER JOIN PELICULAS AS P ON P.id_pelicula = A.id_pelicula
INNER JOIN Generos G ON P.Id_genero = G.Id_genero"></asp:SqlDataSource>
            
        </div>
        <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/alquiler.aspx">Retornar</asp:LinkButton>
    </form>
</body>
</html>
