using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class UserLogin : System.Web.UI.Page
{
    private LoginLogic LL = new LoginLogic();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void B_login_Click(object sender, EventArgs e)
    {
        DataTable dt = new DataTable();
        DataTable dtt = new DataTable();
        //获取输入的账号与密码并删除前后空格
        string uid = TB_username.Text.Trim();
        string pwd = TB_password.Text.Trim();
        //查询账号密码
        if (LL.SearchUserInfo (uid, pwd))
        {
            dtt = LL.SearchStaffID(uid);
            Session["StaffID"] = dtt.Rows[0][0].ToString();//查询员工ID并存储到session
            dt = LL.SearchRoleInfo (uid);
            if (dt.Rows.Count == 1)
            {
                Session["RoleName"] = dt.Rows[0][0].ToString();//获取此账号对应的角色名称并保存在session对象中
                switch (Session["RoleName"].ToString())
                {
                    case "进货员":
                        Response.Redirect("~/StockPages/StockHomePage.aspx");
                        break;
                    case "收银员":
                        Response.Redirect("~/SalePage/BillAddPage.aspx");
                        break;
                    case "店长":
                        Response.Redirect("~/AfterSalePages/AfterSaleHomePage.aspx");
                        break;
                }
            }
        }
        else
        {
            TB_password.Text = "";
            L_show.Text = "用户名或密码错误！";
        }
    }
    protected void B_cpwd_Click(object sender, EventArgs e)
    {
        Response.Redirect("ModifyPWD.aspx");
    }
}