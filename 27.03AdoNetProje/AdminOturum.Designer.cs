namespace _27._03AdoNetProje
{
    partial class AdminOturum
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.menuStrip1 = new System.Windows.Forms.MenuStrip();
            this.araçEklemeToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.araçSilmeToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.anasayfaToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.çıkışToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.menuStrip1.SuspendLayout();
            this.SuspendLayout();
            // 
            // menuStrip1
            // 
            this.menuStrip1.BackColor = System.Drawing.Color.DimGray;
            this.menuStrip1.Font = new System.Drawing.Font("Segoe Print", 9F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(162)));
            this.menuStrip1.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.araçEklemeToolStripMenuItem,
            this.araçSilmeToolStripMenuItem,
            this.anasayfaToolStripMenuItem,
            this.çıkışToolStripMenuItem});
            this.menuStrip1.Location = new System.Drawing.Point(0, 0);
            this.menuStrip1.Name = "menuStrip1";
            this.menuStrip1.Size = new System.Drawing.Size(746, 29);
            this.menuStrip1.TabIndex = 8;
            this.menuStrip1.Text = "menuStrip1";
            // 
            // araçEklemeToolStripMenuItem
            // 
            this.araçEklemeToolStripMenuItem.Name = "araçEklemeToolStripMenuItem";
            this.araçEklemeToolStripMenuItem.Size = new System.Drawing.Size(103, 25);
            this.araçEklemeToolStripMenuItem.Text = "Araç İşlemleri";
            this.araçEklemeToolStripMenuItem.Click += new System.EventHandler(this.araçEklemeToolStripMenuItem_Click);
            // 
            // araçSilmeToolStripMenuItem
            // 
            this.araçSilmeToolStripMenuItem.Name = "araçSilmeToolStripMenuItem";
            this.araçSilmeToolStripMenuItem.Size = new System.Drawing.Size(97, 25);
            this.araçSilmeToolStripMenuItem.Text = "Ofis İşlemleri";
            this.araçSilmeToolStripMenuItem.Click += new System.EventHandler(this.araçSilmeToolStripMenuItem_Click);
            // 
            // anasayfaToolStripMenuItem
            // 
            this.anasayfaToolStripMenuItem.Name = "anasayfaToolStripMenuItem";
            this.anasayfaToolStripMenuItem.Size = new System.Drawing.Size(76, 25);
            this.anasayfaToolStripMenuItem.Text = "Anasayfa";
            this.anasayfaToolStripMenuItem.Click += new System.EventHandler(this.anasayfaToolStripMenuItem_Click);
            // 
            // çıkışToolStripMenuItem
            // 
            this.çıkışToolStripMenuItem.Name = "çıkışToolStripMenuItem";
            this.çıkışToolStripMenuItem.Size = new System.Drawing.Size(48, 25);
            this.çıkışToolStripMenuItem.Text = "Çıkış";
            this.çıkışToolStripMenuItem.Click += new System.EventHandler(this.çıkışToolStripMenuItem_Click);
            // 
            // AdminOturum
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackgroundImage = global::_27._03AdoNetProje.Properties.Resources.admin;
            this.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Stretch;
            this.ClientSize = new System.Drawing.Size(746, 398);
            this.Controls.Add(this.menuStrip1);
            this.DoubleBuffered = true;
            this.MainMenuStrip = this.menuStrip1;
            this.Name = "AdminOturum";
            this.Text = "AdminOturum";
            this.Load += new System.EventHandler(this.AdminOturum_Load);
            this.menuStrip1.ResumeLayout(false);
            this.menuStrip1.PerformLayout();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion
        private System.Windows.Forms.MenuStrip menuStrip1;
        private System.Windows.Forms.ToolStripMenuItem araçEklemeToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem araçSilmeToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem anasayfaToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem çıkışToolStripMenuItem;
    }
}