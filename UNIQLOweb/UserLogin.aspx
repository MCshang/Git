<%@ Page Language="C#" AutoEventWireup="true" CodeFile="UserLogin.aspx.cs" Inherits="UserLogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">

        .auto-style1 {
            width: 100%;
            height: 462px;
            margin-bottom: 0px;
        }
        .auto-style4 {
            height: 71px;
            width: 470px;
        }
        .auto-style13 {
            height: 71px;
            width: 97px;
        }
        .auto-style2 {
            height: 71px;
        }
        .auto-style5 {
            height: 49px;
            width: 470px;
        }
        .auto-style14 {
            height: 49px;
            width: 97px;
        }
        .auto-style3 {
            height: 49px;
        }
        .auto-style9 {
            width: 470px;
            height: 52px;
        }
        .auto-style15 {
            height: 52px;
            width: 97px;
        }
        .auto-style10 {
            height: 52px;
        }
        .auto-style21 {
            height: 54px;
            width: 470px;
        }
        .auto-style22 {
            height: 54px;
        }
        .auto-style23 {
            height: 54px;
        }
        .auto-style24 {
            height: 61px;
            width: 470px;
        }
        .auto-style25 {
            height: 61px;
            width: 97px;
        }
        .auto-style26 {
            height: 61px;
        }
        </style>
</head>
<body style="height: 563px">
    <form id="form2" runat="server">
        <div>
        </div>
        <table class="auto-style1">
            <tr>
                <td class="auto-style4">
                    <asp:Image ID="Image1" runat="server" Height="150px" ImageUrl="~/UNIQLO_logo.png" Width="150px" />
                </td>
                <td class="auto-style13">
                    &nbsp;</td>
                <td class="auto-style2"></td>
                <td class="auto-style2"></td>
            </tr>
            <tr>
                <td class="auto-style5"></td>
                <td class="auto-style14">
                    <asp:Label ID="Label1" runat="server" Text="用户账号"></asp:Label>
                </td>
                <td class="auto-style3">
                    <asp:TextBox ID="TB_username" runat="server" Font-Size="Larger"></asp:TextBox>
                </td>
                <td class="auto-style3"></td>
            </tr>
            <tr>
                <td class="auto-style9"></td>
                <td class="auto-style15">
                    <asp:Label ID="Label2" runat="server" Text="密码"></asp:Label>
                </td>
                <td class="auto-style10">
                    <asp:TextBox ID="TB_password" runat="server" Font-Size="Larger" TextMode="Password"></asp:TextBox>
                </td>
                <td class="auto-style10"></td>
            </tr>
            <tr>
                <td class="auto-style24"></td>
                <td class="auto-style25">
                    <asp:Button ID="B_login" runat="server" OnClick="B_login_Click" Text="登 录" Height="32px" Width="69px" />
                </td>
                <td class="auto-style26">
                    <asp:Button ID="B_cpwd" runat="server" Height="32px" OnClick="B_cpwd_Click" Text="修改密码" />
                </td>
                <td class="auto-style26"></td>
            </tr>
            <tr>
                <td class="auto-style21"></td>
                <td class="auto-style22" colspan="2">
                    <asp:Label ID="L_show" runat="server"></asp:Label>
                </td>
                <td class="auto-style23"></td>
            </tr>
        </table>
    </form>
</body>
</html>
