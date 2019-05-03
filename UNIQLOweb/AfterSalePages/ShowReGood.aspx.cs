using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class AfterSalePages_ShowReGood : System.Web.UI.Page
{
    private AfterSaleLogic ASL = new AfterSaleLogic();
    protected void Page_Load(object sender, EventArgs e)
    {
        DataTable dt = new DataTable();
        dt = ASL.ShowAftersales();
        GV_srg.DataSource = dt;
        GV_srg.DataBind();
    }
}