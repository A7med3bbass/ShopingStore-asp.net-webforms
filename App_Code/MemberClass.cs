using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.ComponentModel;
using System.Data;
using System.Collections;


public class MemberClass:MainTable
{
    ClassDB c = new ClassDB();

   #region Fields --------------------------------
    private string _Firstname;
    private string _Lastname;
    private string _Email;
    private string _Password;
#endregion 


   #region Property --------------------------
    public string Firstname
    {
        get { return _Firstname; }
        set { _Firstname = value; }
    }
    public string Lastname
    {
        get { return _Lastname; }
        set { _Lastname = value; }
    }
    public string Email
    {
        get { return _Email; }
        set { _Email = value; }
    }
    public string Password
    {
        get { return _Password; }
        set { _Password = value; }
    }
    #endregion 

    public string Register(string Firstname, string Lastname, string Emai, string Password)
    {

        this.Firstname = Firstname;
        this.Lastname = Lastname;
        this.Email = Emai;
        this.Password = Password;
        return Register();
       
    }

    public string Register()
    {

        if (Add())

            return "User Added Succefully";
        else

            return "This Email Is Token ,Please Change Email And Try Again !";
    
    }

    public bool Login(string Email, string Password)
    {
        string Query = String.Format("Select * From Member Where EmailAddress='{0}' and Password='{1}'",Email,Password);
        if (c.RunSelect(Query).Rows.Count == 1)
            return true;
        else
            return false;


    }
    public bool Login()
    {

      return Login(Email, Password);
    
    
    }
    public DataTable Search(string Field,string Values)
    {
       
        string query = String.Format("Select * From Member Where EmailAddress like '%{1}%' ",Field,Values);
        return Search(query);
    }

    public bool Delete(string Email)
    {
        this.Email = Email;
        return Delete();
    
    }

    public override bool LoadPropertToList(string TypeOpreation)
    {
        SortedList SL = new SortedList();
        SL.Add("@check", TypeOpreation);
        SL.Add("@FirstName",Firstname);
        SL.Add("@LastName",Lastname);
        SL.Add("@EmailAddress",Email);
        SL.Add("@Password",Password);

        ProcedureName = "ManageMember";

        if (c.RunProcedure(ProcedureName, SL) == 1)
            return true;
        else
            return false;
    }


}