<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ListViewAddDoctor.aspx.cs" Inherits="ListViewAddDoctor" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">



    <p>
        <table class="search" width="99%">
            <tr>
                <td align="left" class="search_es" width="100">Item Code : </td>
                <td align="left">
                    <asp:TextBox ID="txtSitemCDE" runat="server" MaxLength="30" />
                </td>
                <td align="left" class="search_es" width="100">Item NAME : </td>
                <td align="left">
                    <asp:TextBox ID="txtSItemNme" runat="server" MaxLength="30" />
                </td>
                <td align="center" class="searchbtn">
                    <asp:ImageButton ID="btnSearch" runat="server" ImageUrl="~/Images/btnSearch.jpg" onclick="btnSearch_Click" />
                </td>
            </tr>
        </table>
    </p>
    <p>
        <table>
            <tr>
                <td align="center" valign="middle">
                    <table style="width: 1011px">
                        <tr>
                            <td>
                                <table width="100%">
                                    <tr>
                                        <td align="left" class="style1">
                                            <table class="title" width="100%">
                                                <tr>
                                                    <td width="100%">
                                                        <img src="http://localhost:15003/Images/Item.gif" />
                                                        <asp:ImageButton ID="btnAdd" runat="server" ImageUrl="~/Images/btnNew.jpg" onclick="btnAdd_Click" />
                                                    </td>
                                                </tr>
                                            </table>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td id="tdADD" runat="server" visible="false">
                                            <table class="search" width="100%">
                                                <tr>
                                                    <td align="left" class="search_es" width="100">Item Code : </td>
                                                    <td align="left">
                                                        <asp:TextBox ID="txtitemCode" runat="server" Enabled="False" MaxLength="30" />
                                                    </td>
                                                    <td align="left" class="search_es" width="100">Item NAME : </td>
                                                    <td align="left">
                                                        <asp:TextBox ID="txtitemName" runat="server" MaxLength="30" />
                                                    </td>
                                                    <td align="left" class="search_es" width="100">Price : </td>
                                                    <td align="left">
                                                        <asp:TextBox ID="txtPrice" runat="server" MaxLength="30">0</asp:TextBox>
                                                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtPrice" ErrorMessage="Only Numbers allowed" ValidationExpression="\d+"></asp:RegularExpressionValidator>
                                                    </td>
                                                    <td class="searchbtn" rowspan="2">
                                                        <asp:ImageButton ID="btnSave" runat="server" ImageUrl="~/Images/btnSave.jpg" onclick="btnSave_Click" OnClientClick="return ValidCheck();" />
                                                        <asp:ImageButton ID="btnCancel" runat="server" ImageUrl="~/Images/btnCancel.jpg" onclick="btnCancel_Click" />
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td align="left" class="search_es" width="100">Tax1 : </td>
                                                    <td align="left">
                                                        <asp:TextBox ID="txtTax" runat="server" MaxLength="30">0</asp:TextBox>
                                                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtTax" ErrorMessage="Only Numbers allowed" ValidationExpression="\d+"></asp:RegularExpressionValidator>
                                                    </td>
                                                    <td align="left" class="search_es" width="100">Discount : </td>
                                                    <td align="left">
                                                        <asp:TextBox ID="txtDiscount" runat="server" MaxLength="30">0</asp:TextBox>
                                                        <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="txtDiscount" ErrorMessage="Only Numbers allowed" ValidationExpression="\d+"></asp:RegularExpressionValidator>
                                                    </td>
                                                    <td align="left" class="search_es" width="110">Description : </td>
                                                    <td align="left">
                                                        <asp:TextBox ID="txtdescription" runat="server" MaxLength="30" TextMode="MultiLine" Width="220px" />
                                                    </td>
                                                </tr>
                                            </table>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
    </p>
    <p>
        <table class="title" style="width: 1042px; height: 26px">
            <tr>
                <td width="100%">
                    <h3>Details:</h3>
                </td>
            </tr>
        </table>
    </p>
    <p>
        <table class="search" width="100%">
            <tr>
                <td>
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="#ECF3F4" BorderColor="#336699" BorderStyle="Solid" BorderWidth="1px" DataKeyNames="pharmistid" DataSourceID="SqlDataSource4" EnableModelValidation="True" onrowcommand="GridView1_RowCommand" Width="164%">
                        <AlternatingRowStyle BackColor="#C5DAE4" />
                        <EditRowStyle BorderColor="#336699" BorderStyle="Solid" BorderWidth="1px" />
                        <HeaderStyle BackColor="#336699" BorderColor="AliceBlue" BorderStyle="Solid" BorderWidth="1px" ForeColor="White" />
                        <SelectedRowStyle BackColor="#8CB3D9" />
                        <Columns>
                            <asp:BoundField DataField="pharmistid" HeaderText="pharmistid" InsertVisible="False" ReadOnly="True" SortExpression="pharmistid" />
                            <asp:BoundField DataField="medicinename" HeaderText="medicinename" SortExpression="medicinename" />
                        </Columns>
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:HospitalDBConnectionString2 %>" SelectCommand="SELECT [billingdetails], [medicinename], [pharmistid] FROM [pharmisttab]"></asp:SqlDataSource>
                </td>
            </tr>
        </table>
    </p>



</asp:Content>

