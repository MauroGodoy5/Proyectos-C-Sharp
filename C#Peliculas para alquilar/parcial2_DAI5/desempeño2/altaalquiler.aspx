<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="altaalquiler.aspx.cs" Inherits="desempeño2.altaalquiler" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Text="Codigo de la pelicula a buscar: "></asp:Label><asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <br />
            <asp:Button ID="Button1" runat="server" Text="Buscar Pelicula" OnClick="Button1_Click" /> <asp:Label ID="resultado" runat="server" Text="..."></asp:Label>
            <asp:SqlDataSource ID="SqlDataSourcepelicula" runat="server" ConnectionString="<%$ ConnectionStrings:peliculasConnectionString %>" SelectCommand="SELECT id_pelicula, nombre_pelicula, web_pelicula, descripcion, id_genero, anio, archivo FROM PELICULAS WHERE (id_pelicula = @Id_pelicula)">
                <SelectParameters>
                    <asp:Parameter Name="Id_pelicula" />
                </SelectParameters>
            </asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSourcegenero" runat="server" ConnectionString="<%$ ConnectionStrings:peliculasConnectionString %>" SelectCommand="SELECT * FROM [GENEROS]"></asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSourcealquiler" runat="server" ConnectionString="<%$ ConnectionStrings:peliculasConnectionString %>" SelectCommand="SELECT id_pelicula, fecha_alquiler FROM ALQUILER WHERE (id_pelicula = @Id_pelicula)" InsertCommand="INSERT INTO ALQUILER(id_pelicula, fecha_alquiler) VALUES (@Id_pelicula, @fecha_alquiler)">
                <InsertParameters>
                    <asp:Parameter Name="Id_pelicula" />
                    <asp:Parameter Name="fecha_alquiler" />
                </InsertParameters>
                <SelectParameters>
                    <asp:Parameter Name="Id_pelicula" />
                </SelectParameters>
            </asp:SqlDataSource>
        </div>
        <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/alquiler.aspx">Retornar</asp:LinkButton>
    </form>
</body>
</html>
