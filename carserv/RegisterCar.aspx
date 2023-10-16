<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="RegisterCar.aspx.cs" Inherits="carserv.RegisterCar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <div class="container-xxl py-5">
        <div class="container">
            <div class="text-center wow fadeInUp" data-wow-delay="0.1s">
                <h1 class="mb-5">Register Car For Any Service</h1>
            </div>
            <div class="row g-4">
                <div class="col-12">
                    <div class="row gy-4">
                    </div>
                </div>
             
               <%-- <div class="col-md-12">
                    <div class="wow fadeInUp" data-wow-delay="0.2s">
                        <p class="mb-4">Fill this form for contact us.</p>
                        <form>
                            <div class="row g-3">
                                <div class="col-md-6">
                                    <div class="form-floating">
                                        <asp:TextBox ID="TextBox1" runat="server" class="form-control"></asp:TextBox>
                                        <label for="txtname">Car Name</label>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-floating">
                                        <asp:TextBox ID="TextBox2" runat="server" class="form-control"></asp:TextBox>
                                        <label for="email">Car No</label>
                                    </div>
                                </div>
                                <div class="col-12">
                                    <div class="form-floating">
                                        <asp:TextBox ID="TextBox3" runat="server" class="form-control"></asp:TextBox>
                                        <label for="subject">Model No.</label>
                                    </div>
                                </div>
                                <div class="col-12">
                                    <div class="form-floating">
                                        <asp:TextBox ID="TextBox4" runat="server" class="form-control" Rows="4" TextMode="MultiLine"></asp:TextBox>
                                        <label for="message">Problem</label>
                                    </div>
                                </div>
                                <div class="col-12">
                                    <asp:Button ID="Button2" class="btn btn-primary w-100 py-3" runat="server" Text="Send Message"  OnClick="Button1_Click"/>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>--%>

                <div class="col-md-12">
                    <div class="wow fadeInUp" data-wow-delay="0.2s">
                        <p class="mb-4">Fill this form for contact us.</p>
                        <form>
                            <div class="row g-3">
                                <div class="col-md-6">
                                    <div class="form-floating">
                                        <asp:TextBox ID="txtcarname" runat="server" class="form-control"></asp:TextBox>
                                        <label for="txtname">Car Name</label>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-floating">
                                        <asp:TextBox ID="txtcarno" runat="server" class="form-control"></asp:TextBox>
                                        <label for="email">Car No</label>
                                    </div>
                                </div>
                                <div class="col-12">
                                    <div class="form-floating">
                                        <asp:TextBox ID="txtmodel" runat="server" class="form-control"></asp:TextBox>
                                        <label for="subject">Model No.</label>
                                    </div>
                                </div>
                                <div class="col-12">
                                    <div class="form-floating">
                                        <asp:TextBox ID="txtmsg" runat="server" class="form-control" Rows="4" TextMode="MultiLine"></asp:TextBox>
                                        <label for="message">Problem</label>
                                    </div>
                                </div>
                                <div class="col-12">
                                    <asp:Button ID="Button1" class="btn btn-primary w-100 py-3" runat="server" Text="Register Car"  OnClick="Button1_Click"/>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
