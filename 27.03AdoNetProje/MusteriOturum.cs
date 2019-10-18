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
    public partial class MusteriOturum : Form
    {
        public MusteriOturum()
        {
            InitializeComponent();
        }
        SqlConnection baglanti = new SqlConnection("Server=.;Database=AracKiralama;uid=sa;pwd=1234");
        private void comboBox1_SelectedIndexChanged(object sender, EventArgs e)
        {
            groupBox1.Visible = true;
            SqlCommand listele = new SqlCommand();
            listele.Connection = baglanti;
            listele.CommandType = CommandType.StoredProcedure;
            listele.CommandText = "OfisListeleİlce";
            listele.Parameters.AddWithValue("@OfisID", comboBox1.SelectedIndex+1);
            SqlDataReader dr;
            baglanti.Open();
            dr = listele.ExecuteReader();
            while (dr.Read())
            {
                textBox1.Text = dr["Ofisİl"].ToString();
                textBox2.Text = dr["Ofisİlce"].ToString();
                textBox3.Text = dr["Telefon"].ToString();
                textBox4.Text = dr["CalısmaSaatiBaslangıc"].ToString() + "-" +dr["CalısmaSaatiBitis"].ToString();
                textBox5.Text = dr["Adres"].ToString();
            }
            baglanti.Close();
        }

        private void MusteriOturum_Load(object sender, EventArgs e)
        {
            groupBox1.Visible = false;
            SqlCommand listele = new SqlCommand();
            listele.Connection = baglanti;
            listele.CommandType = CommandType.StoredProcedure;
            listele.CommandText = "OfisListele";
            SqlDataReader dr;
            baglanti.Open();
            dr = listele.ExecuteReader();
            while (dr.Read())
            {                
                comboBox1.Items.Add(dr["Ofisİl"].ToString()+" "+dr["Ofisİlce"].ToString());  
                
            }
            baglanti.Close();
        }

        private void button1_Click_1(object sender, EventArgs e)
        {
            araclar git = new araclar();
            TimeSpan kalangu = dateTimePicker2.Value - dateTimePicker1.Value;
            double saat = kalangu.TotalDays;
            git.label8.Text = saat.ToString();
            git.Show();
            this.Hide();
        }

        private void dateTimePicker1_ValueChanged(object sender, EventArgs e)
        {
            DateTime a = DateTime.Now;
            if (dateTimePicker1.Value < a)
            {
                MessageBox.Show("Bugünden Sonraki Tarihleri Seçebilirsiniz");
            }
        }

        private void dateTimePicker2_ValueChanged(object sender, EventArgs e)
        {

        }

        private void dateTimePicker2_ValueChanged_1(object sender, EventArgs e)
        {
            DateTime a = DateTime.Now;
            if (dateTimePicker1.Value < a)
            {
                MessageBox.Show("Bugünden Sonraki Tarihleri Seçebilirsiniz");
            }
        }

        private void label20_Click(object sender, EventArgs e)
        {
            Form1 a = new Form1();
            a.Show();
            this.Hide();
        }
    }
}
