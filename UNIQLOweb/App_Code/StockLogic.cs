using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
//利用ADO模型访问数据库，ADO的名空间
using System.Data;
using System.Data.SqlClient;

/// <summary>
/// StockLogic 进货逻辑
/// </summary>
public class StockLogic
{
    private DBHelper db = new DBHelper();

	public StockLogic()
	{
		//
		// TODO: 在此处添加构造函数逻辑
		//
	}
    /// <summary>
    /// 添加商品
    /// </summary>
    /// <param name="gdid">商品编号</param>
    /// <param name="gdname">商品名称</param>
    /// <param name="gdc">商品颜色</param>
    /// <param name="gds">商品尺码</param>
    /// <param name="gdp">商品价格</param>
    /// <param name="gdnum">商品数量</param>
    ///<param name="oper">操作人</param>
    /// <returns></returns>
    public Boolean AddGood(string gdid, string gdname, string gdc, string gds, string gdp, string gdnum, string oper)
    {
        Boolean ret = false;
        SqlCommand mycom = new SqlCommand("AddGood");
        mycom.Parameters.AddWithValue("GoodID",gdid);
        mycom.Parameters.AddWithValue("GoodName",gdname);
        mycom.Parameters.AddWithValue("GoodColor",gdc);
        mycom.Parameters.AddWithValue("GoodSize",gds);
        mycom.Parameters.AddWithValue("GoodPrice",gdp);
        mycom.Parameters.AddWithValue("GoodNum", gdnum);
        mycom.Parameters.AddWithValue("Operator", oper);
        ret = db.ExecuteMyUpdate(mycom);
        return ret;
    }
    /// <summary>
    /// 添加商品数量
    /// </summary>
    /// <param name="gdid">商品编号</param>
    /// <param name="gdnum">商品数量</param>
    /// <returns></returns>
    public Boolean AddGoodNum(string gdid, string gdnum)
    {
        Boolean ret = false;
        SqlCommand mycom = new SqlCommand("AddGoodNum");
        mycom.Parameters.AddWithValue("GoodID", gdid);
        mycom.Parameters.AddWithValue("GoodNum", gdnum);
        ret = db.ExecuteMyUpdate(mycom);
        return ret;
    }
    /// <summary>
    /// 查询商品
    /// </summary>
    /// <param name="gdid">商品编号</param>
    /// <returns></returns>
    public DataTable SearchGood(string gdid)
    {
        DataTable dt = new DataTable();
        SqlCommand mycom = new SqlCommand("SearchGood");
        mycom.Parameters.AddWithValue("GoodID", gdid);
        dt = db.ExecutiveMyQuery(mycom, "sg");
        return dt;
    }
    /// <summary>
    /// 查询商品是否存在
    /// </summary>
    /// <param name="gdid">商品编号</param>
    /// <returns></returns>
    public Boolean SearchGoodExist(string gdid)
    {
        Boolean ret = false;
        DataTable dt = new DataTable();
        SqlCommand mycom = new SqlCommand("SearchGood");
        mycom.Parameters.AddWithValue("GoodID", gdid);
        dt = db.ExecutiveMyQuery(mycom, "sge");
        if (dt.Rows.Count > 0)
            ret = true;
        return ret;
    }
/// <summary>
    /// 显示所有商品
/// </summary>
/// <returns></returns>
    public DataTable ShowGood()
    {
        DataTable dt = new DataTable();
        SqlCommand mycom = new SqlCommand("ShowGood");
        dt = db.ExecutiveMyQuery(mycom,"shg");
        return dt;
    }
    /// <summary>
    /// 删除商品
    /// </summary>
    /// <param name="gdid">商品编号</param>
    /// <returns></returns>
    public Boolean DeleteGood(string gdid)
    {
        Boolean ret = false ;
        SqlCommand mycom = new SqlCommand("DeleteGood");
        mycom.Parameters.AddWithValue("GoodID", gdid);
        ret = db.ExecuteMyUpdate(mycom);
        return ret;
    }
}
