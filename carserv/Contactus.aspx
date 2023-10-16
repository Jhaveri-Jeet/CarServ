<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Contactus.aspx.cs" Inherits="carserv.Contactus" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <!-- Contact Start -->
    <div class="container-xxl py-5">
        <div class="container">
            <div class="text-center wow fadeInUp" data-wow-delay="0.1s">
                <h6 class="text-primary text-uppercase">// Contact Us //</h6>
                <h1 class="mb-5">Contact For Any Query</h1>
            </div>
            <div class="row g-4">
                <div class="col-12">
                    <div class="row gy-4">
                        <div class="col-md-4">
                            <div class="bg-light d-flex flex-column justify-content-center p-4">
                                <h5 class="text-uppercase">// Booking //</h5>
                    <p class="mb-2"><i class="fa fa-phone-alt me-3"></i>+91 96871 10727</p>
                                <p class="m-0"><i class="fa fa-envelope-open text-primary me-2"></i>carserv@gmail.com</p>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="bg-light d-flex flex-column justify-content-center p-4">
                                <h5 class="text-uppercase">// General //</h5>
                    <p class="mb-2"><i class="fa fa-phone-alt me-3"></i>+91 96871 10727</p>
                                <p class="m-0"><i class="fa fa-envelope-open text-primary me-2"></i>carserv@gmail.com</p>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="bg-light d-flex flex-column justify-content-center p-4">
                                <h5 class="text-uppercase">// Technical //</h5>
                    <p class="mb-2"><i class="fa fa-phone-alt me-3"></i>+91 96871 10727</p>
                                <p class="m-0"><i class="fa fa-envelope-open text-primary me-2"></i>carserv@gmail.com</p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-6 wow fadeIn" data-wow-delay="0.1s">
                    <iframe class="position-relative rounded w-100 h-100"
                        src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d460.831029914277!2d70.0512773!3d22.4798493!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x39576aab25cdc8eb%3A0xa56eaa8fc33db958!2sManek%20Ratna!5e0!3m2!1sen!2sin!4v1696249840157!5m2!1sen!2sin"
                        frameborder="0" style="min-height: 350px; border:0;" allowfullscreen="" aria-hidden="false"
                        tabindex="0"></iframe>
                </div>
                <div class="col-md-6">
                    <div class="wow fadeInUp" data-wow-delay="0.2s">
                        <p class="mb-4">Fill this form for contact us.</p>
                        <form>
                            <div class="row g-3">
                                <div class="col-md-6">
                                    <div class="form-floating">
                                        <asp:TextBox ID="txtname" runat="server" class="form-control"></asp:TextBox>
                                        <label for="txtname">Your Name</label>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-floating">
                                        <asp:TextBox ID="txtemail" runat="server" class="form-control"></asp:TextBox>
                                        <label for="email">Your Email</label>
                                    </div>
                                </div>
                                <div class="col-12">
                                    <div class="form-floating">
                                        <asp:TextBox ID="txtsubject" runat="server" class="form-control"></asp:TextBox>
                                        <label for="subject">Subject</label>
                                    </div>
                                </div>
                                <div class="col-12">
                                    <div class="form-floating">
                                        <asp:TextBox ID="txtmsg" runat="server" class="form-control" Rows="4" TextMode="MultiLine"></asp:TextBox>
                                        <label for="message">Message</label>
                                    </div>
                                </div>
                                <div class="col-12">
                                    <asp:Button ID="Button1" class="btn btn-primary w-100 py-3" runat="server" Text="Send Message" OnClick="Button1_Click" />
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Contact End -->
</asp:Content>
