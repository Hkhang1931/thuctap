using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Media;
using static System.Windows.Forms.VisualStyles.VisualStyleElement;

namespace QuanLyNSu
{
    public partial class frmthongtincanhan : Form
    {
        Clsdatabase cls = new Clsdatabase();
        public frmthongtincanhan()
        {
            InitializeComponent();
        }

        private void btnthoat_Click(object sender, EventArgs e)
        {
            this.Close();
        }
        private void frmthongtincanhan_Load(object sender, EventArgs e)
        {

            cls.loaddatagridview(dataGridView1, "select * from TblTTCaNhan");
            cls.loadcombobox(textBox1, "select * from TblTTNVCoBan", 2);
        }
        private void btnsua_Click(object sender, EventArgs e)
        {
            try
            {
                string update = "update TblTTCaNhan set manv=N'" + textBox1.Text + "',hoten=N'" + textBox2.Text + "',noisinh=N'" + textBox3.Text + "',dantoc=N'" + textBox4.Text + "',tongiao=N'" + textBox5.Text + "',dcthuongchu=N'" + textBox6.Text + "',dctamchu=N'" + textBox7.Text + "',nguyenquan=N'" + textBox8.Text + "',quoctich=N'" + textBox9.Text + "',hocvan=N'" + textBox10.Text + "',sdt=N'" + textBox11.Text + "',ghichu=N'" + textBox12.Text + "' where manv=N'" + textBox1.Text + "'";
                cls.thucthiketnoi(update);
                cls.loaddatagridview(dataGridView1, "select * from TblTTCaNhan");
                MessageBox.Show("Sửa thành công");
            }
            catch
            {
                MessageBox.Show("Dữ liệu đầu vào không đúng");
            }
        }

        private void btnxoa_Click(object sender, EventArgs e)
        {
            try
            {
                string delete = "delete from TblTTCaNhan where manv=N'" + textBox1.Text + "'";
                if (MessageBox.Show("ban co muon xoa khong", "xoa du lieu", MessageBoxButtons.YesNo, MessageBoxIcon.Warning) == DialogResult.Yes)
                {
                    cls.thucthiketnoi(delete);
                    cls.loaddatagridview(dataGridView1, "select * from TblTTCaNhan");
                }
            }
            catch
            {
                MessageBox.Show("khong xoa duoc");
            }
        }

        private void btnmoi_Click(object sender, EventArgs e)
        {
            foreach (Control ctr in this.groupBox1.Controls)
            {
                if ((ctr is TextBox) || (ctr is DateTimePicker) || (ctr is ComboBox))
                {
                    ctr.Text = "";
                }
            }
        }
        private void dataGridView1_CellClick(object sender, DataGridViewCellEventArgs e)
        {



            try
            {
                int hang = e.RowIndex;
                textBox1.Text = dataGridView1.Rows[hang].Cells[1].Value.ToString();
                textBox2.Text = dataGridView1.Rows[hang].Cells[2].Value.ToString();
                textBox3.Text = dataGridView1.Rows[hang].Cells[3].Value.ToString();
                textBox4.Text = dataGridView1.Rows[hang].Cells[4].Value.ToString();
                textBox5.Text = dataGridView1.Rows[hang].Cells[5].Value.ToString();
                textBox6.Text = dataGridView1.Rows[hang].Cells[6].Value.ToString();
                textBox7.Text = dataGridView1.Rows[hang].Cells[7].Value.ToString();
                textBox8.Text = dataGridView1.Rows[hang].Cells[8].Value.ToString();
                textBox9.Text = dataGridView1.Rows[hang].Cells[9].Value.ToString();
                textBox10.Text = dataGridView1.Rows[hang].Cells[10].Value.ToString();
                textBox11.Text = dataGridView1.Rows[hang].Cells[11].Value.ToString();
                textBox12.Text = dataGridView1.Rows[hang].Cells[11].Value.ToString();
                //

            }
            catch (Exception)
            { }

        }

        private void frmthongtincanhan_Load_1(object sender, EventArgs e)
        {
            cls.loaddatagridview(dataGridView1, "select * from TblTTCaNhan");
            cls.loadcombobox(textBox1, "select * from TblTTNVCoBan", 2);
        }
    }
}
