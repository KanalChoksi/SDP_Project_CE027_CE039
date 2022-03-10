<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="StudentManagmentSystem.Teacher.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
      <style type="text/css">
        .auto-style1 {
            width: 58%;
            margin-right: 130px;
            margin-top: 43px;
            height: 123px;
        }
        .auto-style6 {
            width: 208px;
            height: 50px;
        }
        .auto-style7 {
            height: 50px;
            width: 653px;
        }
        .auto-style8 {
            width: 208px;
            height: 43px;
        }
        .auto-style9 {
            height: 43px;
            width: 653px;
        }
        .auto-style10 {
            width: 208px;
            height: 52px;
        }
        .auto-style11 {
            height: 52px;
            width: 653px;
        }
        .auto-style12 {
            width: 208px;
            height: 53px;
        }
        .auto-style13 {
            height: 53px;
            width: 653px;
        }
        .auto-style14 {
            height: 50px;
            width: 717px;
        }
        .auto-style15 {
            height: 53px;
            width: 717px;
        }
        .auto-style16 {
            height: 52px;
            width: 717px;
        }
        .auto-style17 {
            height: 43px;
            width: 717px;
        }
    </style>
</head>
<body style="margin-left: 568px; margin-top: 127px">
    <form id="form1" runat="server">
          <table class="auto-style1" margine-left="10px">
            <tr>
                <td class="auto-style6" style="color: #FFFFFF; font-size: 40px; background-color: #000000;">
                    Login</td>
                <td class="auto-style7" style="background-color: #FFFFFF"></td>
                <td class="auto-style14" style="background-color: #FFFFFF">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style12">Username</td>
                <td class="auto-style13">
                    <asp:TextBox ID="Username1" runat="server"></asp:TextBox>

                </td>
                <td class="auto-style15">
                   
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please Enter Username" ControlToValidate="Username1" Font-Bold="True" ForeColor="Red"></asp:RequiredFieldValidator>
                   
                </td>
            </tr>
            <tr>
                <td class="auto-style10">Password</td>
                <td class="auto-style11">
                    <asp:TextBox ID="Password1" runat="server" TextMode="Password"></asp:TextBox>

                </td>
                <td class="auto-style16">
                    
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Please Enter Password" ControlToValidate="Password1" Font-Bold="True" ForeColor="Red"></asp:RequiredFieldValidator>
                    
                </td>
            </tr>
            <tr>
                <td class="auto-style8">&nbsp;</td>
                <td class="auto-style9">
                    <asp:Button ID="Login1" runat="server" Text="Login" OnClick="Login1_Click" />
                </td>
                <td class="auto-style17">
                    &nbsp;</td>
            </tr>
        </table>
        
        <asp:Label ID="Label1" runat="server" ForeColor="Red"></asp:Label>
        
    </form>
</body>
</html>
