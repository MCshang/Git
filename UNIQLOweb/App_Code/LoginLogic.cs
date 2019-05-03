using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
//利用ADO模型访问数据库，ADO的名空间
using System.Data;
using System.Data.SqlClient;
using System.Text;

/// <summary>
/// LoginLogic 登录逻辑
/// </summary>
public class LoginLogic
{
    private DBHelper db = new DBHelper();
	public LoginLogic()
	{

	}
    /// <summary>
    /// 根据登录账号查询员工工号
    /// </summary>
    /// <param name="uid">登录账号</param>
    /// <returns></returns>
    public DataTable SearchStaffID(string uid)
    {
        DataTable dt = new DataTable();
        SqlCommand mycom = new SqlCommand("SearchStaffID");
        mycom.Parameters.AddWithValue("UserID", uid);
        dt = db.ExecutiveMyQuery(mycom, "aa");
        return dt;
    }
    /// <summary>
    /// 根据登录账号和密码查询登录账号
    /// </summary>
    /// <param name="uid">登录账号</param>
    /// <param name="pwd">密码</param>
    /// <returns>是否是合法身份登录</returns>
    public bool SearchUserInfo (string uid, string pwd)
    {
        bool ret = false;
        DataTable dt = new DataTable();
        SqlCommand mycom = new SqlCommand("SearchUserInfo");
        mycom.Parameters.AddWithValue("UserID", uid);
        mycom.Parameters.AddWithValue("PWD", pwd);
        dt = db.ExecutiveMyQuery(mycom, "su");
        if (dt.Rows.Count == 1)
            ret = true;
        return ret;
    }
    /// <summary>
    /// 根据用户账号查询用户角色
    /// </summary>
    /// <param name="uid">用户账号</param>
    /// <returns>用户角色</returns>
    public DataTable SearchRoleInfo(string uid)
    {
        DataTable dt = new DataTable();
        SqlCommand mycom = new SqlCommand("SearchRoleInfo");
        mycom.Parameters.AddWithValue("UserID", uid);
        dt = db.ExecutiveMyQuery(mycom, "sr");
        int ss = dt.Rows.Count;
        return dt;
    }
    /// <summary>
    /// 修改密码
    /// </summary>
    /// <param name="uid">登录账号</param>
    /// <param name="npwd">新密码</param>
    /// <returns></returns>
    public Boolean ModifyPWD(string uid, string npwd)
    {
        Boolean ret = false;
        SqlCommand mycom = new SqlCommand("ModifyPWD");
        mycom.Parameters.AddWithValue("UserID", uid);
        mycom.Parameters.AddWithValue("PWD", npwd);
        ret = db.ExecuteMyUpdate(mycom);
        return ret;
    }
}