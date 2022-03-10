<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" Inherits="StudentManagmentSystem.Admin.HomePage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
       
        .auto-style9 {
           margin-left: 525px
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
   <br /> <br />
    <asp:Label ID="Label1" runat="server" Text="Total Students" CssClass="auto-style2" Font-Underline="True" Font-Bold="True" Font-Size="XX-Large" BorderColor="Black"   BackColor="Silver"></asp:Label> &nbsp;&nbsp;
   
    <asp:Label ID="Label2" runat="server" BackColor="Silver" BorderColor="Black" Font-Bold="True" Font-Size="XX-Large" Font-Underline="True" ></asp:Label>
</asp:Content>
