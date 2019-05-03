<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AddGoodPage.aspx.cs" Inherits="Stockpages_StockAddpage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">

        .auto-style1 {
            width: 100%;
        }
        .auto-style3 {
            height: 57px;
            width: 398px;
        }
        .auto-style15 {
            height: 57px;
            width: 135px;
        }
        .auto-style2 {
            height: 57px;
        }
        .auto-style7 {
            width: 398px;
            height: 53px;
        }
        .auto-style16 {
            width: 135px;
            height: 53px;
        }
        .auto-style8 {
            height: 53px;
        }
        .auto-style9 {
            width: 398px;
            height: 54px;
        }
        .auto-style17 {
            width: 135px;
            height: 54px;
        }
        .auto-style10 {
            height: 54px;
        }
        .auto-style11 {
            width: 398px;
            height: 55px;
        }
        .auto-style18 {
            width: 135px;
            height: 55px;
        }
        .auto-style12 {
            height: 55px;
        }
        .auto-style13 {
            height: 59px;
            width: 398px;
        }
        .auto-style19 {
            height: 59px;
            width: 135px;
        }
        .auto-style14 {
            height: 59px;
        }
        </style>
</head>
<body>
    <form id="form2" runat="server">
    <div>
    
        <table class="auto-style1">
            <tr>
                <td class="auto-style3"></td>
                <td class="auto-style15">
                    <asp:Label ID="Label1" runat="server" Text="商品编号"></asp:Label>
                </td>
                <td class="auto-style2">
                    <asp:TextBox ID="TB_gdid" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style7"></td>
                <td class="auto-style16">
                    <asp:Label ID="Label2" runat="server" Text="商品名称"></asp:Label>
                </td>
                <td class="auto-style8">
                    <asp:TextBox ID="TB_gdname" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style9"></td>
                <td class="auto-style17">
                    <asp:Label ID="Label5" runat="server" Text="商品颜色"></asp:Label>
                </td>
                <td class="auto-style10">
                    <asp:TextBox ID="TB_gdc" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style11"></td>
                <td class="auto-style18">
                    <asp:Label ID="Label3" runat="server" Text="商品尺码"></asp:Label>
                </td>
                <td class="auto-style12">
                    <asp:TextBox ID="TB_gds" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style13">&nbsp;</td>
                <td class="auto-style19">
                    <asp:Label ID="Label4" runat="server" Text="商品价格"></asp:Label>
                </td>
                <td class="auto-style14">
                    <asp:TextBox ID="TB_gdp" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style13">&nbsp;</td>
                <td class="auto-style19">
                    <asp:Label ID="Label6" runat="server" Text="商品数量"></asp:Label>
                </td>
                <td class="auto-style14">
                    <asp:TextBox ID="TB_gdnum" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style9"></td>
                <td class="auto-style17">
                    <asp:Button ID="B_gdad" runat="server" Height="30px" OnClick="B_gdad_Click" Text="添 加" Width="60px" />
                </td>
                <td class="auto-style10">
                    <asp:Label ID="L_show" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style9">&nbsp;</td>
                <td class="auto-style17">
                    <asp:Button ID="B_clear" runat="server" Height="30px" OnClick="B_clear_Click" Text="清 空" Width="60px" />
                </td>
                <td class="auto-style10">
                    <asp:Label ID="Label7" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style9">&nbsp;</td>
                <td class="auto-style17">
                    <asp:Button ID="B_bk" runat="server" Height="30px" OnClick="B_bk_Click" Text="返 回" Width="60px" />
                </td>
                <td class="auto-style10">
                    &nbsp;</td>
            </tr>
        </table>
    
    </div>
    </form>

</body>
</html>
