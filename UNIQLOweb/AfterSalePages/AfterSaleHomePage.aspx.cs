using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;


public partial class Aftersalepages_AfterSaleHomepage : System.Web.UI.Page
{
    //调用售后逻辑和销售逻辑
    private AfterSaleLogic ASL = new AfterSaleLogic();
    private SaleLogic SL = new SaleLogic();
    
    protected void Page_Load(object sender, EventArgs e)//页面初始化关闭退换货按钮
    {
        if (Session["StaffID"] == null)
        {
            Response.Redirect("~/UserLogin.aspx");
        }
        B_rg.Enabled = false; 
        B_exg.Enabled = false;
    }

    protected void B_blsc_Click(object sender, EventArgs e)//账单查询按钮
    {
        bool aa = false;//定义一个新布尔型对象aa，用来判断是否开启退换货按钮
        string blid = TB_blid.Text.ToString();
        DataTable dt = new DataTable();
        dt = SL.SearchBill(blid);//查询账单，显示账单
        GV_bs.DataSource = dt;
        GV_bs.DataBind();
        aa = ASL.SearchBillExist(blid);//根据账单是否存在来开启退换货按钮
        if (aa) { B_rg.Enabled = true; B_exg.Enabled = true; L_show.Text = ""; }
        else { B_rg.Enabled = false; B_exg.Enabled = false; L_show.Text = "不存在此账单！"; }
    }

    protected void B_rg_Click(object sender, EventArgs e)//退货按钮
    {
        string reid = DateTime.Now.ToFileTime().ToString();
        string blid = TB_blid.Text.ToString();
        DataTable dt = new DataTable();       
        dt = SL.SearchBill(blid);//向退货单添加账单现有数据         
        string stm = dt.Rows[0][1].ToString();
        string retm = DateTime.Now.ToString();
        string rtp = "退货".ToString();
        string rgid = dt.Rows[0][2].ToString();
        string rgname = dt.Rows[0][3].ToString();
        string rgnum = dt.Rows[0][6].ToString();
        string rem = dt.Rows[0][8].ToString();
        string oper = Session["StaffID"].ToString();
        if (ASL.AftersaleGood(reid, blid, stm, retm, rtp, rgid, rgname, rgnum, rem, oper) == false)
        {
            L_show.Text = "失败！";
        }
        else
        {
            B_blsc_Click(this,e);
            L_show.Text = "成功!";
        }
    }

    protected void B_exg_Click(object sender, EventArgs e)//换货按钮
    {
        string reid = DateTime.Now.ToFileTime().ToString();
        string blid = TB_blid.Text.ToString();
        DataTable dt = new DataTable();
        dt = SL.SearchBill(blid);//向退货单添加账单现有数据         
        string stm = dt.Rows[0][1].ToString();
        string retm = DateTime.Now.ToString();
        string rtp = "换货";
        string rgid = dt.Rows[0][2].ToString();
        string rgname = dt.Rows[0][3].ToString();
        string rgnum = dt.Rows[0][6].ToString();
        string rem = "0";
        string oper = Session["StaffID"].ToString();
        if (ASL.AftersaleGood(reid, blid, stm, retm, rtp, rgid, rgname, rgnum, rem, oper) == false)
        {
            L_show.Text = "失败！";
        }
        else
        {
            B_blsc_Click(this, e);
            L_show.Text = "成功!";
            Response.Write("<script>window.showModelessDialog('BillAddpage2.aspx')</script>");//弹出新窗口，添加换出商品的新帐单
        }
            
    }

    protected void B_clear_Click(object sender, EventArgs e)//刷新清空
    {
        Response.Redirect("AfterSaleHomePage.aspx");
    }
    protected void B_logout_Click(object sender, EventArgs e)//注销
    {
        Session.Abandon();
        Response.Redirect("~/UserLogin.aspx");
    }
    protected void B_cpwd_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/ModifyPWD.aspx");
    }
    protected void B_lkrg_Click(object sender, EventArgs e)
    {
        Response.Redirect("ShowReGood.aspx");
    }
}