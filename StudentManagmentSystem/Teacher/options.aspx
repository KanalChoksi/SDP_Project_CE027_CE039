<%@ Page Title="" Language="C#" MasterPageFile="~/Teacher/Site1.Master" AutoEventWireup="true" CodeBehind="options.aspx.cs" Inherits="StudentManagmentSystem.Teacher.options" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Button ID="Button1" runat="server" Text="Class 10" CssClass="auto-style2" Height="48px"  PostBackUrl="~/Teacher/files_10.aspx" />&nbsp;&nbsp;
    <asp:Button ID="Button2" runat="server" Text="Class 11" Height="48px" PostBackUrl="~/Teacher/files_11.aspx" />&nbsp;&nbsp;

    <asp:Button ID="Button3" runat="server" Text="Class 12"  Height="48px" PostBackUrl="~/Teacher/files_12.aspx" /></br></br></br>
</asp:Content>
