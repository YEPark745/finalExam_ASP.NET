<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="_2095417_YoungP_final.Index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>I love ASP</title>
    
    <style type="text/css">
        .auto-style1 {
        text-align: center;
        color: saddlebrown;
        }
        .auto-style2 {
        width: 417px;
        }
        .auto-style3 {
        width: 400px;
        }
        .auto-style4 {
        height: 55px;
        width: 97px;
        }
        .auto-style5 {
        margin-left: 0px;
        margin-top: 0px;
        }
        .auto-style6 {
        width: 273px;

        }
        .auto-style7 {
        height: 55px;
        width: 273px;
        }
        .auto-style8 {
        margin-top: 0px;
        border-radius:20px;
        }
        .auto-style9 {
        width: 733px;
        height: 581px;
        }
        .auto-style10 {
        width: 97px;
        }
        .auto-style11 {
        width: 500px;
        }
        .auto-style12 {
        height: 116px;
        }
        .stylePanel {
        border-radius:50px;
        }
        .tecboc {
        border-radius:10px;
        }
        .auto-style14 {
        text-align: center;
        }
        .auto-style15 {
        margin-top: 0px;
        border-radius:50px;

       }
</style>
</head>
<body style = "background-color:whitesmoke">
    <form id="form1" runat="server" class="auto-style9">
        <div>
            <h1 class="auto-style1"> Hondi Build and Price </h1>
        </div>
        <hr class="auto-style2" />

        <br />

        <table class="auto-style11">
            <tr style="vertical-align:top">
                <td class="auto-style12">
                    <asp:Panel ID="panCar" runat="server" CssClass="stylePanel" BackColor="#ead1dc" GroupingText="Car Information" Height="100%" Width="450px">
                        <table class="auto-style3">
                            <tr>
                                <td class="auto-style10">
                                    <asp:Label ID="lblYourCity" runat="server" AccessKey="c" Text="Your City" AssociatedControlID="txtYourCity"></asp:Label>
                                </td>
                                <td class="auto-style6">
                                    <asp:TextBox ID="txtYourCity" runat="server" CssClass="tecboc" Width="200px"></asp:TextBox>
                                </td>
                            </tr>

                             <tr>
                                <td class="auto-style10">
                                    <asp:Label ID="lblZipCode" runat="server" AccessKey="z" Text="Zip Code" AssociatedControlID="txtZipCode"></asp:Label>
                                </td>
                                <td class="auto-style6">
                                    <asp:TextBox ID="txtZipCode" runat="server" CssClass="tecboc" Width="200px"></asp:TextBox>
                                </td>
                            </tr>

                            <tr>
                                <td class="auto-style10">
                                    <asp:Label ID="lblSelectCarModel" runat="server"  Text="Select Car model" ></asp:Label>
                                </td>
                                <td class="auto-style6">
                                    <asp:DropDownList ID="cboSelectedCarModel" runat="server" CssClass="tecboc" AutoPostBack="true" OnSelectedIndexChanged="cboSelectedCarModel_SelectedIndexChanged" Width="200px">
                                        <asp:ListItem>Select a Car</asp:ListItem>
                                    </asp:DropDownList>

                                
                                </td>
                                
                            </tr>

                            <tr>
                                <td class="auto-style10">
                                    <asp:Label ID="lblInteriorColor" runat="server"  Text="Interior Color" ></asp:Label>
                                </td>
                                <td class="auto-style6">
                                    <asp:ListBox ID="lstInteriorColor" runat="server" CssClass="tecboc" AutoPostBack="true" Width="200px" OnSelectedIndexChanged="lstInteriorColor_SelectedIndexChanged" ></asp:ListBox>
                                </td>
                            </tr>

                            <tr>
                                <td class="auto-style10">
                                    <asp:Label ID="lblAccessories" runat="server"  Text="Accessories" ></asp:Label>
                                </td>
                                <td class="auto-style6">
                                    <asp:CheckBoxList ID="chklstAccessories" runat="server" AutoPostBack="true" OnSelectedIndexChanged="chklstAccessories_SelectedIndexChanged"></asp:CheckBoxList>

                                </td>
                            </tr>


                             <tr>
                                <td class="auto-style10">
                                    <asp:Label ID="lblWarranty" runat="server"  Text="Warranty" ></asp:Label>
                                </td>
                                <td class="auto-style6">
                                    <asp:RadioButtonList ID="radlstWarranty" runat="server" AutoPostBack="true" OnSelectedIndexChanged="radlstWarranty_SelectedIndexChanged"></asp:RadioButtonList>

                                </td>
                            </tr>

                            <tr>
                                <td class="auto-style10">
                                    <asp:Label ID="lblDealerContactYouByPhone" runat="server" Text="Dealer Contact you by phone?"></asp:Label>
                                </td>
                                <td class="auto-style6">
                                    <asp:CheckBox ID="chkDealerContactYouByPhone" runat="server" AutoPostBack="true" OnCheckedChanged="chkDealerContactYouByPhone_CheckedChanged"  />
                                </td>
                            </tr>

                            <tr>
                                <td class="auto-style10">
                                    <asp:Label ID="lblPhoneNumber" runat="server" AccessKey="p" Text="Phone Number" AssociatedControlID="txtPhoneNumber"></asp:Label>
                                </td>
                                <td class="auto-style6">
                                    <asp:TextBox ID="txtPhoneNumber" runat="server" CssClass="tecboc" Width="200px" OnTextChanged="txtPhoneNumber_TextChanged"></asp:TextBox>
                                </td>
                            </tr>
                        </table>
                        <br />
                        <br />
                        <br />
                    </asp:Panel>
                </td>

                <td class="auto-style12">
                    <asp:Panel ID="panPrice" runat="server" GroupingText="Price" BackColor="#ead1dc" Height="250px" Width="260px" CssClass="auto-style8">

                        <asp:Literal ID="litPrice" runat="server"> </asp:Literal>

                        <asp:Literal ID="litInteriorCost" runat="server"></asp:Literal>

                        <asp:Literal ID="litAccessories" runat="server"></asp:Literal>

                        <asp:Literal ID="litWarranty" runat="server"></asp:Literal>

                        <asp:Literal ID="litWitTaxes" runat="server"></asp:Literal>
                        <asp:Literal ID="litTotalWithTaxes" runat="server"></asp:Literal>

                        <asp:Button ID="btnConculude" runat="server" Text="Conclude" OnClick="btnConculude_Click"  />

                    </asp:Panel>
                    <br />

                    <asp:Panel ID="panFinal" runat="server" CssClass="auto-style15" GroupingText="Final Informations" BackColor="#ead1dc">
                         <asp:Literal ID="litFinal" runat="server"> </asp:Literal>
                    </asp:Panel>
                </td>
          </tr>

            <tr>
                <td>
                    &nbsp;
                    &nbsp;
                </td>
                    <td>
                    &nbsp;
                    &nbsp;
                </td>

            </tr>

        </table>
        <br />
    </form>
</body>
</html>
