<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="addmedicine.aspx.cs" Inherits="addmedicine" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    <table class="nav-justified">
    <tr>
        <td style="width: 326px" class="txt-rt">
            &nbsp;</td>
        <td style="width: 468px">
            &nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td style="width: 326px; height: 27px" class="txt-rt">
            <asp:Label ID="Label1" runat="server" Text="Medicine ID :   "></asp:Label>
        </td>
        <td class="style5" style="height: 27px; width: 468px;">
            <asp:TextBox ID="TextBox3" runat="server" Width="209px" Height="33px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*" ControlToValidate="TextBox3"></asp:RequiredFieldValidator>
        </td>
        <td style="width: 326px; height: 27px" class="txt-rt">
            <asp:Label ID="Label4" runat="server" Text="Medicine Name :   "></asp:Label>
        </td>
        <td class="style5" style="height: 27px; width: 468px;">
            <asp:TextBox ID="TextBox4" runat="server" Width="209px" Height="33px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*" ControlToValidate="TextBox4"></asp:RequiredFieldValidator>
        </td>
        <td class="style5" style="height: 27px"></td>
    </tr>
    <tr>
        <td  style="width: 326px; height: 27px" class="txt-rt">
            <asp:Label ID="Label5" runat="server" Text="Billing Details :   "></asp:Label>
        </td>
        <td class="style5" style="height: 27px; width: 468px;">
            <asp:TextBox ID="TextBox5" runat="server" Width="209px" Height="33px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="*" ControlToValidate="TextBox5"></asp:RequiredFieldValidator>
        </td>
        <td>&nbsp;</td>
    </tr>

        <tr>
        <td style="width: 326px">
           
        </td>
        <td style="width: 468px">
               <asp:Button ID="BtnSave" runat="server" OnClick="BtnSave_Click" Text="Save" Width="250px" />
               </td>
        <td>&nbsp;</td>
    </tr>
        <tr>
            <td>

            </td>
            <td>
                <br />
                <asp:Label ID="Label6" runat="server"></asp:Label>
            </td>
            <td></td>
        </tr>
</table>
</asp:Content>


