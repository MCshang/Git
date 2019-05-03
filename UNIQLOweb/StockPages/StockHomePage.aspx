<%@ Page Language="C#" AutoEventWireup="true" CodeFile="StockHomePage.aspx.cs" Inherits="StockHomepage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            height: 415px;
        }
        .auto-style4 {
            width: 497px;
            height: 80px;
        }
        .auto-style5 {
            width: 505px;
            height: 80px;
        }
        .auto-style6 {
            height: 80px;
        }
        .auto-style10 {
            width: 497px;
            height: 73px;
        }
        .auto-style11 {
            width: 505px;
            height: 73px;
        }
        .auto-style12 {
            height: 73px;
        }
        .auto-style13 {
            width: 497px;
            height: 69px;
        }
        .auto-style14 {
            width: 505px;
            height: 69px;
        }
        .auto-style15 {
            height: 69px;
        }
        .auto-style16 {
            width: 497px;
            height: 30px;
        }
        .auto-style17 {
            width: 505px;
            height: 30px;
        }
        .auto-style18 {
            height: 30px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td class="auto-style16"></td>
                <td class="auto-style17">
                </td>
                <td class="auto-style18">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style10"></td>
                <td class="auto-style11">
                    <asp:GridView ID="GV_allstock" runat="server" AutoGenerateColumns="False">
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
                <td class="auto-style12"></td>
            </tr>
            <tr>
                <td class="auto-style13">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                <td class="auto-style14">
                    <asp:Button ID="AddStock" runat="server" Height="26px" OnClick="添加商品_Click" Text="添加新商品" Width="85px" />
                    <asp:Button ID="SearchStock" runat="server" Height="26px" Text="查询商品" Width="85px" OnClick="SearchStock_Click" />
                    <asp:Button ID="B_mg" runat="server" OnClick="B_mg_Click" Text="添加已有商品" />
                </td>
                <td class="auto-style15">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4"></td>
                <td class="auto-style5">
                    <asp:Button ID="B_logout" runat="server" OnClick="B_logout_Click" Text="注 销" />
                    <asp:Button ID="B_cpwd" runat="server" OnClick="B_cpwd_Click" Text="修改密码" />
                </td>
                <td class="auto-style6"></td>
            </tr>
            </table>
    </form>
    </body>
</html>
