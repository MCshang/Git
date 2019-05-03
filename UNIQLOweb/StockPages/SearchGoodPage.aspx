<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SearchGoodPage.aspx.cs" Inherits="Stockpages_StockSearchpage" %>

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
            width: 122px;
        }
        .auto-style2 {
        }
        .auto-style4 {
            height: 48px;
        }
        .auto-style5 {
            width: 122px;
            height: 48px;
        }
        .auto-style6 {
            width: 268px;
            height: 48px;
        }
        </style>
</head>
<body>
    <form id="form2" runat="server">
    <div>
    
        <table class="auto-style1">
            <tr>
                <td class="auto-style4"></td>
                <td class="auto-style5">
                    <asp:Label ID="Lable1" runat="server" Text="商品编号"></asp:Label>
                </td>
                <td class="auto-style6">
                    <asp:TextBox ID="TB_gdid" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style4">
                    <asp:Button ID="B_gdsc" runat="server" OnClick="B_gdsc_Click" Text="查 询" Height="28px" Width="48px" />
                &nbsp;
                    <asp:Button ID="B_clear" runat="server" Height="28px" OnClick="B_clear_Click" Text="清 空" Width="48px" />
                &nbsp;
                    <asp:Button ID="B_bk" runat="server" Height="28px" OnClick="B_bk_Click" Text="返 回" Width="48px" />
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style3">
                    <asp:Label ID="L_show" runat="server"></asp:Label>
                </td>
                <td class="auto-style2" colspan="2">
                    <asp:GridView ID="GV_gdsc" runat="server" AutoGenerateColumns="False" Width="500px">
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
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
