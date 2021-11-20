using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace SingleLayer
{
    public partial class Orders_Backend_ : System.Web.UI.Page
    {
        private string _ConnectionString = ConfigurationManager.ConnectionStrings["InventoryConn"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!Page.IsPostBack)
            {
                BindGridView();
            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int order_no = Convert.ToInt32(TextBox1.Text);
            float purch_amt = float.Parse(TextBox2.Text);
            DateTime ord_date = Convert.ToDateTime(TextBox3.Text);
            int customerId = Convert.ToInt32(TextBox4.Text);
            int SalesmanId = Convert.ToInt32(TextBox5.Text);

            string query = $"insert into orders(order_no, purch_amt, ord_date, customer_id, salesman_id) Values({order_no},{purch_amt},'{ord_date}',{customerId},{SalesmanId});";


            SqlConnection connection = new SqlConnection(_ConnectionString);

            try
            {
                connection.Open();
                SqlCommand cmd = new SqlCommand(query, connection);
                SqlDataAdapter adapter = new SqlDataAdapter(cmd);

                DataTable DT = new DataTable();
                adapter.Fill(DT);

                BindGridView();

                TextBox1.Text = "";
                TextBox2.Text = "";
                TextBox3.Text = "";
                TextBox4.Text = "";
                TextBox5.Text = "";
                TextBox1.Focus();

            }
            catch (Exception ex)
            {

                String msg = "Error: ";
                msg += ex.Message;
                throw new Exception(msg);
            }
            finally
            {
                connection.Close();
            }

        }
        private void BindGridView()
        {
            DataTable DT = new DataTable();
            SqlConnection connection = new SqlConnection(_ConnectionString);
            try
            {
                connection.Open();
                string query = "select * from orders";
                SqlCommand cmd = new SqlCommand(query, connection);

                SqlDataAdapter adapter = new SqlDataAdapter(cmd);
                adapter.Fill(DT);

                if (DT.Rows.Count > 0)
                {
                    GVOrder1.DataSource = DT;
                    GVOrder1.DataBind();
                }
            }
            catch (SqlException ex)
            {
                String msg = "Error: ";
                msg += ex.Message;
                throw new Exception(msg);
            }
            finally
            {
                connection.Close();
            }
        }
    }
}