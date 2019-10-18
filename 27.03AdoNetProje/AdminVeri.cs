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
    public partial class AdminVeri : Form
    {
        public AdminVeri()
        {
            InitializeComponent();
        }
        SqlConnection baglanti = new SqlConnection("Server=.;Database=AracKiralama;uid=sa;pwd=1234");
        private void AdminVeri_Load(object sender, EventArgs e)
        {
            SqlCommand listele = new SqlCommand();
            listele.Connection = baglanti;
            listele.CommandType = CommandType.StoredProcedure;
            listele.CommandText = "OfisListele";
            SqlDataReader dr;
            baglanti.Open();
            dr = listele.ExecuteReader();
            while (dr.Read())
            {
                comboBox1.Items.Add(dr["OfisID"].ToString());
            }
            baglanti.Close();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            baglanti.Open();
            SqlCommand ekle = new SqlCommand();
            ekle.Connection = baglanti;
            ekle.CommandType = CommandType.StoredProcedure;
            ekle.CommandText = "OfisEkle";
            ekle.Parameters.AddWithValue("Ofisİl", textBox11.Text);
            ekle.Parameters.AddWithValue("Ofisİlce", textBox12.Text);
            ekle.Parameters.AddWithValue("Adres", textBox13.Text);
            ekle.Parameters.AddWithValue("Telefon", textBox14.Text);
            ekle.ExecuteNonQuery();
            baglanti.Close();
            Listele("Select*from Ofisler");
            guncelle();
        }
        public void guncelle()
        {
            comboBox1.Items.Clear();
            temizle();
            baglanti.Open();
            SqlCommand komut = new SqlCommand("select OfisID from Ofisler", baglanti);
            SqlDataReader dr;
            dr = komut.ExecuteReader();
            while (dr.Read())
            {
                comboBox1.Items.Add(dr["OfisID"]);
            }
            baglanti.Close();
        }
        public void Listele(string ulas)
        {
            SqlDataAdapter da = new SqlDataAdapter(ulas, baglanti);
            DataTable doldur = new DataTable();
            da.Fill(doldur);
            dataGridView1.DataSource = doldur;
            temizle();
        }
        public void temizle()
        {
            comboBox1.Text = "";
            textBox11.Text = "";
            textBox12.Text = "";
            textBox13.Text = "";
            textBox14.Text = "";
        }

        private void button2_Click(object sender, EventArgs e)
        {
            baglanti.Open();
            SqlCommand ekle = new SqlCommand();
            ekle.Connection = baglanti;
            ekle.CommandType = CommandType.StoredProcedure;
            ekle.CommandText = "OfisSil";
            ekle.Parameters.AddWithValue("OfisID", comboBox1.SelectedItem.ToString());
            ekle.ExecuteNonQuery();
            baglanti.Close();
            Listele("Select*from Ofisler");
            guncelle();
        }

        private void button3_Click(object sender, EventArgs e)
        {
            Listele("Select*from Ofisler");
        }

        private void button4_Click(object sender, EventArgs e)
        {
            baglanti.Open();
            SqlCommand ekle = new SqlCommand();
            ekle.Connection = baglanti;
            ekle.CommandType = CommandType.StoredProcedure;
            ekle.CommandText = "OfisGüncelleme";
            ekle.Parameters.AddWithValue("OfisID", comboBox1.SelectedItem.ToString());
            ekle.Parameters.AddWithValue("Ofisİl", textBox11.Text);
            ekle.Parameters.AddWithValue("Ofisİlce", textBox12.Text);
            ekle.Parameters.AddWithValue("Adres", textBox13.Text);
            ekle.Parameters.AddWithValue("Telefon", textBox14.Text);
            ekle.ExecuteNonQuery();
            baglanti.Close();
            Listele("Select*from Ofisler");
            guncelle();
        }

        private void button5_Click(object sender, EventArgs e)
        {
            baglanti.Open();
            SqlCommand ekle = new SqlCommand();
            ekle.Connection = baglanti;
            ekle.CommandType = CommandType.StoredProcedure;
            ekle.CommandText = "OfisAra";
            ekle.Parameters.AddWithValue("OfisID", comboBox1.SelectedItem.ToString());
            ekle.ExecuteNonQuery();
            baglanti.Close();
            guncelle();
        }

        private void label1_Click(object sender, EventArgs e)
        {
            AdminOturum ad = new AdminOturum();
            ad.Show();
            this.Hide();
        }

        private void dataGridView1_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {

        }

        private void dataGridView1_CellClick(object sender, DataGridViewCellEventArgs e)
        {
            int sectim = dataGridView1.SelectedCells[0].RowIndex;
            comboBox1.Text = dataGridView1.Rows[sectim].Cells[0].Value.ToString();
            textBox11.Text = dataGridView1.Rows[sectim].Cells[1].Value.ToString();
            textBox12.Text = dataGridView1.Rows[sectim].Cells[2].Value.ToString();
            textBox13.Text = dataGridView1.Rows[sectim].Cells[3].Value.ToString();
            textBox14.Text = dataGridView1.Rows[sectim].Cells[4].Value.ToString();
        }
    }
}
