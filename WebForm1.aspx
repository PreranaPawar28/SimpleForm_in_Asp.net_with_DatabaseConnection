<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="WebApplication1.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <style>
        #form1{display:inline-block;align-items:center;justify-content:center;background-color:lightpink;color:black;border:2px solid black;}
    </style>
    <title>Login Form</title>
</head>
<body>
    <div>
    <form id="form1" runat="server">
        <table>
            <tr>
                <td>Name:</td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>

                </td>
            </tr>
            <tr>
                <td>Password:</td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>

                </td>
            </tr>
            <tr>
                <td>Confirm Password:</td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>

                </td>
            </tr>
            <tr>
                <td>City:</td>
                <td>
                    <asp:DropDownList ID="DropDownList1" runat="server">
                        <asp:ListItem Text="Select City" Value="select" Selected></asp:ListItem>
                        <asp:ListItem Text="Mumbai" Value="Mumbai"></asp:ListItem>
                        <asp:ListItem Text="Pune" Value="Pune"></asp:ListItem>
                        <asp:ListItem Text="Mysore" Value="Mysore"></asp:ListItem>
                        <asp:ListItem Text="Chennai" Value="Chennai"></asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>Gender:</td>
                <td>
                    <asp:RadioButtonList ID="RadioButtonList1" runat="server">
                        <asp:ListItem>Male</asp:ListItem>
                        <asp:ListItem>Female</asp:ListItem>
                    </asp:RadioButtonList>

                </td>
            </tr>
            <tr>
                <td>Gmail:</td>
                <td>
                    <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="Button1" runat="server" Text="Login" OnClick="Button1_Click" />

                </td>
            </tr>
        </table>
    </form>
    </div>
</body>
</html>
