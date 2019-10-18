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
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }
        SqlConnection baglanti = new SqlConnection("Server=.;Database=AracKiralama;uid=sa;pwd=1234");
        private void button1_Click(object sender, EventArgs e)
        {
            SqlCommand komut = new SqlCommand();
            komut.Connection = baglanti;
            komut.CommandType = CommandType.StoredProcedure;
            komut.CommandText = "Getir";
            komut.Parameters.AddWithValue("KullaniciAdi", textBox1.Text);
            komut.Parameters.AddWithValue("KullaniciSifre", textBox2.Text);
            komut.Parameters.AddWithValue("AdminTipi", comboBox1.SelectedItem.ToString());
            SqlDataReader dr;
            baglanti.Open();
            dr = komut.ExecuteReader();
            if (dr.Read())
            {
                if (comboBox1.SelectedItem.ToString() == "Admin")
                {
                    AdminOturum git = new AdminOturum();
                    git.Show();
                    this.Hide();
                }
                else
                {
                    MusteriOturum git = new MusteriOturum();
                    git.Show();
                    this.Hide();
                }
                araclar a = new araclar();
                //a.label19.Text = dr["Admin"].ToString();
            }
            else
            {
                MessageBox.Show("Hatalı Giriş Yaptınız Tekrar Deneyiz..");
                textBox1.Text = "";
                textBox2.Text = "";
            }
            baglanti.Close();
        }

        private void button2_Click(object sender, EventArgs e)
        {

            baglanti.Open();
            SqlCommand ekle = new SqlCommand();
            ekle.Connection = baglanti;
            ekle.CommandType = CommandType.StoredProcedure;
            ekle.CommandText = "AdminEkle";
            ekle.Parameters.AddWithValue("Ad", textBox3.Text);
            ekle.Parameters.AddWithValue("Soyad", textBox4.Text);
            ekle.Parameters.AddWithValue("Email", textBox5.Text);
            ekle.Parameters.AddWithValue("KullaniciAdi", textBox6.Text);
            ekle.Parameters.AddWithValue("KullaniciSifre", textBox7.Text);
            ekle.Parameters.AddWithValue("AdminTipi", "Müşteri");
            ekle.ExecuteNonQuery();
            temizle();
            baglanti.Close();
        }
        public void temizle()
        {
            textBox3.Text = "";
            textBox4.Text = "";
            textBox5.Text = "";
            textBox6.Text = "";
            textBox7.Text = "";
        }

        private void üyeOlToolStripMenuItem_Click(object sender, EventArgs e)
        {
            MusteriOturum git = new MusteriOturum();
            git.Show();
            this.Hide();
        }

        private void çıkışToolStripMenuItem_Click(object sender, EventArgs e)
        {
            Application.Exit();
        }

        private void Form1_Load(object sender, EventArgs e)
        {

        }
    }
}
