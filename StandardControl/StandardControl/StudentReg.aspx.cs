using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace StandardControl
{
    public partial class StudentReg : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            this.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
            
        }

            

        protected void cvTerms_ServerValidate(object source, ServerValidateEventArgs args)
        {
            args.IsValid = cbTerms.Checked;
        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                Response.Write("✅ Registration successful!");
            }
            else
            {
                Response.Write("❌ Validation failed!");
            }
        }

        protected void cvSubjects_ServerValidate(object source, ServerValidateEventArgs args)
        {
            args.IsValid = cbCsharp.Checked || cbJava.Checked || cbPython.Checked;
            }

        protected void cvGender_ServerValidate(object source, ServerValidateEventArgs args)
        {
            args.IsValid = rbMale.Checked || rbFemale.Checked;
        }
    }
}