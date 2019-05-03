<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ModifyPWD.aspx.cs" Inherits="ChangePWD" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style4 {
            width: 480px;
            height: 44px;
        }
        .auto-style5 {
            width: 164px;
            height: 44px;
        }
        .auto-style6 {
            height: 44px;
        }
        .auto-style10 {
            width: 480px;
            height: 46px;
        }
        .auto-style11 {
            width: 164px;
            height: 46px;
        }
        .auto-style12 {
            height: 46px;
        }
        .auto-style14 {
            height: 44px;
            width: 230px;
        }
        .auto-style15 {
            height: 46px;
            width: 230px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td class="auto-style10"></td>
                <td class="auto-style11">登录账号：</td>
                <td class="auto-style15">
                    <asp:TextBox ID="TB_uid" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style12"></td>
            </tr>
            <tr>
                <td class="auto-style4"></td>
                <td class="auto-style5">原密码：</td>
                <td class="auto-style14">
                    <asp:TextBox ID="TB_pwd" runat="server" TextMode="Password"></asp:TextBox>
                </td>
                <td class="auto-style6">
                    <asp:Button ID="B_ck" runat="server" OnClick="B_ck_Click" Text="验证" />
                </td>
            </tr>
            <tr>
                <td class="auto-style10"></td>
                <td class="auto-style11">新密码：</td>
                <td class="auto-style15">
                    <asp:TextBox ID="TB_npwd" runat="server" TextMode="Password"></asp:TextBox>
                </td>
                <td class="auto-style12">
                    <asp:Button ID="B_cpwd" runat="server" OnClick="B_cpwd_Click" Text="修改密码" />
                </td>
            </tr>
            <tr>
                <td class="auto-style10">&nbsp;</td>
                <td class="auto-style11">再次输入新密码：</td>
                <td class="auto-style15">
                    <asp:TextBox ID="TB_npwd2" runat="server" TextMode="Password" ></asp:TextBox>
                </td>
                <td class="auto-style12">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style10">&nbsp;</td>
                <td class="auto-style11">
                    <asp:Button ID="B_close" runat="server" OnClick="B_close_Click" Text="注 销" />
                </td>
                <td class="auto-style15">
                    <asp:Label ID="L_show" runat="server"></asp:Label>
                </td>
                <td class="auto-style12">
                    <asp:TextBox ID="TB_temp" runat="server" Visible="False"></asp:TextBox>
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
