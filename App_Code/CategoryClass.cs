using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;


public class CategoryClass:MainTable
{
    ClassDB c=new ClassDB ();

  #region Fields

    private string _catNo;
    private string _CatName;
    private string _CatDescription;
   
  #endregion


  #region Property

    public string CatNo
    {
        get { return _catNo; }
        set { _catNo = value; }
    }
  
    public string CatName
    {
        get { return _CatName; }
        set { _CatName = value; }
    }
    public string CatDescription
    {
        get { return _CatDescription; }
        set { _CatDescription = value; }
    }
   

    #endregion



    public override bool LoadPropertToList(string TypeOpreation)
    {
        SortedList SL = new SortedList();
        SL.Add("@check",TypeOpreation);
        SL.Add("@CatNo",CatNo);
        SL.Add("@CatName",CatName);
        SL.Add("@CatDesc",CatDescription);

        ProcedureName="ManageCategory";
        if (c.RunProcedure(ProcedureName, SL) == 1)
            return true;
        else
            return false;
    }

    public DataTable Search(string Field, string Values)
    {
        string Query=String.Format("Select * From Category where {0} Like '%{1}%' ",Field,Values);
       return Search(Query);
    }

    public bool RemoveCategory(string CatNumber)
    {

        this.CatNo = CatNumber;
        return Delete();
    
    }





    public string GetNextCatNo()
    {
        string Query = "Select Max (CatNo)+1 From Category";
        return Search(Query).Rows[0][0].ToString();
    }
}