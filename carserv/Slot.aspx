<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.Master" AutoEventWireup="true" CodeBehind="Slot.aspx.cs" Inherits="carserv.Slot" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row">
        <div class="col-2"></div>
        <div class="col-md-8 grid-margin stretch-card">
            <div class="card">
                <div class="card-body">
                    <h4 class="card-title">Slot Creating Form</h4>
                    <p class="card-description">CarServ Slots</p>
                    <form class="forms-sample" runat="server">
                        <div class="form-group row">
                            <label for="exampleInputUsername2" class="col-sm-3 col-form-label">Day</label>
                            <div class="col-sm-9">
                                <asp:TextBox ID="TextBox1" runat="server" class="form-control" placeholder="Day" autofocus></asp:TextBox>
                            </div>
                        </div>
                        <div class="form-group row">
                            <label for="exampleInputEmail2" class="col-sm-3 col-form-label">Time</label>
                            <div class="col-sm-9">
                                <asp:TextBox ID="TextBox2" runat="server" class="form-control" placeholder="Time"></asp:TextBox>
                            </div>
                        </div>
                        <asp:Button ID="Button1" class="btn btn-primary mr-2" runat="server" Text="Submit" OnClick="Button1_Click" />
                    </form>
                </div>
            </div>
        </div>
        <div class="col-2"></div>
    </div>
    <div class="row ">
        <div class="col-12 grid-margin">
            <div class="card">
                <div class="card-body">
                    <h4 class="card-title">Slot Information</h4>
                    <div class="table-responsive">
                        <table class="table">
                            <thead>
                                <tr>
                                    <th>Day</th>
                                    <th>Time</th>
                                    <th>Status</th>
                                    <th>Delete </th>
                                </tr>
                            </thead>
                            <tbody>
                                <asp:Repeater ID="Repeater1" runat="server">
                                    <ItemTemplate>
                                        <tr>
                                            <td><%# Eval("day") %> </td>
                                            <td><%# Eval("time") %> </td>
                                            <td><%# Eval("status").ToString() != "unoccupied" ? "<div class='badge badge-outline-success'>Occupied</div>" : "<div class='badge badge-outline-danger'>Unoccupied</div>" %>  </td>
                                            <td>
                                                <a href="./deleteSlot.aspx?id=<%# Eval("Id") %> ">Delete</a>
                                            </td>
                                        </tr>
                                    </ItemTemplate>
                                </asp:Repeater>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
