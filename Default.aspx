<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <h1>Company, HR - Visitor Booth</h1>
        <p class="lead">Help your visitors! Upload details and generate visitor badge yourself.</p>
        <dl>
            <dd>
                <address style="font-size: medium; color: #FF0000">
                    <strong>*Your visitors still need your escort.</strong>
                </address>
            </dd>
        </dl>
    </div>

    <table style="width: 95%;">
        <tbody>
            <tr>
                <td style="width: 50%;">
                    <h3>Print Visitor Badge</h3>
                </td>
                <td style="width: 25%; background-color: #CCCCCC;">
                    <h3>Surrender Badge / All Badges</h3>
                </td>
            </tr>
            <tr>
                <td style="width: 50%;">
                    <p>
                        <em>Badge is valid for one day and office hours only.</em>
                    </p>

                    <table style="border: 0; width: 100%;">
                        <form action="Default.aspx" method="get">
                            <tr>
                                <td style="width: 14%;" rowspan="7">&nbsp;</td>
                                <td rowspan="7">
                                    <strong>Badge Preview and Print</strong><br />
                                    <table style="border: groove; width: 50%; align-self: center;">
                                        <tr>
                                            <td style="width: 290px;">Picture</td>
                                        </tr>
                                        <tr>
                                            <td style="height: 109px; width: 290px;">
                                                <% 
                                                    Response.Write(Request.Form.GetValues("Visitor_Name"));
                                                    Response.Write("(");
                                                    Response.Write(Request.Form.GetValues("Date"));
                                                    Response.Write(")");
                                                        %>
                                                <br />
                                                Sponsor<br />
                                                Contact</td>
                                        </tr>
                                    </table>
                                    <br />
                                    <span>
                                        <a class="btn btn-default" href="">Print &raquo;</a></span></td>
                            </tr>
                            <tr>
                            </tr>
                            <tr>
                            </tr>
                            <tr>
                            </tr>
                            <tr>
                            </tr>
                            <tr>
                            </tr>
                            <tr>
                            </tr>
                        </form>
                    </table>


                </td>
                <td style="width: 25%; vertical-align: top; background-color: #CCCCCC;">
                    <p>
                        Find all badges you have issed. You can chose to surrender a badge. Please dispose the badge print in the nearest paper shredder.
                    </p>
                    <p>
                        &nbsp;
                    </p>
                    <p>
                        <a class="btn btn-default" href="http://go.microsoft.com/fwlink/?LinkId=301950">Find Badges &raquo;</a>
                    </p>
            </tr>
            <tr>
                <td style="width: 50%;">&nbsp;</td>
                <td style="width: 25%; background-color: #CCCCCC;">&nbsp;</td>
            </tr>
        </tbody>
    </table>

    <div class="row">
        <div class="col-md-4">
        </div>
    </div>
</asp:Content>
