namespace Emerald_Launcher
{
    partial class Form1
    {
        /// <summary>
        /// Обязательная переменная конструктора.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Освободить все используемые ресурсы.
        /// </summary>
        /// <param name="disposing">истинно, если управляемый ресурс должен быть удален; иначе ложно.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Код, автоматически созданный конструктором форм Windows

        /// <summary>
        /// Требуемый метод для поддержки конструктора — не изменяйте 
        /// содержимое этого метода с помощью редактора кода.
        /// </summary>
        private void InitializeComponent()
        {
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(Form1));
            this.gunaProgressBar1 = new Guna.UI.WinForms.GunaProgressBar();
            this.gunaTextBox1 = new Guna.UI.WinForms.GunaTextBox();
            this.gunaLabel1 = new Guna.UI.WinForms.GunaLabel();
            this.gunaButton1 = new Guna.UI.WinForms.GunaButton();
            this.gunaButton6 = new Guna.UI.WinForms.GunaButton();
            this.gunaButton2 = new Guna.UI.WinForms.GunaButton();
            this.gunaButton3 = new Guna.UI.WinForms.GunaButton();
            this.gunaButton4 = new Guna.UI.WinForms.GunaButton();
            this.gunaButton5 = new Guna.UI.WinForms.GunaButton();
            this.SuspendLayout();
            // 
            // gunaProgressBar1
            // 
            this.gunaProgressBar1.BackColor = System.Drawing.Color.Transparent;
            this.gunaProgressBar1.BorderColor = System.Drawing.Color.Empty;
            this.gunaProgressBar1.ColorStyle = Guna.UI.WinForms.ColorStyle.Default;
            this.gunaProgressBar1.Cursor = System.Windows.Forms.Cursors.WaitCursor;
            this.gunaProgressBar1.IdleColor = System.Drawing.Color.Gainsboro;
            this.gunaProgressBar1.Location = new System.Drawing.Point(52, 416);
            this.gunaProgressBar1.Maximum = 120;
            this.gunaProgressBar1.Name = "gunaProgressBar1";
            this.gunaProgressBar1.ProgressMaxColor = System.Drawing.Color.FromArgb(((int)(((byte)(0)))), ((int)(((byte)(255)))), ((int)(((byte)(156)))));
            this.gunaProgressBar1.ProgressMinColor = System.Drawing.Color.FromArgb(((int)(((byte)(0)))), ((int)(((byte)(255)))), ((int)(((byte)(156)))));
            this.gunaProgressBar1.Radius = 8;
            this.gunaProgressBar1.Size = new System.Drawing.Size(597, 18);
            this.gunaProgressBar1.TabIndex = 3;
            this.gunaProgressBar1.UseWaitCursor = true;
            this.gunaProgressBar1.Value = 90;
            // 
            // gunaTextBox1
            // 
            this.gunaTextBox1.BackColor = System.Drawing.Color.Transparent;
            this.gunaTextBox1.BaseColor = System.Drawing.Color.FromArgb(((int)(((byte)(224)))), ((int)(((byte)(224)))), ((int)(((byte)(224)))));
            this.gunaTextBox1.BorderColor = System.Drawing.Color.FromArgb(((int)(((byte)(224)))), ((int)(((byte)(224)))), ((int)(((byte)(224)))));
            this.gunaTextBox1.BorderSize = 0;
            this.gunaTextBox1.Cursor = System.Windows.Forms.Cursors.Hand;
            this.gunaTextBox1.FocusedBaseColor = System.Drawing.Color.FromArgb(((int)(((byte)(48)))), ((int)(((byte)(48)))), ((int)(((byte)(48)))));
            this.gunaTextBox1.FocusedBorderColor = System.Drawing.Color.FromArgb(((int)(((byte)(100)))), ((int)(((byte)(88)))), ((int)(((byte)(255)))));
            this.gunaTextBox1.FocusedForeColor = System.Drawing.Color.White;
            this.gunaTextBox1.Font = new System.Drawing.Font("Arial", 9.75F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(204)));
            this.gunaTextBox1.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(64)))), ((int)(((byte)(64)))), ((int)(((byte)(64)))));
            this.gunaTextBox1.Location = new System.Drawing.Point(595, 6);
            this.gunaTextBox1.Margin = new System.Windows.Forms.Padding(0);
            this.gunaTextBox1.MaxLength = 100;
            this.gunaTextBox1.Name = "gunaTextBox1";
            this.gunaTextBox1.PasswordChar = '\0';
            this.gunaTextBox1.Radius = 20;
            this.gunaTextBox1.Size = new System.Drawing.Size(182, 41);
            this.gunaTextBox1.TabIndex = 14;
            this.gunaTextBox1.Text = "Введите Ваш ник...";
            this.gunaTextBox1.TextAlign = System.Windows.Forms.HorizontalAlignment.Center;
            // 
            // gunaLabel1
            // 
            this.gunaLabel1.AutoSize = true;
            this.gunaLabel1.BackColor = System.Drawing.Color.Transparent;
            this.gunaLabel1.Cursor = System.Windows.Forms.Cursors.WaitCursor;
            this.gunaLabel1.Font = new System.Drawing.Font("Microsoft Sans Serif", 11.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.gunaLabel1.ForeColor = System.Drawing.Color.Black;
            this.gunaLabel1.Location = new System.Drawing.Point(49, 395);
            this.gunaLabel1.MinimumSize = new System.Drawing.Size(266, 17);
            this.gunaLabel1.Name = "gunaLabel1";
            this.gunaLabel1.Size = new System.Drawing.Size(266, 18);
            this.gunaLabel1.TabIndex = 16;
            this.gunaLabel1.Text = "Проверка обновлений...";
            this.gunaLabel1.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.gunaLabel1.UseWaitCursor = true;
            // 
            // gunaButton1
            // 
            this.gunaButton1.AnimationHoverSpeed = 0.07F;
            this.gunaButton1.AnimationSpeed = 0.03F;
            this.gunaButton1.BackColor = System.Drawing.Color.Transparent;
            this.gunaButton1.BaseColor = System.Drawing.Color.Empty;
            this.gunaButton1.BorderColor = System.Drawing.Color.Empty;
            this.gunaButton1.Cursor = System.Windows.Forms.Cursors.Hand;
            this.gunaButton1.DialogResult = System.Windows.Forms.DialogResult.None;
            this.gunaButton1.FocusedColor = System.Drawing.Color.Empty;
            this.gunaButton1.Font = new System.Drawing.Font("Segoe UI", 9F);
            this.gunaButton1.ForeColor = System.Drawing.Color.White;
            this.gunaButton1.Image = null;
            this.gunaButton1.ImageAlign = System.Windows.Forms.HorizontalAlignment.Center;
            this.gunaButton1.ImageSize = new System.Drawing.Size(270, 93);
            this.gunaButton1.Location = new System.Drawing.Point(664, 384);
            this.gunaButton1.Margin = new System.Windows.Forms.Padding(0);
            this.gunaButton1.Name = "gunaButton1";
            this.gunaButton1.OnHoverBaseColor = System.Drawing.Color.Empty;
            this.gunaButton1.OnHoverBorderColor = System.Drawing.Color.Empty;
            this.gunaButton1.OnHoverForeColor = System.Drawing.Color.Empty;
            this.gunaButton1.OnHoverImage = null;
            this.gunaButton1.OnPressedColor = System.Drawing.Color.Empty;
            this.gunaButton1.Size = new System.Drawing.Size(195, 50);
            this.gunaButton1.TabIndex = 13;
            this.gunaButton1.Click += new System.EventHandler(this.gunaButton1_Click);
            // 
            // gunaButton6
            // 
            this.gunaButton6.AnimationHoverSpeed = 0.07F;
            this.gunaButton6.AnimationSpeed = 0.03F;
            this.gunaButton6.BackColor = System.Drawing.Color.Transparent;
            this.gunaButton6.BaseColor = System.Drawing.Color.Empty;
            this.gunaButton6.BorderColor = System.Drawing.Color.Empty;
            this.gunaButton6.Cursor = System.Windows.Forms.Cursors.Hand;
            this.gunaButton6.DialogResult = System.Windows.Forms.DialogResult.None;
            this.gunaButton6.FocusedColor = System.Drawing.Color.Empty;
            this.gunaButton6.Font = new System.Drawing.Font("Segoe UI", 9F);
            this.gunaButton6.ForeColor = System.Drawing.Color.White;
            this.gunaButton6.Image = null;
            this.gunaButton6.ImageAlign = System.Windows.Forms.HorizontalAlignment.Center;
            this.gunaButton6.ImageSize = new System.Drawing.Size(35, 35);
            this.gunaButton6.Location = new System.Drawing.Point(846, 6);
            this.gunaButton6.Margin = new System.Windows.Forms.Padding(0);
            this.gunaButton6.Name = "gunaButton6";
            this.gunaButton6.OnHoverBaseColor = System.Drawing.Color.Empty;
            this.gunaButton6.OnHoverBorderColor = System.Drawing.Color.Empty;
            this.gunaButton6.OnHoverForeColor = System.Drawing.Color.Empty;
            this.gunaButton6.OnHoverImage = null;
            this.gunaButton6.OnPressedColor = System.Drawing.Color.Empty;
            this.gunaButton6.Size = new System.Drawing.Size(35, 35);
            this.gunaButton6.TabIndex = 21;
            this.gunaButton6.Click += new System.EventHandler(this.gunaButton6_Click_1);
            // 
            // gunaButton2
            // 
            this.gunaButton2.AnimationHoverSpeed = 0.07F;
            this.gunaButton2.AnimationSpeed = 0.03F;
            this.gunaButton2.BackColor = System.Drawing.Color.Transparent;
            this.gunaButton2.BaseColor = System.Drawing.Color.Empty;
            this.gunaButton2.BorderColor = System.Drawing.Color.Empty;
            this.gunaButton2.Cursor = System.Windows.Forms.Cursors.Hand;
            this.gunaButton2.DialogResult = System.Windows.Forms.DialogResult.None;
            this.gunaButton2.FocusedColor = System.Drawing.Color.Empty;
            this.gunaButton2.Font = new System.Drawing.Font("Segoe UI", 9F);
            this.gunaButton2.ForeColor = System.Drawing.Color.White;
            this.gunaButton2.Image = null;
            this.gunaButton2.ImageAlign = System.Windows.Forms.HorizontalAlignment.Center;
            this.gunaButton2.ImageSize = new System.Drawing.Size(35, 35);
            this.gunaButton2.Location = new System.Drawing.Point(811, 9);
            this.gunaButton2.Margin = new System.Windows.Forms.Padding(0);
            this.gunaButton2.Name = "gunaButton2";
            this.gunaButton2.OnHoverBaseColor = System.Drawing.Color.Empty;
            this.gunaButton2.OnHoverBorderColor = System.Drawing.Color.Empty;
            this.gunaButton2.OnHoverForeColor = System.Drawing.Color.Empty;
            this.gunaButton2.OnHoverImage = null;
            this.gunaButton2.OnPressedColor = System.Drawing.Color.Empty;
            this.gunaButton2.Size = new System.Drawing.Size(35, 35);
            this.gunaButton2.TabIndex = 22;
            this.gunaButton2.Click += new System.EventHandler(this.gunaButton2_Click_2);
            // 
            // gunaButton3
            // 
            this.gunaButton3.AnimationHoverSpeed = 0.07F;
            this.gunaButton3.AnimationSpeed = 0.03F;
            this.gunaButton3.BackColor = System.Drawing.Color.Transparent;
            this.gunaButton3.BaseColor = System.Drawing.Color.Empty;
            this.gunaButton3.BorderColor = System.Drawing.Color.Empty;
            this.gunaButton3.Cursor = System.Windows.Forms.Cursors.Hand;
            this.gunaButton3.DialogResult = System.Windows.Forms.DialogResult.None;
            this.gunaButton3.FocusedColor = System.Drawing.Color.Empty;
            this.gunaButton3.Font = new System.Drawing.Font("Segoe UI", 9F);
            this.gunaButton3.ForeColor = System.Drawing.Color.White;
            this.gunaButton3.Image = null;
            this.gunaButton3.ImageAlign = System.Windows.Forms.HorizontalAlignment.Center;
            this.gunaButton3.ImageSize = new System.Drawing.Size(270, 93);
            this.gunaButton3.Location = new System.Drawing.Point(505, 9);
            this.gunaButton3.Margin = new System.Windows.Forms.Padding(0);
            this.gunaButton3.Name = "gunaButton3";
            this.gunaButton3.OnHoverBaseColor = System.Drawing.Color.Empty;
            this.gunaButton3.OnHoverBorderColor = System.Drawing.Color.Empty;
            this.gunaButton3.OnHoverForeColor = System.Drawing.Color.Empty;
            this.gunaButton3.OnHoverImage = null;
            this.gunaButton3.OnPressedColor = System.Drawing.Color.Empty;
            this.gunaButton3.Size = new System.Drawing.Size(77, 32);
            this.gunaButton3.TabIndex = 23;
            this.gunaButton3.Click += new System.EventHandler(this.gunaButton3_Click);
            // 
            // gunaButton4
            // 
            this.gunaButton4.AnimationHoverSpeed = 0.07F;
            this.gunaButton4.AnimationSpeed = 0.03F;
            this.gunaButton4.BackColor = System.Drawing.Color.Transparent;
            this.gunaButton4.BaseColor = System.Drawing.Color.Empty;
            this.gunaButton4.BorderColor = System.Drawing.Color.Empty;
            this.gunaButton4.Cursor = System.Windows.Forms.Cursors.Hand;
            this.gunaButton4.DialogResult = System.Windows.Forms.DialogResult.None;
            this.gunaButton4.FocusedColor = System.Drawing.Color.Empty;
            this.gunaButton4.Font = new System.Drawing.Font("Segoe UI", 9F);
            this.gunaButton4.ForeColor = System.Drawing.Color.White;
            this.gunaButton4.Image = null;
            this.gunaButton4.ImageAlign = System.Windows.Forms.HorizontalAlignment.Center;
            this.gunaButton4.ImageSize = new System.Drawing.Size(270, 93);
            this.gunaButton4.Location = new System.Drawing.Point(447, 9);
            this.gunaButton4.Margin = new System.Windows.Forms.Padding(0);
            this.gunaButton4.Name = "gunaButton4";
            this.gunaButton4.OnHoverBaseColor = System.Drawing.Color.Empty;
            this.gunaButton4.OnHoverBorderColor = System.Drawing.Color.Empty;
            this.gunaButton4.OnHoverForeColor = System.Drawing.Color.Empty;
            this.gunaButton4.OnHoverImage = null;
            this.gunaButton4.OnPressedColor = System.Drawing.Color.Empty;
            this.gunaButton4.Size = new System.Drawing.Size(58, 32);
            this.gunaButton4.TabIndex = 24;
            this.gunaButton4.Click += new System.EventHandler(this.gunaButton4_Click);
            // 
            // gunaButton5
            // 
            this.gunaButton5.AnimationHoverSpeed = 0.07F;
            this.gunaButton5.AnimationSpeed = 0.03F;
            this.gunaButton5.BackColor = System.Drawing.Color.Transparent;
            this.gunaButton5.BaseColor = System.Drawing.Color.Empty;
            this.gunaButton5.BorderColor = System.Drawing.Color.Empty;
            this.gunaButton5.Cursor = System.Windows.Forms.Cursors.Hand;
            this.gunaButton5.DialogResult = System.Windows.Forms.DialogResult.None;
            this.gunaButton5.FocusedColor = System.Drawing.Color.Empty;
            this.gunaButton5.Font = new System.Drawing.Font("Segoe UI", 9F);
            this.gunaButton5.ForeColor = System.Drawing.Color.White;
            this.gunaButton5.Image = null;
            this.gunaButton5.ImageAlign = System.Windows.Forms.HorizontalAlignment.Center;
            this.gunaButton5.ImageSize = new System.Drawing.Size(270, 93);
            this.gunaButton5.Location = new System.Drawing.Point(340, 6);
            this.gunaButton5.Margin = new System.Windows.Forms.Padding(0);
            this.gunaButton5.Name = "gunaButton5";
            this.gunaButton5.OnHoverBaseColor = System.Drawing.Color.Empty;
            this.gunaButton5.OnHoverBorderColor = System.Drawing.Color.Empty;
            this.gunaButton5.OnHoverForeColor = System.Drawing.Color.Empty;
            this.gunaButton5.OnHoverImage = null;
            this.gunaButton5.OnPressedColor = System.Drawing.Color.Empty;
            this.gunaButton5.Size = new System.Drawing.Size(85, 32);
            this.gunaButton5.TabIndex = 25;
            this.gunaButton5.Click += new System.EventHandler(this.gunaButton5_Click_2);
            // 
            // Form1
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.AutoSize = true;
            this.BackColor = System.Drawing.Color.White;
            this.BackgroundImage = ((System.Drawing.Image)(resources.GetObject("$this.BackgroundImage")));
            this.BackgroundImageLayout = System.Windows.Forms.ImageLayout.None;
            this.ClientSize = new System.Drawing.Size(890, 448);
            this.Controls.Add(this.gunaButton5);
            this.Controls.Add(this.gunaButton4);
            this.Controls.Add(this.gunaButton3);
            this.Controls.Add(this.gunaButton2);
            this.Controls.Add(this.gunaButton6);
            this.Controls.Add(this.gunaLabel1);
            this.Controls.Add(this.gunaButton1);
            this.Controls.Add(this.gunaProgressBar1);
            this.Controls.Add(this.gunaTextBox1);
            this.ForeColor = System.Drawing.SystemColors.Desktop;
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.None;
            this.Icon = ((System.Drawing.Icon)(resources.GetObject("$this.Icon")));
            this.MaximizeBox = false;
            this.MaximumSize = new System.Drawing.Size(890, 448);
            this.MinimizeBox = false;
            this.MinimumSize = new System.Drawing.Size(890, 448);
            this.Name = "Form1";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "RedVine RP";
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion
        private Guna.UI.WinForms.GunaProgressBar gunaProgressBar1;
        private Guna.UI.WinForms.GunaTextBox gunaTextBox1;
        private Guna.UI.WinForms.GunaLabel gunaLabel1;
        private Guna.UI.WinForms.GunaButton gunaButton1;
        private Guna.UI.WinForms.GunaButton gunaButton6;
        private Guna.UI.WinForms.GunaButton gunaButton2;
        private Guna.UI.WinForms.GunaButton gunaButton3;
        private Guna.UI.WinForms.GunaButton gunaButton4;
        private Guna.UI.WinForms.GunaButton gunaButton5;
    }
}

