<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="peliculas.aspx.cs" Inherits="desempeño2.peliculas" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/altapelicula.aspx">Alta de Peliculas</asp:LinkButton>
    <br />
    <asp:LinkButton ID="LinkButton2" runat="server" PostBackUrl="~/bajapelicula.aspx">Baja de Peliculas</asp:LinkButton>
    <br />
    <asp:LinkButton ID="LinkButton3" runat="server" PostBackUrl="~/modificacionpelicula.aspx">Modificacion de Peliculas</asp:LinkButton>
    <br />
    <asp:LinkButton ID="LinkButton4" runat="server" PostBackUrl="~/consultapelicula.aspx">Consulta de Peliculas</asp:LinkButton>




</asp:Content>
