using System;
using System.Collections;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;


public class ProductClass:MainTable
{
    ClassDB c = new ClassDB();

    #region Fields
    private string _CatNo;
    private string _ProdDescription;
    private string _ProdNo;
    private string _ProdName;
    private decimal _ProdPrice;
    private int _ProdQuantity;
    private DateTime _ProdAddDate;

    #endregion

    #region Property
    public string CatNo
    {
        get { return _CatNo; }
        set { _CatNo = value; }
    }
  
    public string ProdNo
    {
        get { return _ProdNo; }
        set { _ProdNo = value; }
    }
    
    public string ProdName
    {
        get { return _ProdName; }
        set { _ProdName = value; }
    }
   
    public decimal ProdPrice
    {
        get { return _ProdPrice; }
        set { _ProdPrice = value; }
    }
   
    public int ProdQuantity
    {
        get { return _ProdQuantity; }
        set { _ProdQuantity = value; }
    }
   
    public DateTime ProdAddDate
    {
        get { return DateTime.Now; }
        
    }
   
    public string ProdDescription
    {
        get { return _ProdDescription; }
        set { _ProdDescription = value; }
    }

    #endregion

    public DataTable Search(string Field, string Values)
    {
        string Query = String.Format("Select * From Product where {0} Like '%{1}%' ", Field, Values);
        return Search(Query);
    }

    public bool RemoveProduct(string ProductNo)
    {
        return Delete();
    }
    public string GetNextProdNo()
    {

        string Query = "Select Max (ProdNo)+1 From Product";
        return Search(Query).Rows[0][0].ToString();
    }

    public override bool LoadPropertToList(string TypeOpreation)
    {
        SortedList SL = new SortedList();
        SL.Add("@check", TypeOpreation);
        SL.Add("@CatNo",CatNo);
        SL.Add("@ProdNo", ProdNo);
        SL.Add("@ProdName", ProdName);
        SL.Add("@ProdPrice", ProdPrice);
        SL.Add("@ProdQuantity", ProdQuantity);
        SL.Add("@ProdAddDate",ProdAddDate);
        SL.Add("@ProdDescription",ProdDescription);

        ProcedureName = "ManageProduct";
        if (c.RunProcedure(ProcedureName, SL) == 1)
            return true;
        else
            return false;
    }

    public bool Find(string CatNo, string ProdNo)
    {
        string Query = String.Format("SELECT * FROM [Product] Where CatNo='{0}' and ProdNo='{1}'", CatNo,ProdNo);

       DataTable tbl=Search(Query);
       if (tbl.Rows.Count == 0)
       {

           return false;
       }
       else 
       {
           
          
           this.CatNo = tbl.Rows[0][0].ToString();
           this.ProdNo = tbl.Rows[0][1].ToString();
           this.ProdName = tbl.Rows[0][2].ToString();
           this.ProdPrice = Convert.ToDecimal(tbl.Rows[0][3].ToString());
           this.ProdQuantity = Convert.ToInt16(tbl.Rows[0][4].ToString());
           this.ProdDescription = tbl.Rows[0][6].ToString();
           return true;
       }
    }


    public int ProCount()
    {
        DataTable tbl= c.RunSelect("SELECT Count(*) FROM [Product]");
        return Convert.ToInt16(tbl.Rows[0][0].ToString());
    }
    public decimal MaxPriceProduct()
    {
        DataTable tbl = c.RunSelect("SELECT Max(ProdPrice) FROM [Product]");
        return Convert.ToDecimal(tbl.Rows[0][0].ToString());
    }
    public string  MaxPriceProductName()
    {
        DataTable tbl = c.RunSelect("SELECT (ProdName) FROM [Product] Where ProdPrice="+MaxPriceProduct());
        return tbl.Rows[0][0].ToString();
    }
  

}