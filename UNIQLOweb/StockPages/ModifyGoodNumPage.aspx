<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ModifyGoodNumPage.aspx.cs" Inherits="Stockpages_ModifyGoodNumPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            margin-bottom: 22px;
        }
        .auto-style7 {
            width: 503px;
            height: 58px;
        }
        .auto-style8 {
            height: 58px;
        }
        .auto-style9 {
            width: 268px;
            height: 58px;
        }
        .auto-style10 {
            height: 58px;
        }
        .auto-style11 {
            width: 503px;
            height: 55px;
        }
        .auto-style13 {
            width: 268px;
            height: 55px;
        }
        .auto-style14 {
            height: 55px;
        }
        .auto-style15 {
            width: 503px;
            height: 51px;
        }
        .auto-style17 {
            width: 268px;
            height: 51px;
        }
        .auto-style18 {
            height: 51px;
        }
        .auto-style19 {
            width: 503px;
            height: 52px;
        }
        .auto-style21 {
            width: 268px;
            height: 52px;
        }
        .auto-style22 {
            height: 52px;
        }
        .auto-style23 {
            width: 118px;
            height: 58px;
        }
        .auto-style24 {
            width: 118px;
            height: 55px;
        }
        .auto-style25 {
            width: 118px;
            height: 51px;
        }
        .auto-style26 {
            width: 118px;
            height: 52px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td class="auto-style7"></td>
                <td class="auto-style23">
                    <asp:Label ID="Label1" runat="server" Text="商品编号"></asp:Label>
                </td>
                <td class="auto-style9">
                    <asp:TextBox ID="TB_gdid" runat="server"></asp:TextBox>
                    <asp:Button ID="B_gdsce" runat="server" OnClick="B_gdsce_Click" Text="验 证" />
                </td>
                <td class="auto-style10">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style7">&nbsp;</td>
                <td class="auto-style8" colspan="2">
                    <asp:GridView ID="GV_gdsce" runat="server" AutoGenerateColumns="False" Width="500px" >
                        <Columns>
                                <asp:BoundField DataField="GoodID" HeaderText="商品编号" />
                                <asp:BoundField DataField="GoodName" HeaderText="商品名称"  />
                                <asp:BoundField DataField="GoodColor" HeaderText="商品颜色" />
                                <asp:BoundField DataField="GoodSize" HeaderText="商品尺码"  />
                                <asp:BoundField DataField="GoodPrice" HeaderText="商品价格" />
                                <asp:BoundField DataField="GoodNum" HeaderText="商品数量" />
                                <asp:BoundField DataField="Operator" HeaderText="操作人" />
                        </Columns>
                    </asp:GridView>
                </td>
                <td class="auto-style10">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style7">&nbsp;</td>
                <td class="auto-style23">
                    <asp:Label ID="Label2" runat="server" Text="添加数量"></asp:Label>
                </td>
                <td class="auto-style9">
                    <asp:TextBox ID="TB_gdnum" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style10">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style11"></td>
                <td class="auto-style24">
                    &nbsp;</td>
                <td class="auto-style13">
                    <asp:Label ID="L_show" runat="server"></asp:Label>
                </td>
                <td class="auto-style14"></td>
            </tr>
            <tr>
                <td class="auto-style15"></td>
                <td class="auto-style25">
                    &nbsp;</td>
                <td class="auto-style17">
                    <asp:Button ID="B_mgdnum" runat="server" Text="添 加" OnClick="B_mgdnum_Click" />
                    <asp:Button ID="B_clear" runat="server" Text="清 空" OnClick="B_clear_Click" />
                    <asp:Button ID="B_bk" runat="server" Text="返 回" OnClick="B_bk_Click" />
                </td>
                <td class="auto-style18"></td>
            </tr>
            <tr>
                <td class="auto-style19"></td>
                <td class="auto-style26">
                    &nbsp;</td>
                <td class="auto-style21"></td>
                <td class="auto-style22"></td>
            </tr>
            <tr>
                <td class="auto-style15"></td>
                <td class="auto-style25">
                    &nbsp;</td>
                <td class="auto-style17"></td>
                <td class="auto-style18"></td>
            </tr>
        </table>
    </form>
</body>
</html>
