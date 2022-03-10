<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="class12.aspx.cs" Inherits="StudentManagmentSystem.Admin.class12" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=(LocalDb)\MSSQLLocalDB;Initial Catalog=StudentInfo;Integrated Security=True" DeleteCommand="DELETE FROM [Stu] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Stu] ([Firstname], [Lastname], [std], [Rollno], [email], [address], [image], [phone], [dob], [password]) VALUES (@Firstname, @Lastname, @std, @Rollno, @email, @address, @image, @phone, @dob, @password)" ProviderName="System.Data.SqlClient" SelectCommand="SELECT * FROM [Stu] WHERE ([std] = @std)" UpdateCommand="UPDATE [Stu] SET [Firstname] = @Firstname, [Lastname] = @Lastname, [std] = @std, [Rollno] = @Rollno, [email] = @email, [address] = @address, [image] = @image, [phone] = @phone, [dob] = @dob, [password] = @password WHERE [Id] = @Id">
        <DeleteParameters>
            <asp:Parameter Name="Id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Firstname" Type="String" />
            <asp:Parameter Name="Lastname" Type="String" />
            <asp:Parameter Name="std" Type="String" />
            <asp:Parameter Name="Rollno" Type="String" />
            <asp:Parameter Name="email" Type="String" />
            <asp:Parameter Name="address" Type="String" />
            <asp:Parameter Name="image" Type="String" />
            <asp:Parameter Name="phone" Type="String" />
            <asp:Parameter Name="dob" Type="String" />
            <asp:Parameter Name="password" Type="String" />
        </InsertParameters>
        <SelectParameters>
            <asp:ControlParameter ControlID="GridView1" DefaultValue="class12" Name="std" PropertyName="SelectedValue" Type="String" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="Firstname" Type="String" />
            <asp:Parameter Name="Lastname" Type="String" />
            <asp:Parameter Name="std" Type="String" />
            <asp:Parameter Name="Rollno" Type="String" />
            <asp:Parameter Name="email" Type="String" />
            <asp:Parameter Name="address" Type="String" />
            <asp:Parameter Name="image" Type="String" />
            <asp:Parameter Name="phone" Type="String" />
            <asp:Parameter Name="dob" Type="String" />
            <asp:Parameter Name="password" Type="String" />
            <asp:Parameter Name="Id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
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
