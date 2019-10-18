using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Data.SqlClient;

namespace _27._03AdoNetProje
{
    public partial class AdminOturum : Form
    {
        public AdminOturum()
        {
            InitializeComponent();
        }
        SqlConnection baglanti = new SqlConnection("Server=.;Database=AracKiralama;uid=sa;pwd=1234");


        private void textBox6_TextChanged(object sender, EventArgs e)
        {

        }

        private void AdminOturum_Load(object sender, EventArgs e)
        {
        }

        private void araçEklemeToolStripMenuItem_Click(object sender, EventArgs e)
        {
            AdminArac git = new AdminArac();
            git.Show();
            this.Hide();
        }

        private void araçSilmeToolStripMenuItem_Click(object sender, EventArgs e)
        {
            AdminVeri git = new AdminVeri();
            git.Show();
            this.Hide();

        }

        private void anasayfaToolStripMenuItem_Click(object sender, EventArgs e)
        {
            Form1 a = new Form1();
            a.Show();
            this.Hide();
        }

        private void çıkışToolStripMenuItem_Click(object sender, EventArgs e)
        {
            Application.Exit();
        }
    }
}
