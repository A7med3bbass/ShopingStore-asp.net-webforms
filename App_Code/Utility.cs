using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;


public class Utility
{
    #region Cookies
    public static void CreateCookies(string CookName,string[] Keys,string[] Values,bool Expired,HttpResponse Res)
    {
        HttpCookie Cok = new HttpCookie(CookName);
        if (Keys != null)
        {
           
            for (int x = 0; x < Keys.Length; x++)
                Cok.Values.Add(Keys[x], Values[x]);
            if (!Expired)
                Cok.Expires = DateTime.Now.AddYears(5);
        }else
            Cok.Expires = DateTime.Now.AddYears(-15);
            Res.Cookies.Add(Cok);
    }
    public static string ReadCookies(string CookName,string Kye,HttpRequest Req)
    {
        try
        {
            return Req.Cookies[CookName][Kye].ToString();
        }
        catch 
        {
            return null;
        }
           
        
    }
    public static void RemoveCookies(string CookName,HttpResponse Res)
    {
        CreateCookies(CookName, null, null, false,Res);
    }
    #endregion
}