using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
//利用ADO模型访问数据库，ADO的名空间
using System.Data;
using System.Data.SqlClient;
using System.Text;


public partial class Salepages_BillAddpage : System.Web.UI.Page
{
    private SaleLogic SL = new SaleLogic();
    private StockLogic STL = new StockLogic();
    
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }

    protected void B_gdsc_Click(object sender, EventArgs e)//查询按钮事件
    {
        string gdid = TB_gdid.Text.ToString();
        DataTable dt = new DataTable();
        dt = STL.SearchGood(gdid);
        L_gdname.Text = dt.Rows[0][1].ToString();
        L_gdc.Text = dt.Rows[0][2].ToString();
        L_gds.Text = dt.Rows[0][3].ToString();
        L_gdp.Text = dt.Rows[0][4].ToString();
    }

    protected void B_blad_Click(object sender, EventArgs e)//添加按钮事件
    {
        L_show.Text = "";
        string blid = DateTime.Now.ToFileTime().ToString();//账单编号根据时间自动生成，精确到纳秒级别
        string bltm = DateTime.Now.ToString();//销售时间根据系统当前时间自动生成
        string gdid = TB_gdid.Text.ToString();
        string gdname = L_gdname.Text.ToString();
        string gdc = L_gdc.Text.ToString();
        string gds = L_gds.Text.ToString();
        string gdnum = TB_gdnum.Text.ToString();
        string gdp = L_gdp.Text.ToString();
        string gdtp = L_gdtp.Text.ToString();
        string bls = "已换";
        string oper = Session["StaffID"].ToString();
        //以上根据lable和textbox的值获取数据
        if (SL.AddBill(blid, bltm, gdid, gdname, gdc, gds, gdnum, gdp, gdtp, bls, oper) == false)
        { L_show.Text = "失败,请检查输入信息是否正确。"; }
        else
        { L_show.Text = "成功!"; }

        DataTable dt = new DataTable();
        dt = SL.SearchBill(blid);
        GV_bd.DataSource = dt;
        GV_bd.DataBind();
    }

    protected void B_cal_Click(object sender, EventArgs e)//计算按钮事件
    {
        double i = double.Parse(TB_gdnum.Text) * double.Parse(L_gdp.Text);
        L_gdtp.Text = i.ToString();
        TB_gdnum.Enabled = false;
    }

    protected void B_close_Click(object sender, EventArgs e)
    {
        Response.Write("<script>window.close()</script>");      
    }
    protected void B_clear_Click(object sender, EventArgs e)
    {
        Response.Redirect("BillAddpage2.aspx");
    }


}