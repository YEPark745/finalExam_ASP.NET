using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _2095417_YoungP_final
{
    public partial class Index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            panFinal.Visible = panPrice.Visible = false;

            if (!Page.IsPostBack)
            {
                txtPhoneNumber.Visible = lblPhoneNumber.Visible = false;

                cboSelectedCarModel.Items.Add(new ListItem("Civoc", "25000"));
                cboSelectedCarModel.Items.Add(new ListItem("DR-V", "30000"));
                cboSelectedCarModel.Items.Add(new ListItem("Appord", "33000"));
                cboSelectedCarModel.Items.Add(new ListItem("Cilot", "45000"));
                cboSelectedCarModel.Items.Add(new ListItem("Odyrrey", "54000"));

                lstInteriorColor.Items.Add(new ListItem("White", "0"));
                lstInteriorColor.Items.Add(new ListItem("Dark", "3000"));
                lstInteriorColor.Items.Add(new ListItem("Pearl", "900"));

                lstInteriorColor.SelectedIndex = 0;

                chklstAccessories.Items.Add(new ListItem("Aero Kit", "1300"));
                chklstAccessories.Items.Add(new ListItem("Film", "600"));
                chklstAccessories.Items.Add(new ListItem("Cold Weather", "900"));
                chklstAccessories.Items.Add(new ListItem("Hondi Emblem", "150"));

                chklstAccessories.SelectedIndex = 0;

                radlstWarranty.Items.Add(new ListItem("3 Years (Included)", "0"));
                radlstWarranty.Items.Add(new ListItem("5 Years", "1000"));
                radlstWarranty.Items.Add(new ListItem("7 Years", "1500"));

                radlstWarranty.SelectedIndex = 0;
            }

            if (cboSelectedCarModel.SelectedIndex > 0)
            {
                calculatePrice();
            }
        }

        private void calculatePrice()
        {
            decimal baseP = 0, interiorC = 0, total = 0, accessories = 0, subtotal = 0, warranty = 0, tax = 0;

            baseP = Convert.ToDecimal(cboSelectedCarModel.SelectedItem.Value);
            interiorC = Convert.ToDecimal(lstInteriorColor.SelectedItem.Value);

            litPrice.Text = "<br> <b> Car Price: $ </b>" + baseP;
            litInteriorCost.Text = "<br> <b> Interior Color: $ </b>" + interiorC;

//            if(chkDealerContactYouByPhone.Checked)
//            {
//                txtPhoneNumber();
//            }
//            lstInteriorColor.Text += "<br> <b> Interior Color: $ </b> " + interiorColor + "<br>";
 //           accessories = Convert.ToDecimal(chklstAccessories.SelectedItem.Value);

            foreach (ListItem item in chklstAccessories.Items)
            {
                //if statement ADVANCED
                accessories += item.Selected ? Convert.ToDecimal(item.Value) : 0;

            }
            foreach (ListItem item in radlstWarranty.Items)
            {
                //if statement ADVANCED
                warranty += item.Selected ? Convert.ToDecimal(item.Value) : 0;


            }

            litAccessories.Text += "<br> <b> Acessories: $ </b>" + accessories;
            litWarranty.Text += "<br> <b> Warranty: $ </b>" + warranty + "<br>";

            subtotal = baseP + interiorC + accessories + warranty;

            litWitTaxes.Text += "<br> <b> Total without tax: $ </b>" + subtotal + "<br>";


            tax += Math.Round(subtotal * Convert.ToDecimal(0.15), 2);
            total = subtotal + tax;

            litTotalWithTaxes.Text = "<b> Total withtaxes(15%): $ </b>" + total + "</br>";

            panPrice.Visible = true;


        }

        protected void btnConculude_Click(object sender, EventArgs e)
        {
         panFinal.Visible = true;

            litFinal.Text = "Congratulation in obtain your new Hondi " + cboSelectedCarModel.Text +" in "+ txtYourCity.Text + ", " + txtZipCode.Text + "."
                + "</br>"+ "Your car comes with " + lstInteriorColor.Text +" Interior Color, "+ chklstAccessories + 
                "</br>" + "You choose "+ radlstWarranty +"of warranty and our dealar will contact you by the phone number " + txtPhoneNumber.Text + ".";
        }

        protected void chkDealerContactYouByPhone_CheckedChanged(object sender, EventArgs e)
        {
            txtPhoneNumber.Visible = lblPhoneNumber.Visible = (chkDealerContactYouByPhone.Checked) ? true : false;
        }

        protected void cboSelectedCarModel_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void lstInteriorColor_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void chklstAccessories_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void radlstWarranty_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void txtPhoneNumber_TextChanged(object sender, EventArgs e)
        {

        }
    }
}
