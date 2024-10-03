<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="index.aspx.vb" Inherits="Data_Insert.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
           Name :<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <br />
            Last :<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            <br />
            Mobile :<asp:TextBox ID="TextBox3" runat="server" TextMode="Number"></asp:TextBox>
            <br />
            <asp:Button ID="Button1" runat="server" Text="submit" />

            <br />
            <br />
            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>

            <br />
            <br />

            <asp:LinkButton ID="LinkButton1" runat="server">Show Data</asp:LinkButton>
            <br />
            <br />
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="name" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:BoundField DataField="name" HeaderText="name" ReadOnly="True" SortExpression="name" />
                    <asp:BoundField DataField="lname" HeaderText="lname" SortExpression="lname" />
                    <asp:BoundField DataField="mobile" HeaderText="mobile" SortExpression="mobile" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [users]"></asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
