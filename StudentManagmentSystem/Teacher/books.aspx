<%@ Page Title="" Language="C#" MasterPageFile="~/Teacher/Site1.Master" AutoEventWireup="true" CodeBehind="books.aspx.cs" Inherits="StudentManagmentSystem.Teacher.books" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style3 {
            width: 100%;
        }
        .auto-style4 {
            width: 161px;
        }
        .auto-style5 {
            width: 161px;
            height: 60px;
        }
        .auto-style6 {
            height: 60px;
        }
    </style>


</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     </br></br>
    <table border="1" class="auto-style3">
        <tr>
            <td class="auto-style4">Standerd</td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style5">File</td>
            <td class="auto-style6">
                <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
    <asp:FileUpload ID="Taxi_image" runat="server" Height="29px" /></td>
            
        </tr>
        <tr>
            <td class="auto-style4">&nbsp;</td>
            <td>
    <asp:Button ID="Button1" runat="server" Text="Add" OnClick="Button1_Click" />
            </td>
        </tr>
    </table>
    </br></br>
    <asp:Button ID="Button2" runat="server" Text="Show Materials" PostBackUrl="~/Teacher/options.aspx" />
</asp:Content>
