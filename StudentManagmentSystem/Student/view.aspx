<%@ Page Title="" Language="C#" MasterPageFile="~/Student/Student.Master" AutoEventWireup="true" CodeBehind="view.aspx.cs" Inherits="StudentManagmentSystem.Student.view" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style2 {
            margin-left: 501px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=(LocalDb)\MSSQLLocalDB;Initial Catalog=StudentInfo;Integrated Security=True" ProviderName="System.Data.SqlClient" SelectCommand="SELECT [std], [file] FROM [Material] WHERE ([std] = @std)">
        <SelectParameters>
            <asp:SessionParameter Name="std" SessionField="Stud1" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" CssClass="auto-style2" Height="339px" Width="373px">
        <Columns>
            <asp:BoundField DataField="std" HeaderText="std" SortExpression="std" />
            <asp:HyperLinkField DataNavigateUrlFields="file" HeaderText="File" Text="View and Download" />
        </Columns>
    </asp:GridView>

</asp:Content>
