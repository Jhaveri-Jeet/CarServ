<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Inquiry.aspx.cs" Inherits="carserv.Inquiry" %>

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

                <div class="col-md-12">
                    <div class="wow fadeInUp" data-wow-delay="0.2s">
                        <p class="mb-4">Fill this form for contact us.</p>
                        <div class="row g-3">
                            <div class="col-md-12">
                                <div class="form-floating">
                                    <asp:DropDownList ID="DropDownList1" runat="server" class="form-control"></asp:DropDownList>
                                    <label for="txtname">Slot Detail</label>
                                </div>
                            </div>
                            <div class="col-12">
                                <asp:Button ID="Button1" class="btn btn-primary w-100 py-3" runat="server" Text="Send Message" OnClick="Button1_Click" />
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
