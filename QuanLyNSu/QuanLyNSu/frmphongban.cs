using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using static System.Windows.Forms.VisualStyles.VisualStyleElement;

namespace QuanLyNSu
{
    public partial class frmphongban : Form
    {
        Clsdatabase cls = new Clsdatabase();
        public frmphongban()
        {
            InitializeComponent();
        }

        private void btnmoi_Click(object sender, EventArgs e)
        {
           
        }

        private void btnthem_Click(object sender, EventArgs e)
        {
            try
            {
                if (!cls.kttrungkhoa(txtmaphong.Text, "select MaPhong from TblPhongBan"))
                {
                    string insert = "insert into TblPhongBan values('" + txtmabophan.Text + "',N'" + txtmaphong.Text + "',N'" + txttenphong.Text + "',N'" + dateTimePicker1.Text + "',N'" + txtghichu.Text + "')";
                    cls.thucthiketnoi(insert);
                    cls.loaddatagridview(dataGridView1, "select * from TblPhongBan");
                }
                else
                {
                    MessageBox.Show("Mã phòng này đã tòn tại bạn có thể thử mã phòng khác", "Trùng mã phòng", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                }
            }
            catch
            {
                MessageBox.Show("Dữ liệu đầu vào không đúng");
            }
        }

        private void btnsua_Click(object sender, EventArgs e)
        {
            try
            {
                string update = "update TblPhongBan set MaBoPhan=N'" + txtmabophan.Text + "',TenPhong=N'" + txttenphong.Text + "',NgayThanhLap=N'" + dateTimePicker1.Text + "',GhiChu=N'" + txtghichu.Text + "' where MaPhong=N'" + txtmaphong.Text + "'";
                cls.thucthiketnoi(update);
                cls.loaddatagridview(dataGridView1, "select * from TblPhongBan");
                MessageBox.Show("Sửa thành công");
            }
            catch
            {
                MessageBox.Show("Dữ liệu đầu vào không đúng");
            }
        }

        private void btnthoat_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        private void btnxoa_Click(object sender, EventArgs e)
        {
            try
            {
                string del = "delete from TblPhongBan where MaPhong=N'" + txtmaphong.Text + "'";
                if (MessageBox.Show("Bạn có chắc chắn muốn xóa không", "Xóa dữ liệu", MessageBoxButtons.YesNo, MessageBoxIcon.Warning) == DialogResult.Yes)
                {
                    cls.thucthiketnoi(del);
                    cls.loaddatagridview(dataGridView1, "select * from TblPhongBan");
                }
            }
            catch
            {
                MessageBox.Show("Dữ liệu đầu vào không đúng");
            }
        }
    }
}
