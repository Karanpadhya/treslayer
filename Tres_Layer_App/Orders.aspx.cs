
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BusinessLogic;
using BusinessObjects;

namespace Tres_Layer_App
{
    public partial class Orders : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            print();

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            int result = 0;
            Boorder newOrders = new Boorder()
            {

            order_no = (Int32.Parse(txtorderID.Value)),
            purchase_amt = (Double.Parse(txtpurchaseamnt.Value)),
            ord_date = (DateTime.Parse(txtorddate.Value)),
            customer_id = (Int32.Parse(txtcustomerid.Value)),
            salesman_id = Int32.Parse(txtsalesmanid.Value)

            };

            BlOrders Ologic = new BlOrders();
            result =  Ologic.Neworder(newOrders);
            if (result > 0)
            {
                lblprint.Text = "Record inserted successfullly";

            }

            print();
        }
        private void print()
        {
            BlOrders reorders = new BlOrders();
            var retriveorders = new List<Boorder>();
            retriveorders = reorders.ReOrders();
            gvOrders.DataSource = retriveorders;
            gvOrders.DataBind();
        }
    }
}