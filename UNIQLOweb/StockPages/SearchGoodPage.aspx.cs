using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Stockpages_StockSearchpage : System.Web.UI.Page
{
    StockLogic STL = new StockLogic();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void B_gdsc_Click(object sender, EventArgs e)
    {
        L_show.Text = "";
        string gdid = TB_gdid.Text.ToString();
        DataTable dt = new DataTable();
        dt = STL.SearchGood (gdid);
        if (dt.Rows.Count == 0)
        {
            L_show.Text = "失败，不存在此商品。";
            GV_gdsc.DataSource = null;
            GV_gdsc.DataBind();
        }
        else
        {
            GV_gdsc.DataSource = dt;
            GV_gdsc.DataBind();  
        }

    }

    protected void B_bk_Click(object sender, EventArgs e)
    {
        Response.Redirect("StockHomepage.aspx");
    }
    protected void B_clear_Click(object sender, EventArgs e)
    {
        Response.Redirect("SearchGoodPage.aspx");
    }
}