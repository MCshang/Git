<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AfterSaleHomePage.aspx.cs" Inherits="Aftersalepages_AfterSaleHomepage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style8 {
            height: 220px;
        }
        .auto-style10 {
            height: 85px;
        }
        .auto-style13 {
            height: 85px;
            width: 285px;
        }
        .auto-style14 {
            height: 220px;
            width: 285px;
        }
        .auto-style16 {
            width: 285px;
        }
        .auto-style17 {
            width: 91px;
            height: 85px;
        }
        .auto-style19 {
            width: 91px;
        }
        .auto-style20 {
            height: 85px;
            width: 337px;
        }
        .auto-style22 {
            width: 337px;
        }
        .auto-style27 {
            height: 48px;
            width: 285px;
        }
        .auto-style28 {
            width: 91px;
            height: 48px;
        }
        .auto-style29 {
            height: 48px;
            width: 337px;
        }
        .auto-style30 {
            height: 48px;
        }
        .auto-style31 {
            height: 44px;
            width: 285px;
        }
        .auto-style32 {
            width: 91px;
            height: 44px;
        }
        .auto-style33 {
            height: 44px;
            width: 337px;
        }
        .auto-style34 {
            height: 44px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table class="auto-style1">
            <tr>
                <td class="auto-style13"></td>
                <td class="auto-style17"></td>
                <td class="auto-style20">
                    <asp:Label ID="L_blid" runat="server" Text="账单编号"></asp:Label>
                    <asp:TextBox ID="TB_blid" runat="server"></asp:TextBox>
                    <asp:Button ID="B_blsc" runat="server" OnClick="B_blsc_Click" Text="查询" />
                </td>
                <td class="auto-style10">
                    &nbsp;</td>
                <td class="auto-style10"></td>
            </tr>
            <tr>
                <td class="auto-style14"></td>
                <td class="auto-style8" colspan="3">
                    <asp:GridView ID="GV_bs" runat="server" AutoGenerateColumns="false"> 
                        <Columns> 
                                <asp:BoundField DataField="BillID" HeaderText="账单编号"  />
                                <asp:BoundField DataField="SaleTime" HeaderText="销售时间"  />
                                <asp:BoundField DataField="GoodID" HeaderText="商品编号" />
                                <asp:BoundField DataField="GoodName" HeaderText="商品名称"  />
                                <asp:BoundField DataField="GoodColor" HeaderText="商品颜色" />
                                <asp:BoundField DataField="GoodSize" HeaderText="商品尺码"  />
                                <asp:BoundField DataField="BuyGoodNum" HeaderText="购买数量" />
                                <asp:BoundField DataField="GoodPrice" HeaderText="商品单价" />
                                <asp:BoundField DataField="GoodTotalPrice" HeaderText="商品总价" />
                                <asp:BoundField DataField="BillSatuts" HeaderText="账单状态" />
                                <asp:BoundField DataField="Operator" HeaderText="操作人" />
                            </Columns>
                    </asp:GridView>
                </td>
                <td class="auto-style8"></td>
            </tr>
            <tr>
                <td class="auto-style31"></td>
                <td class="auto-style32"></td>
                <td class="auto-style33">
                    <asp:Button ID="B_rg" runat="server" Text="添加退货" OnClick="B_rg_Click" />
                    <asp:Button ID="B_exg" runat="server" Text="添加换货" OnClick="B_exg_Click" />
                    <asp:Button ID="B_clear" runat="server" OnClick="B_clear_Click" Text="清空" />
                    <asp:Label ID="L_show" runat="server"></asp:Label>
                </td>
                <td class="auto-style34">
                    &nbsp;</td>
                <td class="auto-style34"></td>
            </tr>
            <tr>
                <td class="auto-style27"></td>
                <td class="auto-style28"></td>
                <td class="auto-style29">
                    <asp:Button ID="B_lkrg" runat="server" OnClick="B_lkrg_Click" Text="查看售后记录" />
                </td>
                <td class="auto-style30">
                </td>
                <td class="auto-style30"></td>
            </tr>
            <tr>
                <td class="auto-style16">&nbsp;</td>
                <td class="auto-style19">&nbsp;</td>
                <td class="auto-style22">
                    <asp:Button ID="B_cpwd" runat="server" OnClick="B_cpwd_Click" Text="修改密码" />
                    <asp:Button ID="B_logout" runat="server" OnClick="B_logout_Click" Text="注销" />
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style16">&nbsp;</td>
                <td class="auto-style19">&nbsp;</td>
                <td class="auto-style22">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
