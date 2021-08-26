using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Security.Permissions;
using Microsoft.Win32;
using System.Drawing;
using System.Linq;
using System.Diagnostics;
using System.Text;
using System.Threading.Tasks;
using System.Security.Principal;
using System.Windows.Forms;
using System.IO;
using JetBrains.Annotations;
using YandexDisk.Client.Protocol;
using System.Net;
using System.IO.Compression;
using YandexDisk;
using YandexDisk.Client;
using YandexDisk.Client.Http;
using System.Collections.Specialized;
using System.Threading;



namespace Emerald_Launcher
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
            checkversion();
        }


        private const int WM_NCHITTEST = 0x84;
        private const int HTCLIENT = 0x1;
        private const int HTCAPTION = 0x2;



        protected override void WndProc(ref Message m)
        {
            switch (m.Msg)
            {
                case WM_NCHITTEST:
                    base.WndProc(ref m);
                    if ((int)m.Result == HTCLIENT)
                    {
                        m.Result = (IntPtr)HTCAPTION;
                        return;
                    }
                    break;
            }
            base.WndProc(ref m);
        }









        async void checkversion()
        {
            await Task.Run(() =>
            {
                try
                {
                    var task = Task.Run((Func<Task>)Form1.Getlinks);
                    task.Wait();
                    compare_ver();
                }
                catch
                {
                    MessageBox.Show("Функция временно в разработке!");
                }
            });
        }


        static async Task Getlinks()
        {
            string oauthToken = "AgAAAAAkOYhyAAYJuvPSsC5cYEiZpOw-0l_7ffw";
            using (IDiskApi diskApi = new DiskHttpApi(oauthToken))
            {
                var rc = await diskApi.Files.GetDownloadLinkAsync(path: "readme.txt");
                var uc = await diskApi.Files.GetDownloadLinkAsync(path: "game.zip");
                File.WriteAllText("ucl.txt", uc.Href);
                using (var client = new WebClient())
                {
                    client.DownloadFile(rc.Href, "readme.txt");
                }
            }
        }

        private void compare_ver()
        {
            string fileName = "ver.txt";
            string fileNameSer = "readme.txt";
            if (File.Exists(fileName) == true)
            {
                string vernow = File.ReadAllText(fileName);
                string verser = File.ReadAllText(fileNameSer);
                if (verser != vernow)
                {
                    gunaLabel1.Invoke(new Action(() => gunaLabel1.Text = "Обновление клиента...!"));

                    dwn();
                    File.WriteAllText(fileName, File.ReadAllText(fileNameSer));
                }
                else
                {
                    if (Directory.Exists("data/") & File.Exists("data/gta_sa.exe") == true)
                    {
                        gunaButton1.Invoke(new Action(() => gunaButton1.Enabled = true));
                        gunaLabel1.Invoke(new Action(() => gunaLabel1.Text = "Клиент обновлен!"));
                        gunaProgressBar1.Invoke(new Action(() => gunaProgressBar1.Value = 120));
                    }
                    else
                    {
                        gunaLabel1.Invoke(new Action(() => gunaLabel1.Text = "Обновление клиента...!"));
                        dwn();
                        File.WriteAllText(fileName, File.ReadAllText(fileNameSer));
                    }
                }
            }
            else
            {
                File.WriteAllText("ver.txt", "000");
                gunaLabel1.Invoke(new Action(() => gunaLabel1.Text = "Обновление клиента...!"));

                dwn();
                File.WriteAllText(fileName, File.ReadAllText(fileNameSer));
            }
        }


        private void dwn()
        {
            string fileName = "game.zip";
            string linkx = File.ReadAllText("ucl.txt");
            try
            {
                Directory.Delete("data/", true);
            }
            catch
            {

            }
            if (File.Exists(fileName) != true)
            {
                WebClient client = new WebClient();
                client.DownloadProgressChanged += new DownloadProgressChangedEventHandler(client_DownloadProgressChanged);
                client.DownloadFileCompleted += new AsyncCompletedEventHandler(client_DownloadFileCompleted);
                client.DownloadFileAsync(new Uri(linkx), "game.zip");
            }
            else
            {
                File.Delete(fileName);
                WebClient client = new WebClient();
                client.DownloadProgressChanged += new DownloadProgressChangedEventHandler(client_DownloadProgressChanged);
                client.DownloadFileCompleted += new AsyncCompletedEventHandler(client_DownloadFileCompleted);
                client.DownloadFileAsync(new Uri(linkx), "game.zip");

            }

            void client_DownloadFileCompleted(object sender, AsyncCompletedEventArgs e)
            {
                ext();
            }
            void client_DownloadProgressChanged(object sender, DownloadProgressChangedEventArgs e)
            {
                gunaProgressBar1.Value = (int)e.ProgressPercentage;
            }
        }


        async void ext()
        {
            await Task.Run(() =>
            {
                gunaLabel1.Invoke(new Action(() => gunaLabel1.Text = "Распаковка архива (3-5 минут)"));

                var task = Task.Run((Func<Task>)Form1.WaitExt);
                task.Wait();
                gunaButton1.Invoke(new Action(() => gunaButton1.Enabled = true));
                gunaLabel1.Invoke(new Action(() => gunaLabel1.Text = "Клиент обновлен!"));
                gunaProgressBar1.Invoke(new Action(() => gunaProgressBar1.Value = gunaProgressBar1.Maximum));

            });

        }

        static async Task WaitExt()
        {
            await Task.Run(() =>
            {
                try
                {
                    DirectoryInfo directoryinfo = new DirectoryInfo("data/");
                    if (directoryinfo.Exists) directoryinfo.Delete(true);
                    ZipFile.ExtractToDirectory("game.zip", "data/");
                }
                catch
                {

                }
            });
        }

        private void gunaButton6_Click(object sender, EventArgs e)
        {
            System.Diagnostics.Process.Start("https://vk.com/dawno0");
        }

        private void gunaButton5_Click(object sender, EventArgs e)
        {
            System.Diagnostics.Process.Start("https://vk.com/dawno0");
        }

        private void gunaButton2_Click(object sender, EventArgs e)
        {
            System.Diagnostics.Process.Start("https://vk.com/dawno0");
        }

        private void gunaButton1_Click(object sender, EventArgs e)
        {
            try
            {
                string nick = gunaTextBox1.Text;
                string sid = WindowsIdentity.GetCurrent().User.Value;
                string nickgame = sid + "\\Software\\SAMP";
                string putg = Application.StartupPath + "\\data\\gta_sa.exe";
                RegistryKey saveKey = Registry.Users.CreateSubKey(nickgame);
                saveKey.SetValue("PlayerName", nick);
                saveKey.SetValue("gta_sa_exe", putg);

                saveKey.Close();
                string vernow = "192.162.242.65:7160";
                Process.Start("data\\samp.exe", vernow);



            }
            catch
            {
                MessageBox.Show("Плохое соединение с интернетом!");
            }
        }


      

        private void gunaButton6_Click_1(object sender, EventArgs e)
        {
            this.Close();
        }

        private void gunaButton5_Click_1(object sender, EventArgs e)
        {
            this.WindowState = FormWindowState.Minimized;
        }

        private void gunaButton2_Click_1(object sender, EventArgs e)
        {

        }

        private void gunaButton2_Click_2(object sender, EventArgs e)
        {
            this.WindowState = FormWindowState.Minimized;
        }

        private void gunaButton5_Click_2(object sender, EventArgs e)
        {
            System.Diagnostics.Process.Start("https://vk.com/club189063909");
        }

        private void gunaButton4_Click(object sender, EventArgs e)
        {
            System.Diagnostics.Process.Start("http://berezovka-rp.site");
        }

        private void gunaButton3_Click(object sender, EventArgs e)
        {
            System.Diagnostics.Process.Start("http://forum.berezovka-rp.site");
        }
    }
}
