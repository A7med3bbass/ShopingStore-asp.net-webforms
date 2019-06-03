using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;


public class OrderClass:MainTable
{
    ClassDB c = new ClassDB();

    #region Fields
    private int _OrderNo;
    private string _EmailAddress;
    private DateTime _OrderDate;
    private string _ShipName;
    private string _ShipCity;
    private string _ShipArea;
    private string _ShipAddress;
    #endregion


    #region Property
    public int OrderNo
    {
        get { return _OrderNo; }
        set { _OrderNo = value; }
    }
   
    public DateTime OrderDate
    {
        get { return _OrderDate; }
        set { _OrderDate = value; }
    }
   
    public string ShipName
    {
        get { return _ShipName; }
        set { _ShipName = value; }
    }
    
    public string ShipCity
    {
        get { return _ShipCity; }
        set { _ShipCity = value; }
    }
    
    public string ShipArea
    {
        get { return _ShipArea; }
        set { _ShipArea = value; }
    }
    
    public string ShipAddress
    {
        get { return _ShipAddress; }
        set { _ShipAddress = value; }
    }
   
    public string EmailAddress
    {
        get { return _EmailAddress; }
        set { _EmailAddress = value; }
    }

    #endregion

    public override bool LoadPropertToList(string TypeOpreation)
    {
        SortedList SL = new SortedList();
        SL.Add("@check", TypeOpreation);
        SL.Add("@OrderNo",OrderNo);
        SL.Add("@ShipName",ShipName);
        SL.Add("@ShipCity",ShipCity);
        SL.Add("@ShipArea",ShipArea);
        SL.Add("@ShipAddress",ShipAddress);
        SL.Add("@EmailAddress",EmailAddress);
      
        ProcedureName = "ManageOrder";
        if (c.RunProcedure(ProcedureName, SL) == 1)
            return true;
        else
            return false;
    }

}