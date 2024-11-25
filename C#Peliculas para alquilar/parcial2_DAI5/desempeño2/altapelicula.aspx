<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="altapelicula.aspx.cs" Inherits="desempeño2.altapelicula" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
             <asp:Label ID="Label1" runat="server" Text="Nombre de la Pelicula: "></asp:Label> <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="TextBox1">Debe Ingresar un Nombre!</asp:RequiredFieldValidator>
            <br />
             <asp:Label ID="Label2" runat="server" Text="Web de la Pelicula: "></asp:Label> <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox><asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="RegularExpressionValidator" ControlToValidate="TextBox2" Text="Debe Ingresar una URL!" ValidationExpression="http(s)?://([\w-]+\.)+[\w-]+(/[\w- ./?%&amp;=]*)?">Debe Ingresar una URL!</asp:RegularExpressionValidator>
            <br />
             <asp:Label ID="Label3" runat="server" Text="Descripcion: "></asp:Label> <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox> <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="TextBox3"> Debe Ingresar una Descripcion!</asp:RequiredFieldValidator>
            <br />
            <asp:Label ID="Label7" runat="server" Text="Genero: "></asp:Label><asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSourcegeneros" DataTextField="nombre_genero" DataValueField="id_genero"></asp:DropDownList>
            <br />
             <asp:Label ID="Label4" runat="server" Text="Año de la Pelicula: "></asp:Label> <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox><asp:RangeValidator ID="RangeValidator1" runat="server" ErrorMessage="RangeValidator" ControlToValidate="TextBox4" MaximumValue="10000" MinimumValue="1000" Type="Integer">El dato debe ser un numero de no mas de 4 digitos!</asp:RangeValidator>
            <br />
             <asp:Label ID="Label5" runat="server" Text="Foto de la Pelicula: "></asp:Label> <asp:FileUpload ID="FileUpload1" runat="server" /> <asp:Label ID="resultadofoto" runat="server" Text="..."></asp:Label> <asp:Label ID="nombrearchivo" runat="server" Text="..."></asp:Label>
            <br />
            <asp:Button ID="Button1" runat="server" Text="Registrar" OnClick="Button1_Click" /> <asp:Label ID="resultado" runat="server" Text="...">
                <br /> 
                <br /> 
                </asp:Label> <asp:Label ID="cookie" runat="server" Text="..."></asp:Label>
            
            
            <asp:SqlDataSource ID="SqlDataSourcepeliculas" runat="server" ConnectionString="<%$ ConnectionStrings:peliculasConnectionString %>" InsertCommand="INSERT INTO PELICULAS(nombre_pelicula, web_pelicula, descripcion, id_genero, anio, archivo) VALUES (@nombre_pelicula, @web_pelicula, @descripcion, @Id_genero, @anio, @archivo)" ProviderName="<%$ ConnectionStrings:peliculasConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [PELICULAS]">
                <InsertParameters>
                    <asp:Parameter Name="nombre_pelicula" />
                    <asp:Parameter Name="web_pelicula" />
                    <asp:Parameter Name="descripcion" />
                    <asp:Parameter Name="Id_genero" />
                    <asp:Parameter Name="anio" />
                    <asp:Parameter Name="archivo" />
                </InsertParameters>
             </asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSourcegeneros" runat="server" ConnectionString="<%$ ConnectionStrings:peliculasConnectionString %>" SelectCommand="SELECT * FROM [GENEROS]"></asp:SqlDataSource>


            <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/peliculas.aspx" CausesValidation="False">Retornar</asp:LinkButton>
        </div>
        
    </form>
</body>
</html>
