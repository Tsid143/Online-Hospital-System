<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AdminLogin.aspx.cs" Inherits="AdminLogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Admin Panel</title>
    <style type="text/css">
        .button {
    background-color: #4CAF50; /* Green */
    border: none;
    color: white;
    padding: 15px 32px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 16px;
}

input[type=button], input[type=submit], input[type=reset] {
    background-color: #4CAF50;
    border: none;
    color: white;
    padding: 16px 32px;
    text-decoration: none;
    margin: 4px 2px;
    cursor: pointer;
}

input[type=text], select {
    width: 100%;
    padding: 12px 20px;
    margin: 8px 0;
    display: inline-block;
    border: 1px solid #ccc;
    border-radius: 4px;
    box-sizing: border-box;
}
#TextBox2
{
    width: 100%;
    padding: 12px 20px;
    margin: 8px 0;
    display: inline-block;
    border: 1px solid #ccc;
    border-radius: 4px;
    box-sizing: border-box;

}
input[type=submit] {
    width: 100%;
    background-color: #4CAF50;
    color: white;
    padding: 14px 20px;
    margin: 8px 0;
    border: none;
    border-radius: 4px;
    cursor: pointer;
}

input[type=submit]:hover {
    background-color: #45a049;
}

div {
    border-radius: 5px;
    background-color: #f2f2f2;
    padding: 20px;
}

    </style>
</head>
<body>
    <center>
    <form id="form1" runat="server">
    <div>
    
        <br />
            <div style="width: 466px; margin-left: 0px; background-color:white; margin-top: 30px;">
                <table cellpadding="1" cellspacing="0" style="border-collapse:collapse;">
                    <tr>
                        <td>
                            <table cellpadding="0" style="height:246px;width:463px;">
                                <tr>
                                    <td align="center" colspan="2" style="color:White;background-color:#6B696B;font-weight:bold;">Admin Login</td>
                                </tr>
                                <tr>
                                    <td align="right" class="auto-style1">
                                        <asp:Label ID="UserNameLabel" runat="server">User Name:</asp:Label>
                                    </td>
                                    <td >
                                        <asp:TextBox ID="TextBox1" runat="server" style="margin-left: 0px" Width="176px"></asp:TextBox>
                                     
                                        
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right" class="auto-style1">
                                        <asp:Label ID="PasswordLabel" runat="server">Password:</asp:Label>
                                    </td>
                                    <td>                   
                                        <asp:TextBox ID="TextBox2" runat="server" TextMode="Password" Width="176px"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="2">
                                        <asp:Button ID="LoginButton" runat="server" CommandName="Login" Height="50px" style="margin-left: 120px; margin-top: 0px" Text="Log In" Width="200px" OnClick="LoginButton_Click" />
                                    </td>
                                </tr>
                                <tr>
                                    <td align="center" colspan="2" style="color:Red;">
                                        <asp:Label ID="Label1" runat="server" ></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right" colspan="2">&nbsp;</td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                </table>
                </div>
    
    </div>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
    </form>
        </center>
</body>
</html>
