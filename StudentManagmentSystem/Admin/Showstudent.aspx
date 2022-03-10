<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="Showstudent.aspx.cs" Inherits="StudentManagmentSystem.Admin.Showstudent" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style2 {
            margin-left: 525px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <asp:Button ID="Button1" runat="server" Text="Class 10" CssClass="auto-style2" Height="48px"  PostBackUrl="~/Admin/class10.aspx" />&nbsp;&nbsp;
    <asp:Button ID="Button2" runat="server" Text="Class 11" Height="48px" PostBackUrl="~/Admin/class11.aspx" />&nbsp;&nbsp;

    <asp:Button ID="Button3" runat="server" Text="Class 12"  Height="48px" PostBackUrl="~/Admin/class12.aspx" /></br></br></br>



   

</asp:Content>
