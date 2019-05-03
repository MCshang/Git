using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
//利用ADO模型访问数据库，ADO的名空间
using System.Data;
using System.Data.SqlClient;
using System.Text;

/// <summary>
/// Aftersale 售后逻辑
/// </summary>
public class AfterSaleLogic
{
    private DBHelper db = new DBHelper();
	public AfterSaleLogic()
	{
		//
		// TODO: 在此处添加构造函数逻辑
		//
	}
    /// <summary>
    /// 查询账单是否存在
    /// </summary>
    /// <param name="blid">账单编号</param>
    /// <returns>布尔值，表示存在与否</returns>
    public Boolean  SearchBillExist(string blid)
    {
        Boolean  ret = false;
        DataTable dt = new DataTable();
        SqlCommand mycom = new SqlCommand("SearchBill");
        mycom.Parameters.AddWithValue("@BillID", blid);
        dt = db.ExecutiveMyQuery(mycom, "sbe");
        if (dt.Rows.Count >0)
            ret = true;
        return ret;
    }
    /// <summary>
    /// 添加售后记录
    /// </summary>
    /// <param name="reid">售后编号</param>
    /// <param name="blid">账单编号</param>
    /// <param name="stm">销售时间</param>
    /// <param name="retm">售后时间</param>
    /// <param name="rtp">售后种类</param>
    /// <param name="rgid">售后商品编号</param>
    /// <param name="rgname">售后商品名称</param>
    /// <param name="rgnum">售后商品数量</param>
    /// <param name="rem">退款</param>
    /// <param name="oper">操作人</param>
    /// <returns>布尔值，表示成功与失败</returns>
    public Boolean  AftersaleGood(string reid, string blid, string stm, string retm,string rtp,
        string rgid,string rgname, string rgnum, string rem,string oper) 
    {
        Boolean  ret = false ;
        SqlCommand mycom = new SqlCommand("AftersaleGood");
        mycom.Parameters .AddWithValue ("ReID",reid);
        mycom.Parameters.AddWithValue("BillID", blid);
        mycom.Parameters.AddWithValue ("SaleTime",stm);
        mycom.Parameters.AddWithValue ("ReTime",retm);
        mycom.Parameters.AddWithValue("ReType", rtp);
        mycom.Parameters .AddWithValue ("ReGoodID",rgid);
        mycom.Parameters.AddWithValue("ReGoodName", rgname);
        mycom.Parameters .AddWithValue ("ReGoodNum",rgnum);
        mycom.Parameters .AddWithValue ("ReMoney",rem);
        mycom.Parameters.AddWithValue("Operator", oper);
        ret = db.ExecuteMyUpdate (mycom);
        return ret;
    }
    /// <summary>
    /// 显示售后记录
    /// </summary>
    /// <returns>售后记录</returns>
    public DataTable ShowAftersales()
    {
        DataTable dt = new DataTable();
        SqlCommand mycom = new SqlCommand("ShowAftersales");
        dt = db.ExecutiveMyQuery(mycom, "srg");
        return dt;
    }
}