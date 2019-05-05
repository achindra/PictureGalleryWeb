using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Diagnostics;
using System.IO;

public partial class PhotoBooth : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.HttpMethod.Equals("POST"))
        {
            HttpPostedFile postedFile = Request.Files[0];
            string filePath = Server.MapPath("~/" + Session.SessionID + Path.GetFileName(postedFile.FileName));
            postedFile.SaveAs(filePath);

            Process process = new Process();
            process.StartInfo.FileName = Request.Form["Badge_Template"].ToString();
            process.StartInfo.Arguments = "/C " + filePath;
            process.StartInfo.CreateNoWindow = true;
            process.StartInfo.UseShellExecute = false;
            process.StartInfo.RedirectStandardError = true;
            process.StartInfo.RedirectStandardInput = true;
            process.StartInfo.RedirectStandardOutput = true;
            process.Start();
            process.WaitForExit();
            string output = process.StandardOutput.ReadToEnd();
            Response.Write(output);
            process.Close();

            File.Delete(filePath);            
        }
    }
}