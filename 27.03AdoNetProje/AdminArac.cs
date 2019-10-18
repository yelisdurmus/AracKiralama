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
    public partial class AdminArac : Form
    {
        public AdminArac()
        {
            InitializeComponent();
        }
        SqlConnection baglanti = new SqlConnection("Server=.;Database=AracKiralama;uid=sa;pwd=1234");
        private void button6_Click(object sender, EventArgs e)
        {
            baglanti.Open();
            SqlCommand ekle = new SqlCommand();
            ekle.Connection = baglanti;
            ekle.CommandType = CommandType.StoredProcedure;
            ekle.CommandText = "AracEkle";            
            ekle.Parameters.AddWithValue("AracTipi", textBox3.Text);
            ekle.Parameters.AddWithValue("VitesTipi", textBox4.Text);
            ekle.Parameters.AddWithValue("YakitTipi", textBox5.Text);
            ekle.Parameters.AddWithValue("Marka", textBox1.Text);
            ekle.Parameters.AddWithValue("Model", textBox2.Text);
            
            ekle.Parameters.AddWithValue("AracYas", textBox6.Text);
            
            ekle.Parameters.AddWithValue("EhliyetTipi", textBox8.Text);
            ekle.Parameters.AddWithValue("EhliyetYas", textBox7.Text);
            ekle.Parameters.AddWithValue("OfisID", comboBox2.SelectedItem);
            ekle.Parameters.AddWithValue("AracRenk", textBox9.Text);
            ekle.Parameters.AddWithValue("Fiyat", textBox10.Text);           
            ekle.Parameters.AddWithValue("durum", comboBox3.SelectedItem);
            ekle.ExecuteNonQuery();
            Listele("select*from Araclar");
            baglanti.Close();
            guncelle();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            baglanti.Open();
            SqlCommand ekle = new SqlCommand();
            ekle.Connection = baglanti;
            ekle.CommandType = CommandType.StoredProcedure;
            ekle.CommandText = "AracSil";
            ekle.Parameters.AddWithValue("@AracID", comboBox1.SelectedItem);
            ekle.ExecuteNonQuery();
            baglanti.Close();
        }
        public void Listele(string ulas)
        {
            SqlDataAdapter da = new SqlDataAdapter(ulas, baglanti);
            DataTable doldur = new DataTable();
            da.Fill(doldur);
            dataGridView1.DataSource = doldur;
        }
        public void temizle()
        {
            comboBox1.Text = "";
            comboBox2.Text = "";
            textBox2.Text = "";
            textBox1.Text = "";
            textBox3.Text = "";
            textBox4.Text = "";
            textBox5.Text = "";
            textBox6.Text = "";
            textBox7.Text = "";
            textBox8.Text = "";
            textBox9.Text = "";
            textBox10.Text = "";
            
        }
        public void guncelle()
        {
            comboBox1.Items.Clear();
            comboBox2.Items.Clear();
            temizle();
            baglanti.Open();
            SqlCommand komut = new SqlCommand("select AracID from Araclar", baglanti);
            SqlDataReader dr;
            dr = komut.ExecuteReader();
            while (dr.Read())
            {
                comboBox1.Items.Add(dr["AracID"]);
            }
            baglanti.Close();
            baglanti.Open();
            SqlCommand komut1 = new SqlCommand("select OfisID from Ofisler", baglanti);
            SqlDataReader drr;
            drr = komut1.ExecuteReader();
            while (drr.Read())
            {
                comboBox2.Items.Add(drr["OfisID"]);
            }
            baglanti.Close();
        }
        private void button3_Click(object sender, EventArgs e)
        {
            Listele("select*from Araclar");
        }

        private void label2_Click(object sender, EventArgs e)
        {
            AdminOturum ad = new AdminOturum();
            ad.Show();
            this.Hide();
        }

        private void button4_Click(object sender, EventArgs e)
        {
            baglanti.Open();
            SqlCommand ekle = new SqlCommand();
            ekle.Connection = baglanti;
            ekle.CommandType = CommandType.StoredProcedure;
            ekle.CommandText = "AracGuncelle";
            ekle.Parameters.AddWithValue("AracID", comboBox1.SelectedItem);
            ekle.Parameters.AddWithValue("AracTipi", textBox3.Text);
            ekle.Parameters.AddWithValue("VitesTipi", textBox4.Text);
            ekle.Parameters.AddWithValue("YakitTipi", textBox5.Text);
            ekle.Parameters.AddWithValue("Marka", textBox1.Text);
            ekle.Parameters.AddWithValue("Model", textBox2.Text);

            ekle.Parameters.AddWithValue("AracYas", textBox6.Text);
            
            ekle.Parameters.AddWithValue("EhliyetTipi", textBox8.Text);
            ekle.Parameters.AddWithValue("EhliyetYas", textBox7.Text);
            ekle.Parameters.AddWithValue("OfisID", comboBox2.SelectedItem);
            ekle.Parameters.AddWithValue("AracRenk", textBox9.Text);
            ekle.Parameters.AddWithValue("Fiyat", textBox10.Text);
            ekle.Parameters.AddWithValue("durum", comboBox3.SelectedItem);

            ekle.ExecuteNonQuery();
            Listele("select*from Araclar");
            baglanti.Close();
            guncelle();
        }

        private void button5_Click(object sender, EventArgs e)
        {
            baglanti.Open();
            SqlCommand komut = new SqlCommand("select*from Araclar where AracID='" + comboBox1.SelectedItem.ToString() + "'", baglanti);

            SqlDataAdapter da = new SqlDataAdapter(komut);
            DataTable doldur = new DataTable();
            da.Fill(doldur);
            dataGridView1.DataSource = doldur;
            baglanti.Close();
        }

        private void AdminArac_Load(object sender, EventArgs e)
        {
            baglanti.Open();
            SqlCommand komut = new SqlCommand("select AracID from Araclar", baglanti);
            SqlDataReader dr;
            dr = komut.ExecuteReader();
            while (dr.Read())
            {
                comboBox1.Items.Add(dr["AracID"]);
            }
            baglanti.Close();
            baglanti.Open();
            SqlCommand komut1 = new SqlCommand("select OfisID from Ofisler", baglanti);
            SqlDataReader drr;
            drr = komut1.ExecuteReader();
            while (drr.Read())
            {
                comboBox2.Items.Add(drr["OfisID"]);
            }
            baglanti.Close();
        }

        private void dataGridView1_CellClick(object sender, DataGridViewCellEventArgs e)
        {
            int sectim = dataGridView1.SelectedCells[0].RowIndex;
            comboBox1.Text = dataGridView1.Rows[sectim].Cells[0].Value.ToString();
            comboBox2.Text = dataGridView1.Rows[sectim].Cells[9].Value.ToString();
            textBox1.Text = dataGridView1.Rows[sectim].Cells[4].Value.ToString();
            textBox2.Text = dataGridView1.Rows[sectim].Cells[5].Value.ToString();
            textBox3.Text = dataGridView1.Rows[sectim].Cells[1].Value.ToString();
            textBox4.Text = dataGridView1.Rows[sectim].Cells[2].Value.ToString();
            textBox5.Text = dataGridView1.Rows[sectim].Cells[3].Value.ToString();
            textBox6.Text = dataGridView1.Rows[sectim].Cells[6].Value.ToString();
            textBox7.Text = dataGridView1.Rows[sectim].Cells[8].Value.ToString();
            textBox8.Text = dataGridView1.Rows[sectim].Cells[7].Value.ToString();
            textBox9.Text = dataGridView1.Rows[sectim].Cells[10].Value.ToString();
            textBox10.Text = dataGridView1.Rows[sectim].Cells[11].Value.ToString();
            comboBox3.Text = dataGridView1.Rows[sectim].Cells[12].Value.ToString();
        }
    }
}
