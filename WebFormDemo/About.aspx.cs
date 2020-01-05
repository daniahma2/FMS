using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebFormDemo;

namespace WebFormDemo
{
    public partial class About : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + "Hey, Postback here" + "');", true);

            }
            // These values can come from anywhere, but right now, we just hardcode them
            //Populating static custom control
            SampleControlOne1.UserName = "Jane Doe";
            SampleControlOne1.UserAge = 46;
            SampleControlOne1.UserCountry = "Germany";


            SampleControlOne userInfoBoxControl = (SampleControlOne)LoadControl("~/SampleControlOne.ascx"); //Loading custome control dynamically
            userInfoBoxControl.UserName = "John Doe";
            userInfoBoxControl.UserAge = 78;
            userInfoBoxControl.UserCountry = "Spain";
            phUserInfoBox.Controls.Add(userInfoBoxControl);
        }

        protected void MyEventUserControl_PageTitleUpdated(object sender, EventArgs e)
        {
            this.Title = MyEventUserControl.PageTitle;
        }
    }
}
