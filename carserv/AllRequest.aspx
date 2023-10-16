<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.Master" AutoEventWireup="true" CodeBehind="AllRequest.aspx.cs" Inherits="carserv.AllRequest" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row ">
        <div class="col-12 grid-margin">
            <div class="card">
                <div class="card-body">
                    <h4 class="card-title">Request Details</h4>
                    <div class="table-responsive">
                        <table class="table">
                            <thead>
                                <tr>
                                    <th>Full-Name</th>
                                    <th>Number</th>
                                    <th>Car-Name</th>
                                    <th>Car-No</th>
                                    <th>Day</th>
                                    <th>Time</th>
                                    <th colspan="2">Action</th>
                                </tr>
                            </thead>
                            <tbody>
                                <asp:Repeater ID="Repeater3" runat="server">
                                    <ItemTemplate>
                                        <tr>
                                            <td><%# Eval("fullname") %> </td>
                                            <td><%# Eval("mobile") %> </td>
                                            <td><%# Eval("carname") %> </td>
                                            <td><%# Eval("carno") %> </td>
                                            <td><%# Eval("day") %> </td>
                                            <td><%# Eval("time") %> </td>
                                            <td>
                                                <a href="./acceptRequest.aspx?id=<%#Eval("Id")%>&slotid=<%# Eval("Slotid")%>">Accept</a>
                                            </td>
                                            <td>
                                                <a href="./declineRequest.aspx?id=<%#Eval("Id")%>&slotid=<%# Eval("Slotid")%>">Decline</a>
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
