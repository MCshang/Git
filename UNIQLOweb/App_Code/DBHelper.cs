using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
//利用ADO模型访问数据库，ADO的名空间
using System.Data;
using System.Data.SqlClient;
//系统配置管理名空间
using System.Configuration;

/// <summary>
///DBHelper 数据库助手类的定义，它帮助C#代码访问数据库中数据和存储过程
/// </summary>
public class DBHelper
{
    string conString = "";
    public DBHelper()
    {
        //从配置文件Web.config读取连接数据库服务器的连接字符串
        conString = ConfigurationManager.ConnectionStrings["ApplicationServices"].ConnectionString;
    }

    /// <summary>
    /// 执行查询操作
    /// </summary>
    /// <param name="myCom">封装了查询细节的命令对象</param>
    /// <returns></returns>
    public DataTable ExecutiveMyQuery(SqlCommand myCom, string tableName)
    {
        DataTable dt = new DataTable();
        using (SqlConnection mycon = new SqlConnection(conString))
        {
            mycon.Open();
            myCom.Connection = mycon;
            myCom.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter sda = new SqlDataAdapter(myCom);
            DataSet ds = new DataSet();
            sda.Fill(ds, tableName);
            int i = ds.Tables[tableName].Rows.Count;
            dt = ds.Tables[tableName];
            myCom.Dispose();
            mycon.Close();
            return dt;
        }
    }

    ///<summary>
    ///执行更新语句，且所有逻辑用存储过程实现
    ///</summary>
    ///<paramname="MyCom">命令对象</param>
    ///<returns>布尔值，表示成功与失败</returns>
    public bool ExecuteMyUpdate(SqlCommand MyCom)
    {
        bool ret = false;
        using (SqlConnection mycon = new SqlConnection(conString))
        {
            mycon.Open();
            SqlTransaction tran = mycon.BeginTransaction();
            try
            {
                MyCom.Transaction = tran;
                MyCom.CommandType = CommandType.StoredProcedure;
                MyCom.Connection = mycon;
                int rows = MyCom.ExecuteNonQuery();
                tran.Commit();
                ret = true;
            }
            catch (Exception ex)
            {
                string ss = ex.Message;
                tran.Rollback();
            }
            finally
            {
                mycon.Close();
                tran.Dispose();
                MyCom.Dispose();
            }
            return ret;
        }
    }
}