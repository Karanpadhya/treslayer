using System;
using BusinessObjects;
using BusinessLogic;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Tres_Layer_App
{
    public partial class Salesman : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            print();
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            int result = 0;
            BoSalesman newsalesman = new BoSalesman()
            {
                salesman_id = (Int32.Parse(txtID.Value)),
                salesman_name = txtSalesmanName.Value,
                city = txtCity.Value,
                commission = (double.Parse(txtCommission.Value))
            };

            BlSalesman salesman = new BlSalesman();
            result = salesman.newsalesman(newsalesman);
            if (result > 0)
            {
                lblslsmn.Text = "Record inserted successfullly";

            }
            print();

          

           
        }
        private void print()
        {
            BlSalesman resaleaman = new BlSalesman();
            var retrivesalesman = new List<BoSalesman>();
            retrivesalesman = resaleaman.Resalesman();
            gvsalesman.DataSource = retrivesalesman;
            gvsalesman.DataBind();
        }

    }
}