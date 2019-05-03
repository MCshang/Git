using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ChangePWD : System.Web.UI.Page
{
    private LoginLogic LL = new LoginLogic();
    protected void Page_Load(object sender, EventArgs e)
    {
        B_cpwd.Enabled = false;
    }
    protected void B_ck_Click(object sender, EventArgs e)
    {
        bool aa = false;
        string uid = TB_uid.Text.ToString();
        string pwd = TB_pwd.Text.ToString();
        this.TB_pwd.Attributes.Add("value", Request["TB_pwd"]);
        aa = LL.SearchUserInfo(uid, pwd);
        if (aa) { B_cpwd.Enabled = true; L_show.Text = "验证通过，请输入新密码。"; }
        else { B_cpwd.Enabled = false; L_show.Text = "验证失败，请检查原始账号密码是否正确。"; }
    }
    protected void B_cpwd_Click(object sender, EventArgs e)
    {
        B_cpwd.Enabled = true;
        string uid = TB_uid.Text.ToString();
        string pwd = TB_pwd.Text.ToString();
        string npwd = TB_npwd.Text.ToString();
        string npwd2 = TB_npwd2.Text.ToString();
        if (pwd.Equals(npwd))
        {
            L_show.Text = "修改失败，新密码不能与原密码相同。"; 
        }
        else if (!npwd.Equals(npwd2))
        {
            L_show.Text = "修改失败，请检查两次密码输入是否一致。";
        }
        else if (LL.ModifyPWD(uid, npwd) == true)
        {
            L_show.Text = "修改成功，请注销后重新登录！";
            B_cpwd.Enabled = false;
        }
        else L_show.Text = "修改失败。";
    }
    protected void B_close_Click(object sender, EventArgs e)
    {
        Session.Abandon();
        Response.Redirect("~/UserLogin.aspx");
    }


}