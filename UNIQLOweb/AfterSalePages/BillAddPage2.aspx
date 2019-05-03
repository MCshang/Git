<%@ Page Language="C#" AutoEventWireup="true" CodeFile="BillAddPage2.aspx.cs" Inherits="Salepages_BillAddpage" %>

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
            width: 374px;
        }
        .auto-style15 {
            height: 57px;
            width: 83px;
        }
        .auto-style2 {
            height: 57px;
        }
        .auto-style7 {
            width: 374px;
            height: 53px;
        }
        .auto-style16 {
            width: 83px;
            height: 53px;
        }
        .auto-style8 {
            height: 53px;
        }
        .auto-style9 {
            width: 374px;
            height: 54px;
        }
        .auto-style17 {
            height: 54px;
        }
        .auto-style10 {
            height: 54px;
        }
        .auto-style11 {
            width: 374px;
            height: 55px;
        }
        .auto-style18 {
            width: 83px;
            height: 55px;
        }
        .auto-style12 {
            height: 55px;
        }
        .auto-style13 {
            height: 59px;
            width: 374px;
        }
        .auto-style19 {
            height: 59px;
            width: 83px;
        }
        .auto-style14 {
            height: 59px;
        }
        .auto-style20 {
            height: 54px;
        }
        .auto-style21 {
            height: 54px;
            width: 83px;
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
                    <asp:Label ID="goodnumLabel" runat="server" Text="商品编号"></asp:Label>
                </td>
                <td class="auto-style2">
                    <asp:TextBox ID="TB_gdid" runat="server"></asp:TextBox>
                    <asp:Button ID="B_gdsc" runat="server" OnClick="B_gdsc_Click" Text="查询" />
                </td>
                <td class="auto-style2">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style7"></td>
                <td class="auto-style16">
                    <asp:Label ID="Label2" runat="server" Text="商品名称"></asp:Label>
                </td>
                <td class="auto-style8">
                    <asp:Label ID="L_gdname" runat="server"></asp:Label>
                </td>
                <td class="auto-style8">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style9"></td>
                <td class="auto-style21">
                    <asp:Label ID="Label5" runat="server" Text="商品颜色"></asp:Label>
                </td>
                <td class="auto-style10">
                    <asp:Label ID="L_gdc" runat="server"></asp:Label>
                </td>
                <td class="auto-style10">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style11"></td>
                <td class="auto-style18">
                    <asp:Label ID="Label3" runat="server" Text="商品尺码"></asp:Label>
                </td>
                <td class="auto-style12">
                    <asp:Label ID="L_gds" runat="server"></asp:Label>
                </td>
                <td class="auto-style12">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style13">&nbsp;</td>
                <td class="auto-style19">
                    <asp:Label ID="Label6" runat="server" Text="商品单价"></asp:Label>
                </td>
                <td class="auto-style14">
                    <asp:Label ID="L_gdp" runat="server"></asp:Label>
                </td>
                <td class="auto-style14">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style13">&nbsp;</td>
                <td class="auto-style19">
                    <asp:Label ID="Label4" runat="server" Text="商品数量"></asp:Label>
                </td>
                <td class="auto-style14">
                    <asp:TextBox ID="TB_gdnum" runat="server"></asp:TextBox>
                    <asp:Button ID="B_cal" runat="server" OnClick="B_cal_Click" Text="计算总价" />
                </td>
                <td class="auto-style14">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style13">&nbsp;</td>
                <td class="auto-style19">
                    <asp:Label ID="Label7" runat="server" Text="商品总价"></asp:Label>
                </td>
                <td class="auto-style14">
                    <asp:Label ID="L_gdtp" runat="server"></asp:Label>
                </td>
                <td class="auto-style14">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style9"></td>
                <td class="auto-style21">
                    <asp:Button ID="B_blad" runat="server" Height="30px" OnClick="B_blad_Click" Text="换 货" Width="60px" />
                </td>
                <td class="auto-style17">
                    <asp:Button ID="B_clear" runat="server" Height="30px" OnClick="B_clear_Click" Text="清 空" Width="60px" />
                </td>
                <td class="auto-style10">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style9">&nbsp;</td>
                <td class="auto-style20" colspan="2">
                    <asp:Label ID="L_show" runat="server"></asp:Label>
                </td>
                <td class="auto-style10">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style9">
                    
                </td>
                <td class="auto-style17" colspan="3">
                    
                    &nbsp;<div id="printdiv">
                        <h4 style="width: 900px ; text-align:Center"> 购物小票</h4>
                        <asp:GridView ID="GV_bd" runat="server" AutoGenerateColumns="False"
                            Height="182px" Width="900px" > 
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
                                <asp:BoundField DataField="Operator" HeaderText="操作人" />
                            </Columns>
                        </asp:GridView>                                                 
                    </div>
                    <script type="text/javascript">
                        function printPage()
                        {
                            var newWin = window.open('printer', '', '');
                            var titleHTML = document.getElementById("printdiv").innerHTML;
                            newWin.document.write(titleHTML);
                            newWin.document.location.reload();
                            newWin.print();
                            newWin.close();
                        }
                    </script>


                    
                </td>
            </tr>
            <tr>
                <td class="auto-style9">
                    
                    &nbsp;</td>
                <td class="auto-style21">
                    
                    <input id="B_print" type="button" value="打 印" onclick="printPage()" style="height:30px;width:60px;" /></td>
                <td class="auto-style10">
                    
                    <asp:Button ID="B_close" runat="server" OnClick="B_close_Click" Text="关 闭" Height="30px" />
                    

                    
                </td>
                <td class="auto-style10">
                    
                    &nbsp;</td>
            </tr>
        </table>
    
    </div>
    </form>

</body>
</html>
