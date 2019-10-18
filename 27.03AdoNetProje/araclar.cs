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
    public partial class araclar : Form
    {
        public araclar()
        {
            InitializeComponent();
        }
        SqlConnection baglanti = new SqlConnection("Server=.;Database=AracKiralama;uid=sa;pwd=1234");
        private void araclar_Load(object sender, EventArgs e)
        {
            groupBox1.Visible = false;
            groupBox2.Visible = false;
            label8.Visible = false;
            //label19.Visible = false;
            comboBox1.SelectedIndex = 0;
            comboBox2.SelectedIndex = 0;
            comboBox3.SelectedIndex = 0;
            //SqlCommand listele = new SqlCommand();
            //listele.Connection = baglanti;
            //listele.CommandType = CommandType.StoredProcedure;
            //listele.CommandText = "AracListele";
            //SqlDataReader dr;
            //baglanti.Open();
            //dr = listele.ExecuteReader();
            //while (dr.Read())
            //{
            //    comboBox1.Items.Add(dr["AracTipi"].ToString());
            //    comboBox2.Items.Add(dr["VitesTipi"].ToString());
            //    comboBox3.Items.Add(dr["YakitTipi"].ToString());
            //}
            //baglanti.Close();
        }

        private void comboBox1_SelectedIndexChanged(object sender, EventArgs e)
        {
            double saat = Convert.ToDouble(label8.Text);
            string sec= comboBox1.SelectedItem.ToString();
            groupBox1.Visible = true;
            if (comboBox1.SelectedIndex == 0)
            {
                SqlCommand listele1 = new SqlCommand();
                listele1.Connection = baglanti;
                listele1.CommandType = CommandType.StoredProcedure;
                listele1.CommandText = "AracListele";
                listele1.Parameters.AddWithValue("@AracTipi", "");
                listele1.Parameters.AddWithValue("@VitesTipi", "");
                listele1.Parameters.AddWithValue("@YakitTipi", "");
                SqlDataReader dr1;
                baglanti.Open();
                dr1 = listele1.ExecuteReader();
                while (dr1.Read())
                {
                    label1.Text = dr1["AracTipi"].ToString();
                    label7.Text = dr1["Marka"].ToString() + "-" + dr1["Model"].ToString();
                    textBox1.Text = dr1["YakitTipi"].ToString();
                    textBox2.Text = dr1["AracYas"].ToString();
                    textBox3.Text = dr1["EhliyetTipi"].ToString();
                    textBox4.Text = dr1["EhliyetYas"].ToString();
                    textBox5.Text = (Convert.ToDouble(dr1["Fiyat"]) * saat).ToString();
                    label19.Text = dr1["AracID"].ToString();
                }
                baglanti.Close();
            }
            else
            {
                SqlCommand listele = new SqlCommand();
                listele.Connection = baglanti;
                listele.CommandType = CommandType.StoredProcedure;
                listele.CommandText = "AracListele";
                listele.Parameters.AddWithValue("@AracTipi", sec);
                listele.Parameters.AddWithValue("@VitesTipi", "");
                listele.Parameters.AddWithValue("@YakitTipi", "");
                SqlDataReader dr;
                baglanti.Open();
                dr = listele.ExecuteReader();
                while (dr.Read())
                {
                    label1.Text = dr["AracTipi"].ToString();
                    label7.Text = dr["Marka"].ToString() + "-" + dr["Model"].ToString();
                    textBox1.Text = dr["YakitTipi"].ToString();
                    textBox2.Text = dr["AracYas"].ToString();
                    textBox3.Text = dr["EhliyetTipi"].ToString();
                    textBox4.Text = dr["EhliyetYas"].ToString();
                    textBox5.Text = (Convert.ToDouble(dr["Fiyat"]) * saat).ToString();
                    label19.Text = dr["AracID"].ToString();
                }
                baglanti.Close();
            }
            
        }

        private void comboBox2_SelectedIndexChanged(object sender, EventArgs e)
        {
            double saat = Convert.ToDouble(label8.Text);
            string sec = comboBox1.SelectedItem.ToString();
            groupBox1.Visible = true;
            if (comboBox1.SelectedIndex == 0)
            {
                SqlCommand listele1 = new SqlCommand();
                listele1.Connection = baglanti;
                listele1.CommandType = CommandType.StoredProcedure;
                listele1.CommandText = "AracListele";
                listele1.Parameters.AddWithValue("@AracTipi", "");
                listele1.Parameters.AddWithValue("@VitesTipi", "");
                listele1.Parameters.AddWithValue("@YakitTipi", "");
                SqlDataReader dr1;
                baglanti.Open();
                dr1 = listele1.ExecuteReader();
                while (dr1.Read())
                {
                    label1.Text = dr1["AracTipi"].ToString();
                    label7.Text = dr1["Marka"].ToString() + "-" + dr1["Model"].ToString();
                    textBox1.Text = dr1["YakitTipi"].ToString();
                    textBox2.Text = dr1["AracYas"].ToString();
                    textBox3.Text = dr1["EhliyetTipi"].ToString();
                    textBox4.Text = dr1["EhliyetYas"].ToString();
                    textBox5.Text = (Convert.ToDouble(dr1["Fiyat"]) * saat).ToString();
                    label19.Text = dr1["AracID"].ToString();
                }
                baglanti.Close();
            }
            else
            {
                SqlCommand listele = new SqlCommand();
                listele.Connection = baglanti;
                listele.CommandType = CommandType.StoredProcedure;
                listele.CommandText = "AracListele";
                listele.Parameters.AddWithValue("@AracTipi","");
                listele.Parameters.AddWithValue("@VitesTipi", comboBox2.SelectedItem.ToString());
                listele.Parameters.AddWithValue("@YakitTipi", "");
                SqlDataReader dr;
                baglanti.Open();
                dr = listele.ExecuteReader();
                while (dr.Read())
                {
                    label1.Text = dr["AracTipi"].ToString();
                    label7.Text = dr["Marka"].ToString() + "-" + dr["Model"].ToString();
                    textBox1.Text = dr["YakitTipi"].ToString();
                    textBox2.Text = dr["AracYas"].ToString();
                    textBox3.Text = dr["EhliyetTipi"].ToString();
                    textBox4.Text = dr["EhliyetYas"].ToString();
                    textBox5.Text = (Convert.ToDouble(dr["Fiyat"]) * saat).ToString();
                    label19.Text = dr["AracID"].ToString();
                }
                baglanti.Close();
            }
        }

        private void comboBox3_SelectedIndexChanged(object sender, EventArgs e)
        {
            double saat = Convert.ToDouble(label8.Text);
            string sec = comboBox1.SelectedItem.ToString();
            groupBox1.Visible = true;
            if (comboBox1.SelectedIndex == 0)
            {
                SqlCommand listele1 = new SqlCommand();
                listele1.Connection = baglanti;
                listele1.CommandType = CommandType.StoredProcedure;
                listele1.CommandText = "AracListele";
                listele1.Parameters.AddWithValue("@AracTipi", "");
                listele1.Parameters.AddWithValue("@VitesTipi", "");
                listele1.Parameters.AddWithValue("@YakitTipi", "");
                SqlDataReader dr1;
                baglanti.Open();
                dr1 = listele1.ExecuteReader();
                while (dr1.Read())
                {
                    label1.Text = dr1["AracTipi"].ToString();
                    label7.Text = dr1["Marka"].ToString() + "-" + dr1["Model"].ToString();
                    textBox1.Text = dr1["YakitTipi"].ToString();
                    textBox2.Text = dr1["AracYas"].ToString();
                    textBox3.Text = dr1["EhliyetTipi"].ToString();
                    textBox4.Text = dr1["EhliyetYas"].ToString();
                    textBox5.Text = (Convert.ToDouble(dr1["Fiyat"]) * saat).ToString();
                    label19.Text = dr1["AracID"].ToString();
                }
                baglanti.Close();
            }
            else
            {
                SqlCommand listele = new SqlCommand();
                listele.Connection = baglanti;
                listele.CommandType = CommandType.StoredProcedure;
                listele.CommandText = "AracListele";
                listele.Parameters.AddWithValue("@AracTipi", "");
                listele.Parameters.AddWithValue("@VitesTipi","");
                listele.Parameters.AddWithValue("@YakitTipi", comboBox3.SelectedItem.ToString());
                SqlDataReader dr;
                baglanti.Open();
                dr = listele.ExecuteReader();
                while (dr.Read())
                {
                    label1.Text = dr["AracTipi"].ToString();
                    label7.Text = dr["Marka"].ToString() + "-" + dr["Model"].ToString();
                    textBox1.Text = dr["YakitTipi"].ToString();
                    textBox2.Text = dr["AracYas"].ToString();
                    textBox3.Text = dr["EhliyetTipi"].ToString();
                    textBox4.Text = dr["EhliyetYas"].ToString();
                    textBox5.Text = (Convert.ToDouble(dr["Fiyat"]) * saat).ToString();
                    label19.Text = dr["AracID"].ToString();
                }
                baglanti.Close();
            }
        }

        private void groupBox1_Enter(object sender, EventArgs e)
        {

        }

        private void textBox5_TextChanged(object sender, EventArgs e)
        {

        }

        private void button2_Click(object sender, EventArgs e)
        {
            DateTime a = Convert.ToDateTime(dateTimePicker1.Text);
            int yas = DateTime.Now.Year - a.Year;
            
                if (yas < 18)
                {
                    MessageBox.Show("Yaşınız 18 den Küçük olduğu için Araç Kiralayamazsınız...");
                }
                else
                {
                    baglanti.Open();
                    SqlCommand ekle = new SqlCommand();
                    ekle.Connection = baglanti;
                    ekle.CommandType = CommandType.StoredProcedure;
                    ekle.CommandText = "MusteriEkle";
                    ekle.Parameters.AddWithValue("TcKimlik", textBox6.Text);
                    ekle.Parameters.AddWithValue("MusteriAd", textBox7.Text);
                    ekle.Parameters.AddWithValue("MusteriSoyad", textBox8.Text);
                    ekle.Parameters.AddWithValue("Meslek", textBox9.Text);
                    ekle.Parameters.AddWithValue("DogumTarihi", dateTimePicker1.Value);
                    ekle.Parameters.AddWithValue("Email", textBox11.Text);
                    ekle.Parameters.AddWithValue("EhliyetNo", textBox12.Text);
                    ekle.Parameters.AddWithValue("EhliyetTipi", textBox13.Text);
                    ekle.Parameters.AddWithValue("Telefon", textBox14.Text);
                    ekle.Parameters.AddWithValue("Adres", textBox15.Text);
                    ekle.Parameters.AddWithValue("AracID", label19.Text);
                    ekle.Parameters.AddWithValue("Notlar", "Peşin Ödeme");
                    ekle.ExecuteNonQuery();
                    SqlCommand oekle = new SqlCommand();
                    oekle.Connection = baglanti;
                    oekle.CommandType = CommandType.StoredProcedure;
                    oekle.CommandText = "AracGüncelleDurum";
                    ekle.Parameters.AddWithValue("AracID", label19.Text);
                    ekle.Parameters.AddWithValue("durum", "rezerve");


                    baglanti.Close();
                MessageBox.Show("Aracınız Hazırlanıyor Kiralamak İstediğiniz Tarihte Ofisimize Gelip Alabilirsiniz. Bizi Tercih ettiğnz İçin Teşekkürler...");
                Form1 ab = new Form1();
                ab.Show();
                this.Hide();
                
                }
            
           
            textBox6.Text = "";
            textBox7.Text = "";
            textBox8.Text = "";
            textBox9.Text = "";
            dateTimePicker1.Value = DateTime.Now;
            textBox11.Text = "";
            textBox12.Text = "";
            textBox13.Text = "";
            textBox14.Text = "";
            textBox15.Text = "";
        }

        private void button1_Click(object sender, EventArgs e)
        {
            groupBox2.Visible = true;
        }

        private void label20_Click(object sender, EventArgs e)
        {
            MusteriOturum musteri = new MusteriOturum();
            musteri.Show();
            this.Hide();
        }
    }
}
