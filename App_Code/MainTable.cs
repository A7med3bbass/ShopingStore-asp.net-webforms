using System;
using System.Collections;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;


public abstract class MainTable
{
    ClassDB c = new ClassDB();
   protected string ProcedureName;

    public virtual bool LoadPropertToList(string TypeOpreation)
    {
        return false;

    }


	public bool Add()
	{
		return LoadPropertToList("a");
	}


    public bool Delete()
    {
        return LoadPropertToList("d");
    }


    public bool UpDate()
    {
       return LoadPropertToList("u");
    }

    public DataTable Search(string Query)
    {
        try
        {
            return c.RunSelect(Query);
        }
        catch
        {

            return new DataTable();
        }

    }


    
}