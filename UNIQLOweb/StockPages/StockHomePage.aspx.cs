using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class StockHomepage : System.Web.UI.Page
{
    private StockLogic STL = new StockLogic();
    protected void Page_Load(object sender, EventArgs e)//首页直接显示所有商品
    {
        if (Session["StaffID"] == null)
        {
            Response.Redirect("~/UserLogin.aspx");
        }
        DataTable dt = new DataTable();
        dt = STL.ShowGood();
        GV_allstock.DataSource = dt;
        GV_allstock.DataBind();
    }
    protected void 添加商品_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/StockPages/AddGoodPage.aspx");
    }

    protected void SearchStock_Click(object sender, EventArgs e)
    {
        Response.Redirect("SearchGoodPage.aspx");
    }
    protected void DeleteStock_Click(object sender, EventArgs e)
    {
        Response.Redirect("DeleteGoodPage.aspx");
    }
    protected void B_logout_Click(object sender, EventArgs e)
    {
        Session.Abandon();
        Response.Redirect("~/UserLogin.aspx");   
    }
    protected void B_cpwd_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/ModifyPWD.aspx");
    }
    protected void B_mg_Click(object sender, EventArgs e)
    {
        Response.Redirect("ModifyGoodNumPage.aspx");
    }
}