<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="AddTeacher.aspx.cs" Inherits="StudentManagmentSystem.Admin.AddTeacher" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <style type="text/css">
        .auto-style2 {
            width: 43%;
            margin-top: 37px;
            height: 271px;
        }
        .auto-style3 {
            width: 690px;
            margin-left: 356px;
        }
        .auto-style4 {
            width: 297px;
        }
        .auto-style5 {
            width: 297px;
            height: 29px;
        }
        .auto-style6 {
            height: 29px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <br />
    <h3 class="auto-style3"> &nbsp;</h3>
    <h3 class="auto-style3"> ADD NEW TEACHER</h3>
        <table class="auto-style2" style="background-color: #CCFFFF">
        <tr>
            <td class="auto-style5">First Name</td>
            <td class="auto-style6">
                <asp:TextBox ID="fname" runat="server"></asp:TextBox>
            </td>
            <td class="auto-style6">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style4">Last Name</td>
            <td>
                <asp:TextBox ID="lname" runat="server"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
       
           
        <tr>
            <td class="auto-style4">Email</td>
            <td>
                <asp:TextBox ID="email" runat="server" ></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
            
            
            <tr>
            <td class="auto-style4">Address</td>
            <td>
                <asp:TextBox ID="address" runat="server" TextMode="MultiLine"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>

      
             <tr>
            <td class="auto-style4">Password</td>
            <td>
                <asp:TextBox ID="pwd" runat="server" ></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr> 
        
        <tr>
            <td class="auto-style4"  >&nbsp;</td>
            <td>
                <asp:Button ID="add" runat="server" Text="Add" OnClientClick="alert('teacher added successfully and mail sent')"  OnClick="add_Click"  /></td>
            <td>
                &nbsp;</td>
        </tr>
            <tr>
                <asp:Label ID="Label1" runat="server" Text=""></asp:Label>

            </tr>
        </table>
    <asp:Button ID="Button1" runat="server" Text="Show Teachers" PostBackUrl="~/Admin/show teacher.aspx" />

</asp:Content>
