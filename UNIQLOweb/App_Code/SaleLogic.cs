using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
//利用ADO模型访问数据库，ADO的名空间
using System.Data;
using System.Data.SqlClient;
using System.Text;

/// <summary>
/// SaleLogic 销售逻辑
/// </summary>
public class SaleLogic
{
    private DBHelper db = new DBHelper();
	public SaleLogic()
	{
		//
		// TODO: 在此处添加构造函数逻辑
		//
	}
    /// <summary>
    /// 添加账单
    /// </summary>
    /// <param name="blid">账单编号</param>
    /// <param name="bltm">账单创建时间</param>
    /// <param name="gdid">商品编号</param>
    /// <param name="gdname">商品名称</param>
    /// <param name="gdc">商品颜色</param>
    /// <param name="gds">商品尺码</param>
    /// <param name="gdnum">商品数量</param>
    /// <param name="gdp">商品单价</param>
    /// <param name="gdtp">商品总价</param>
    ///<param name="bls">账单状态</param>
    /// <param name="oper">操作人</param>
    /// <returns></returns>
    public Boolean AddBill(string blid,string bltm,string gdid,string gdname,
        string gdc,string gds,string gdnum,string gdp,string gdtp,string bls,string oper)
    {
        Boolean ret = false;
        SqlCommand mycom = new SqlCommand("AddBill");
        mycom.Parameters.AddWithValue("BillID",blid);
        mycom.Parameters.AddWithValue("SaleTime", bltm);
        mycom.Parameters.AddWithValue("GoodID", gdid);
        mycom.Parameters.AddWithValue("GoodName", gdname);
        mycom.Parameters.AddWithValue("GoodColor", gdc);
        mycom.Parameters.AddWithValue("GoodSize", gds);
        mycom.Parameters.AddWithValue("BuyGoodNum", gdnum);
        mycom.Parameters.AddWithValue("GoodPrice", gdp);
        mycom.Parameters.AddWithValue("GoodTotalPrice", gdtp);
        mycom.Parameters.AddWithValue("BillSatuts", bls);
        mycom.Parameters.AddWithValue("Operator", oper);
        ret = db.ExecuteMyUpdate(mycom);
        return ret;
    }
    /// <summary>
    /// 查询添加的账单
    /// </summary>
    /// <param name="blid">账单编号</param>
    /// <returns></returns>
    public DataTable SearchBill(string blid)
    {
        DataTable dt = new DataTable();
        SqlCommand mycom = new SqlCommand("SearchBill");
        mycom.Parameters.AddWithValue("BillID", blid);
        dt = db.ExecutiveMyQuery(mycom, "bl");
        return dt;
    }
    /// <summary>
    /// 查询商品数量
    /// </summary>
    /// <param name="gdid">商品编号</param>
    /// <returns></returns>
    public DataTable CheckGoodNum(string gdid)
    {
        DataTable dt = new DataTable();
        SqlCommand mycom = new SqlCommand("CheckGoodNum");
        mycom.Parameters.AddWithValue("GoodID", gdid);
        dt = db.ExecutiveMyQuery(mycom, "cg");
        return dt;
    }
}