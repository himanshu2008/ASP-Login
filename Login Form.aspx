<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Login Form.aspx.cs" Inherits="Student_Login.insert" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            height: 276px;
        }
        .auto-style2 {
            width: 611px;
        }
        .auto-style3 {
            width: 100%;
            height: 89px;
        }
        .auto-style4 {
            width: 164px;
        }
        .auto-style5 {
            width: 349px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style1">
        <tr>
            <td class="auto-style2">
                <asp:ImageMap ID="ImageMap1" runat="server" Height="248px" Width="431px">
                </asp:ImageMap>
            </td>
            <td>
                <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
    </table>
    <table class="auto-style3">
        <tr>
            <td class="auto-style4">Username</td>
            <td class="auto-style5">
                <asp:TextBox ID="TextBox1" runat="server" Width="283px"></asp:TextBox>
            </td>
            <td>
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Sign In" Width="80px" />
            </td>
        </tr>
        <tr>
            <td class="auto-style4">Password</td>
            <td class="auto-style5">
                <asp:TextBox ID="TextBox2" runat="server" Width="278px"></asp:TextBox>
            </td>
            <td>
                <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Register" Width="78px" />
            </td>
        </tr>
    </table>
</asp:Content>
 