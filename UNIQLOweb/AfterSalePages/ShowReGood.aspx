<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ShowReGood.aspx.cs" Inherits="AfterSalePages_ShowReGood" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:GridView ID="GV_srg" runat="server" AutoGenerateColumns="false">
                           <Columns> 
                                <asp:BoundField DataField="ReID" HeaderText="售后编号"  />
                               <asp:BoundField DataField="BillID" HeaderText="账单编号"  />
                                <asp:BoundField DataField="SaleTime" HeaderText="销售时间"  />
                                <asp:BoundField DataField="ReTime" HeaderText="售后时间" />
                               <asp:BoundField DataField="ReType" HeaderText="售后种类" />
                                <asp:BoundField DataField="ReGoodID" HeaderText="商品编号"  />
                                <asp:BoundField DataField="ReGoodName" HeaderText="售后商品名称" />
                                <asp:BoundField DataField="ReGoodNum" HeaderText="售后商品数量" />
                               <asp:BoundField DataField="ReMoney" HeaderText="退款" />
                                <asp:BoundField DataField="Operator" HeaderText="操作人" />
                            </Columns>
        </asp:GridView>
    
    </div>
    </form>
</body>
</html>
