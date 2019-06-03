using System;
using System.Collections;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

public class ClassDB
{
       SqlConnection con = new SqlConnection();
       SqlCommand cmd = new SqlCommand();
       DataTable TBL;
    private void InChalaization(CommandType CT,string DbCall)
    {
       
         
             con.ConnectionString=ConfigurationManager.ConnectionStrings[1].ToString();
             cmd.Connection=con;
             cmd.CommandType=CT;
             cmd.CommandText=DbCall;

       

     con.Open();

    }

       
    public int RunProcedure(string ProcedureName,SortedList ParaValues)
    {

        InChalaization(CommandType.StoredProcedure, ProcedureName);
       
        for (int x = 0; x < ParaValues.Count; x++)
           
                cmd.Parameters.AddWithValue(ParaValues.GetKey(x).ToString(), ParaValues.GetByIndex(x));
           

        return RunUpdate();
    
    }

    public int RunUpdate(string InsUpdDel)
    {

        InChalaization(CommandType.Text, InsUpdDel);
         return RunUpdate();
    
    
    }

    private int RunUpdate()
    {

        try
        {
            int x = cmd.ExecuteNonQuery();
            con.Close();
            return x;
        }
        catch (SqlException ex)
        {
            con.Close();
            return ex.Number;

        }
                    
    
    
    
    }

    public DataTable RunSelect(string Select)
    {

        InChalaization(CommandType.Text,Select);
        TBL = new DataTable();
        TBL.Load(cmd.ExecuteReader());
        con.Close();
        return TBL;
    
    }

    
}