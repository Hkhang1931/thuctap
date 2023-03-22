using System.Drawing;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using System.Data.SqlClient;
using System.Data.Sql;

namespace QuanLyNSu
{
    public partial class frmdangnhap : Form
    {
        Clsadatabase cls = new Clsadatabase();
        private SqlConnection Con = null;
        public frmdangnhap()
        {
            InitializeComponent();
        }

        private void btndangnhap_Click(object sender, EventArgs e)
        {
            Con = new SqlConnection();
            Con.ConnectionString = @"Data Source=HKHANG\KHANG;Initial Catalog=QuanLyNS;Integrated Security=True";
            Con.Open();
            string select = "Select * From tbuser where tbuser='" + txttendangnhap.Text + "' and Pass='" + txtmatkhau.Text + "' and quyen='Admin'";
            SqlCommand cmd = new SqlCommand(select, Con);
            SqlDataRead reader = cmd.ExecuteReader();
            if (reader.Read())
            {
                reader.Read();
                MessageBox.Show("dang nhap vao he thong (Quyen Admin) !", "Thong bao !");
                frmMain.quyen = "Admin";
                this.Hide();
                this.Close();
            }
            else
            {
                MessageBox.Show("dang nhap vao he thong (Quyen User)!", "Thong bao !");
                frmMain.quyen = "user";
                this.Hide();
                this.Close();
            }
            frmMain frm = new frmMain();
            //frm.Show();
            frm.ShowDialog();
            cmd.Dispose();
            reader.Close();
            reader.Dispose();


        }
    
    }
}