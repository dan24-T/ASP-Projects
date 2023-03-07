<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="Project.SignUp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="StyleSheet1.css" />
</head>
<body>
    <section>
        <div class="sign_up_box">
            <form id="form1" runat="server">
                <div class="form">
                    <h2>Sign Up</h2>
                    <div class="multi_input_box">
                        <div class="input_box">
                            <asp:TextBox ID="TextBox2" runat="server" autocomplete="off" onfocusout="myFunction(this.id)" placeholder="Enter First Name"></asp:TextBox>
                            <label for="">First Name</label>
                            <span>required *</span>
                        </div>
                        <div class="input_box">
                            <asp:TextBox ID="TextBox3" runat="server" autocomplete="off" onfocusout="myFunction(this.id)" placeholder="Enter Last Name"></asp:TextBox>
                            <label for="">Last Name</label>
                            <span>required *</span>
                        </div>
                    </div>
                    <div class="input_box">
                        <asp:TextBox ID="TextBox4" runat="server" autocomplete="off" onfocusout="myFunction(this.id)" placeholder="Enter username"></asp:TextBox>
                        <label for="">UserName</label>
                        <span>required *</span>
                    </div>
                    <div class="input_box">
                        <asp:TextBox ID="TextBox1" runat="server" autocomplete="off" onfocusout="myFunction(this.id)" placeholder="Enter Your Email"></asp:TextBox>
                        <label for="">Email</label>
                        <span>required *</span>
                    </div>
                    <div class="input_box">
                        <asp:TextBox ID="TextBox5" runat="server" autocomplete="off" onfocusout="myFunction(this.id)" placeholder="Enter Your Password"></asp:TextBox>
                        <label for="">Password</label>
                        <span>required *</span>
                    </div>
                    <div class="input_box">
                        <asp:TextBox ID="TextBox6" runat="server" autocomplete="off" onfocusout="myFunction(this.id)" placeholder="Confirm Password"></asp:TextBox>
                        <label for="">Confirm password</label>
                        <span>required *</span>
                    </div>
                    <div class="button">
                        <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" />
                    </div>        

                    <div class="p">
                        <p>Alraedy have an account? <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">Sign in</asp:LinkButton></p>
                    </div>
                </div>
           </form>
        </div>
    </section>
    <script>
        function myFunction(val) {

            document.getElementById(val).required = true;
            document.getElementById(val).placeholder = "";
            console.log("YOU CHANGED ME TO!" + val);
        }
    </script>
</body>
</html>
