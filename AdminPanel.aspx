<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="AdminPanel.aspx.cs" Inherits="AdminPanel" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width:105%;" "margin-left: 500px";>
        <tr>
            <td style="width: 280px">
                &nbsp;</td>
            <td style="width: 280px" class="modal-sm">
                &nbsp;</td>
            <td style="width: 280px">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 280px">
                &nbsp;</td>
            <td style="width: 280px" class="modal-sm">
                &nbsp;</td>
            <td style="width: 280px">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 280px">
                <asp:Button ID="Button2" runat="server" onclick="Button2_Click" 
                    Text="Add Doctor" Width="259px" Height="52px" />
                </td>
            <td style="width: 280px" class="modal-sm">
                <asp:Button ID="Button3" runat="server" OnClick="Button3_Click1"
                    Text="Add Medicine" Width="259px"  Height="52px" />
            </td>
            <td style="width: 280px">
                <asp:Button ID="Button4" runat="server" OnClick="Button4_Click"
                    Text="View Appointment" Width="259px" Height="52px" />
            </td>
        </tr>
    </table>
</asp:Content>

