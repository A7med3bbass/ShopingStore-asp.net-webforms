using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;


public class OrderDetailClass:MainTable
{

    ClassDB c = new ClassDB();

    #region Fields
    private int _CatNo;
    private int _ProdNo;
    private int _OrderNo;
    private int _Quantity;
    private double _SellPrice;
    private decimal _Descount;
    #endregion

    #region Property
    public int CatNo
    {
        get { return _CatNo; }
        set { _CatNo = value; }
    }
   
    public int ProdNo
    {
        get { return _ProdNo; }
        set { _ProdNo = value; }
    }
    
    public int OrderNo
    {
        get { return _OrderNo; }
        set { _OrderNo = value; }
    }
   
    public int Quantity
    {
        get { return _Quantity; }
        set { _Quantity = value; }
    }
   
    public double SellPrice
    {
        get { return _SellPrice; }
        set { _SellPrice = value; }
    }
   
    public decimal Descount
    {
        get { return _Descount; }
        set { _Descount = value; }
    }
    #endregion

    public override bool LoadPropertToList(string TypeOpreation)
    {
        SortedList SL = new SortedList();
        SL.Add("@check", TypeOpreation);
        SL.Add("@CatNo", CatNo);
        SL.Add("@ProdNo", ProdNo);
        SL.Add("@OrderNo", OrderNo);
        SL.Add("@PQuantity",Quantity);
        SL.Add("@SellPrice",SellPrice);
        SL.Add("@Descount", Descount);

        ProcedureName = "ManageOrderDetails";
        if (c.RunProcedure(ProcedureName, SL) == 1)
            return true;
        else
            return false;
    }
}