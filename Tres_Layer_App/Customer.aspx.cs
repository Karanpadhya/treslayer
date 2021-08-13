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
    public partial class Customer : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            print();
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            int result = 0;
            BoCustomer newcustomer = new BoCustomer
            {
                customer_id = (Int32.Parse(txtID.Value)),
                cust_name = txtCustomerName.Value,
                city = txtCity.Value,
                grade = (Int32.Parse(txtGrade.Value)),
                salesman_id = (Int32.Parse(Txtslsmn.Value))
            };
            BlCustomers blCustomers = new BusinessLogic.BlCustomers();
            result = blCustomers.Newcustomer(newcustomer);
            if (result > 0)
            {
                lblcx.Text = "Record inserted successfullly";

            }
            print();
        }

        private void print()
        {
            BlCustomers recustomer = new BlCustomers();
            var retrivecustomer = new List<BoCustomer>();
            retrivecustomer = recustomer.ReCustomers();
            gvCustomer.DataSource = retrivecustomer;
            gvCustomer.DataBind();
            Bltotalsalesbycx ttsales = new Bltotalsalesbycx();
            var ttsalese = new List<totalsalesbycx>();
            ttsalese = ttsales.ReCustomers();
            gvTotalsales.DataSource = ttsalese;
            gvTotalsales.DataBind();
        }
    }
}