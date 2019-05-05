<%@ Page Language="C#" AutoEventWireup="true" CodeFile="PhotoBooth.aspx.cs" Inherits="PhotoBooth" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title><%: Page.Title %> - Compay HR Site</title>

    <asp:PlaceHolder runat="server">
        <%: Scripts.Render("~/bundles/modernizr") %>
    </asp:PlaceHolder>
    <webopt:BundleReference runat="server" Path="~/Content/css" />
    <link href="~/favicon.ico" rel="shortcut icon" type="image/x-icon" />
</head>
<body>
    <div class="navbar navbar-inverse navbar-fixed-top">
        <div class="container">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a href="~/">HR Self Service Portal</a>- Visitor Service Desk
            </div>
            <div class="navbar-collapse collapse">
                <ul class="nav navbar-nav">
                    <li><a runat="server" href="~/">Home</a></li>
                    <li><a runat="server" href="~/About">About</a></li>
                    <li><a runat="server" href="~/Contact">Contact</a></li>
                </ul>
            </div>
        </div>
    </div>
    <div class="container body-content">
        <!--<form id="form1" runat="server">-->
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
                    <td style="width: 75%;">
                        <h3>Generate New Badge</h3>
                    </td>
                    <td style="width: 25%; background-color: #CCCCCC;">
                        <h3>Surrender Badge / All Badges</h3>
                    </td>
                </tr>
                <tr>
                    <td style="width: 75%;">
                        <p>
                            Fill the form below along with a picture of Visitor. You can select various templates and print the badge yourself.
                        </p>
                        <p>
                            &nbsp;
                        </p>
                        <form method="post" enctype="multipart/form-data" id="PhotoBoothForm">
                            <table style="border: 0; width: 100%;">

                                <tr>
                                    <td style="width: 14%;">Visitor Name</td>
                                    <td style="width: 30%;">
                                        <span>

                                            <input type='text' id='Visitor_Name' name='Visitor_Name' placeholder='Visitor Name' required="required" /></span></td>
                                    <td style="width: 30%; vertical-align: top" rowspan="7"><strong>Badge Preview and Print</strong><br />
                                        <table style="border: groove; width: 50%; align-self: center;">
                                            <tr>
                                                <td style="width: 30%;">
                                                    &nbsp;
                                                </td>
                                                <td style="width: 100px;">
                                                    <b>Visitor Pass</b>
                                                    <img class="img-circle" src="<%: (Request.Files.Count != 0)?Request.Files[0].FileName:"http://i.ebayimg.com/images/i/161805990128-0-1/s-l1000.jpg" %>" />
                                                </td>
                                                <td style="width: 30%;">
                                                    &nbsp;

                                                </td>
                                            </tr>
                                            <hr />
                                            <tr>
                                                <td style="height: 109px; width: 290px;" colspan="3">
                                                    <b><%: Request.HttpMethod.Equals("POST")?Request.Form["Visitor_Name"].ToString():"Visitor Name" %></b>
                                                    (<%: Request.HttpMethod.Equals("POST")?Request.Form["Date"].ToString():"Date" %>)<br />
                                                    Sponsor: <%: Request.HttpMethod.Equals("POST")?Request.Form["Sponsor_Name"].ToString():"Sponsor" %><br />
                                                    Contact: <%: Request.HttpMethod.Equals("POST")?Request.Form["Sponsor_Contact"].ToString():"Contact" %>
                                                </td>
                                            </tr>
                                            
                                        </table>
                                        <br />
                                                    <span>
                                                        <a class='btn btn-default' href='#'>Print &raquo;</a>
                                                    </span></td>
                                              
                                </tr>
                                <tr>
                                    <td style="width: 14%;">
                                        <span>Sponsor Name/Alias</span></td>
                                    <td style="width: 30%;">
                                        <span>
                                            <input type='text' id='Sponsor_Name' name='Sponsor_Name' placeholder='Sponsor Name/Alias' required="required" /></span></td>
                                </tr>
                                <tr>
                                    <td style="width: 14%;">
                                        <span>Sponsor Contact</span></td>
                                    <td style="width: 30%;">
                                        <span>
                                            <input type='number' id='Sponsor_Contact' name='Sponsor_Contact' required="required" /></span></td>
                                </tr>
                                <tr>
                                    <td style="width: 14%;">
                                        <span>Date</span></td>
                                    <td style="width: 30%;">
                                        <span>
                                            <input type='date' id='Date' name='Date' required="required" /></span></td>
                                </tr>
                                <tr>
                                    <td style="width: 14%;">
                                        <span>Visitor Photo</span></td>
                                    <td style="width: 30%;"><span>
                                        <a>
                                            <input type='file' class='file' id='Visitor_Photo' name='Visitor_Photo' required="required" /></a></span></td>
                                </tr>
                                <tr>
                                    <td style="width: 14%; height: 24px;">
                                        <span>Badge Template</span></td>
                                    <td style="width: 30%; height: 24px;">
                                        <span>
                                            <select id='Badge_Template' name='Badge_Template' required="required">
                                                <option value='Circle'>Circle</option>
                                                <option value='Square'>Square </option>
                                                <option value='Hexagon'>Hexagon </option>
                                                <option value='powershell'>Star</option>
                                            </select></span></td>
                                </tr>
                                <tr>
                                    <td style="width: 14%;">&nbsp;</td>
                                    <td style="width: 30%;">
                                        <span>
                                            <input type='reset' id='Reset' name='Reset' value='Reset' />
                                            <input type='submit' id='Submit' name='Submit' value='Submit' />
                                        </span>
                                    </td>
                                </tr>

                            </table>
                        </form>


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
                    </td>
                </tr>
                <tr>
                    <td style="width: 75%;">&nbsp;</td>
                    <td style="width: 25%; background-color: #CCCCCC;">&nbsp;</td>
                </tr>
            </tbody>
        </table>

        <div class="row">
            <div class="col-md-4">
            </div>
        </div>
        <!--</form>-->
        <div class="container body-content">
            <hr />
            <footer>
                <p>&copy; <%: DateTime.Now.Year %> - Company</p>
            </footer>
        </div>
    </div>
</body>
</html>
