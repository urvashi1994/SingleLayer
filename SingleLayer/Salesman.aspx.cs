using System;
using System.Collections.Generic;
using System.Linq;
using System.Data;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

namespace SingleLayer
{
    public partial class Salesman : System.Web.UI.Page
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
            int SalesmanId = Convert.ToInt32(TextBox1.Text);
            string name = TextBox2.Text;
            string city = TextBox3.Text;
            float commission = float.Parse(TextBox4.Text);

            string query = $"insert into salesman(salesman_id, name, city, commission) Values({SalesmanId},'{name}','{city}',{commission});";
           
           
            SqlConnection connection = new SqlConnection(_ConnectionString);

            try
            {
                connection.Open();
                SqlCommand cmd = new SqlCommand(query, connection);
                SqlDataAdapter adapter = new SqlDataAdapter(cmd);

                DataTable DT = new DataTable();
                adapter.Fill(DT);

                BindGridView();

                TextBox2.Text = "";
                TextBox1.Text = "";
                TextBox3.Text = "";
                TextBox4.Text = "";
                TextBox1.Focus();

            }
            catch(Exception ex)
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
                string query = "select * from salesman";
                SqlCommand cmd = new SqlCommand(query, connection);

                SqlDataAdapter adapter = new SqlDataAdapter(cmd);
                adapter.Fill(DT);

                if (DT.Rows.Count > 0)
                {
                    GVSalesman1.DataSource = DT;
                    GVSalesman1.DataBind();
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