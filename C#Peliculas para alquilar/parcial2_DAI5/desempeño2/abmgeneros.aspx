<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="abmgeneros.aspx.cs" Inherits="desempeño2.abmgeneros" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="id_genero" DataSourceID="SqlDataSourcegeneros">
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
                    <asp:BoundField DataField="id_genero" HeaderText="id_genero" InsertVisible="False" ReadOnly="True" SortExpression="id_genero" />
                    <asp:BoundField DataField="nombre_genero" HeaderText="nombre_genero" SortExpression="nombre_genero" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSourcegeneros" runat="server" ConnectionString="<%$ ConnectionStrings:peliculasConnectionString %>" InsertCommand="INSERT INTO GENEROS(id_genero, nombre_genero) VALUES (@Id_genero, @nombre_genero)" SelectCommand="SELECT * FROM [GENEROS]" UpdateCommand="UPDATE GENEROS SET nombre_genero = @nombre_genero WHERE ([Id_genero ] = @Id_genero)" DeleteCommand="DELETE FROM GENEROS WHERE (id_genero = @Id_genero)">
                <DeleteParameters>
                    <asp:Parameter Name="Id_genero" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="Id_genero" />
                    <asp:Parameter Name="nombre_genero" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="nombre_genero" />
                    <asp:Parameter Name="Id_genero" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </div>
        <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/generos.aspx">Retornar</asp:LinkButton>
    </form>
</body>
</html>
