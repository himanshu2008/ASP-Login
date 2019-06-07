<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="insert.aspx.cs" Inherits="Student_Login.insert1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 200px;
        }
        .auto-style3 {
            width: 95px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style1">
        <tr>
            <td class="auto-style2">
                <asp:Label ID="Label1" runat="server" Text="Roll Number"></asp:Label>
            </td>
            <td class="auto-style3">&nbsp;</td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" Width="204px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">
                <asp:Label ID="Label2" runat="server" Text="Name"></asp:Label>
            </td>
            <td class="auto-style3">&nbsp;</td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server" Width="204px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">
                <asp:Label ID="Label3" runat="server" Text="Class"></asp:Label>
            </td>
            <td class="auto-style3">&nbsp;</td>
            <td>
                <asp:TextBox ID="TextBox3" runat="server" Width="204px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">
                <asp:Label ID="Label4" runat="server" Text="Father Name"></asp:Label>
            </td>
            <td class="auto-style3">&nbsp;</td>
            <td>
                <asp:TextBox ID="TextBox4" runat="server" Width="204px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">
                <asp:Label ID="Label5" runat="server" Text="Mother Name"></asp:Label>
            </td>
            <td class="auto-style3">&nbsp;</td>
            <td>
                <asp:TextBox ID="TextBox5" runat="server" Width="204px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">
                <asp:Label ID="Label6" runat="server" Text="Fees "></asp:Label>
            </td>
            <td class="auto-style3">&nbsp;</td>
            <td>
                <asp:TextBox ID="TextBox6" runat="server" Width="204px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style3">
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Save" Width="92px" />
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
