using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Stockpages_ModifyGoodNumPage : System.Web.UI.Page
{
    private StockLogic STL = new StockLogic();
    protected void Page_Load(object sender, EventArgs e)
    {
        B_mgdnum.Enabled = false;
    }

    protected void B_gdsce_Click(object sender, EventArgs e)
    {
        TB_gdnum.Text = "";
        bool sge = false;
        string gdid = TB_gdid.Text.ToString();
        DataTable dt = new DataTable();
        dt = STL.SearchGood(gdid);
        GV_gdsce.DataSource = dt;
        sge = STL.SearchGoodExist(gdid);
        if (sge) { B_mgdnum.Enabled = true; L_show.Text = "存在此商品，请输入需要添加的商品数量！"; GV_gdsce.DataBind(); }
        else { B_mgdnum.Enabled = false; L_show.Text = "不存在此商品！"; GV_gdsce.DataBind(); }

    }
    protected void B_mgdnum_Click(object sender, EventArgs e)
    {
        B_mgdnum.Enabled = true;
        string gdid = TB_gdid.Text.ToString();
        string gdnum = TB_gdnum.Text.ToString();
        if (STL.AddGoodNum(gdid, gdnum) == false)
        {
            L_show.Text = "添加失败！";
        }
        else
        { 
            B_gdsce_Click(this, e);
            L_show.Text = "添加成功！";
        }      
    }
    protected void B_clear_Click(object sender, EventArgs e)
    {
        Response.Redirect("ModifyGoodNumPage.aspx");
    }
    protected void B_bk_Click(object sender, EventArgs e)
    {
        Response.Redirect("StockHomePage.aspx");
    }

}