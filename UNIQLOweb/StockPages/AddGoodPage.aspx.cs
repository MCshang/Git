using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Stockpages_StockAddpage : System.Web.UI.Page
{
    private StockLogic STL = new StockLogic();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void B_gdad_Click(object sender, EventArgs e)
    {
        string gdid = TB_gdid.Text.ToString();
        string gdname = TB_gdname.Text.ToString();
        string gdc = TB_gdc.Text.ToString();
        string gds = TB_gds.Text.ToString();
        string gdp = TB_gdp.Text.ToString();
        string gdnum = TB_gdnum.Text.ToString();
        string oper = Session["StaffID"].ToString();
        if (STL.AddGood(gdid, gdname, gdc, gds, gdp, gdnum, oper) == false)
            L_show.Text = "失败,商品已存在或信息输入有误。";
        else
            L_show.Text = "成功!";
    }

    protected void B_bk_Click(object sender, EventArgs e)
    {
        Response.Redirect("StockHomePage.aspx");
    }
    protected void B_clear_Click(object sender, EventArgs e)
    {
        Response.Redirect("AddGoodPage.aspx");
    }
}