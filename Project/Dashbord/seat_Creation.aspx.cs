using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services.Description;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project.Dashbord
{
    public partial class seat_Creation : System.Web.UI.Page
    {
        protected int row = 10; protected int column = 9;

        public int[,] matrix = { { 1, 27}, { 8, 4 }, { 5, 6 }, { 7, 8 } };

        public string seats { get; set; }

        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void BtnSub_Click(object sender, EventArgs e)
        {
            seats = txtSeats.Value;
        }
    }
}