<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="altagenero.aspx.cs" Inherits="desempeño2.altagenero" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Text="Ingresar el Genero de la Pelicula: "></asp:Label><asp:TextBox ID="TextBox1" runat="server"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="TextBox1">Debe Ingresar un Genero!</asp:RequiredFieldValidator>
            <br />
            <asp:Button ID="Button1" runat="server" Text="Cargar Genero" OnClick="Button1_Click" /> <asp:Label ID="resultado" runat="server" Text="..."></asp:Label>
            <asp:SqlDataSource ID="SqlDataSourcegeneros" runat="server" ConnectionString="<%$ ConnectionStrings:peliculasConnectionString %>" InsertCommand="INSERT INTO GENEROS(nombre_genero) VALUES (@nombre_genero)" SelectCommand="SELECT * FROM [GENEROS]">
                <InsertParameters>
                    <asp:Parameter Name="nombre_genero" />
                </InsertParameters>
            </asp:SqlDataSource>
        </div>
        <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/generos.aspx" CausesValidation="False">Retornar</asp:LinkButton>
    </form>
</body>
</html>
