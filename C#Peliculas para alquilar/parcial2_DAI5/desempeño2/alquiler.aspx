<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="alquiler.aspx.cs" Inherits="desempeño2.alquiler" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/altaalquiler.aspx">Alquiler de Peliculas</asp:LinkButton>
    <br />
    <asp:LinkButton ID="LinkButton2" runat="server" PostBackUrl="~/consultaalquiler.aspx">Peliculas Alquiladas</asp:LinkButton>

</asp:Content>
