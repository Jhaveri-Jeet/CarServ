<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="carserv.Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="css/LoginStyle.css" rel="stylesheet">

    <title></title>
</head>
<body>
       <section class="container">
      <div class="login-container">
        <div class="circle circle-one"></div>
        <div class="form-container">
          <img
            src="https://raw.githubusercontent.com/hicodersofficial/glassmorphism-login-form/master/assets/illustration.png"
            alt="illustration"
            class="illustration"
          />
          <h1 class="opacity">Register</h1>
    <form id="form1" runat="server">
              <asp:TextBox ID="txtname" runat="server" placeholder="Fullname" autofocus></asp:TextBox>
              <asp:TextBox ID="txtmobile" runat="server" placeholder="Mobile" TextMode="Number"></asp:TextBox>
              <asp:TextBox ID="txtemail" runat="server" placeholder="E-Mail"></asp:TextBox>
              <asp:TextBox ID="txtpassword" runat="server" placeholder="Password" TextMode="Password"></asp:TextBox>
              <asp:Button ID="Button1" runat="server" Text="Submit" class="opacity" OnClick="Button1_Click"/>
          </form>
          <div class="register-forget opacity">
            <a href="./Login.aspx">Login</a>
          </div>
        </div>
        <div class="circle circle-two"></div>
      </div>
    </section>



</body>
</html>
