<%@ Page Title="" Language="C#" MasterPageFile="~/Student/Student.Master" AutoEventWireup="true" CodeBehind="Dashboard.aspx.cs" Inherits="StudentManagmentSystem.Student.Dashboard" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />

    
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=(LocalDb)\MSSQLLocalDB;Initial Catalog=StudentInfo;Integrated Security=True" ProviderName="System.Data.SqlClient" SelectCommand="SELECT * FROM [Stu] WHERE ([password] = @password)">
        <SelectParameters>
            <asp:SessionParameter Name="password" SessionField="Stud" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
            <asp:BoundField DataField="Firstname" HeaderText="Firstname" SortExpression="Firstname" />
            <asp:BoundField DataField="Lastname" HeaderText="Lastname" SortExpression="Lastname" />
            <asp:BoundField DataField="std" HeaderText="std" SortExpression="std" />
            <asp:BoundField DataField="Rollno" HeaderText="Rollno" SortExpression="Rollno" />
            <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
            <asp:BoundField DataField="address" HeaderText="address" SortExpression="address" />
             <asp:TemplateField HeaderText="image" SortExpression="image">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("image") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Image ID="Image1" runat="server" Height="200px" ImageUrl='<%# Eval("image") %>' Width="200px" />
                </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="phone" HeaderText="phone" SortExpression="phone" />
            <asp:BoundField DataField="dob" HeaderText="dob" SortExpression="dob" />
            <asp:BoundField DataField="password" HeaderText="password" SortExpression="password" />
        </Columns>
    </asp:GridView>

    
</asp:Content>
