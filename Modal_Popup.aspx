<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Modal_Popup.aspx.cs" Inherits="Modal_Popup" %>

<!DOCTYPE html>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="css/demo.css" rel="stylesheet" />
    <style type="text/css">
        /*Start Asp Modal Popup*/
        .modalBackground {
            background-color: Black;
            filter: alpha(opacity=90);
            opacity: 0.8;
        }

        .modalPopup {
            background-color: #FFFFFF;
            width: auto;
            height: auto;
        }
        /*End Asp Modal Popup*/

        /* Normal styles for the modal */
        #modal {
            left: 50%;
            margin: -250px 0 0 -40%;
            opacity: 0;
            position: absolute;
            top: -50%;
            visibility: hidden;
            width: 80%;
            box-shadow: 0 3px 7px rgba(0,0,0,.25);
            box-sizing: border-box;
            transition: all 0.4s ease-in-out;
            -moz-transition: all 0.4s ease-in-out;
            -webkit-transition: all 0.4s ease-in-out;
        }
            /* Make the modal appear when targeted */
            #modal:target {
                opacity: 1;
                top: 50%;
                visibility: visible;
            }

            #modal .header, #modal .footer {
                border-bottom: 1px solid #e7e7e7;
                border-radius: 5px 5px 0 0;
            }

            #modal .footer {
                border: none;
                border-top: 1px solid #e7e7e7;
                border-radius: 0 0 5px 5px;
            }

            #modal h2 {
                margin: 0;
            }

            #modal .btn {
                float: right;
            }

            #modal .copy, #modal .header, #modal .footer {
                padding: 15px;
            }

        .modal-content {
            background: #f7f7f7;
            position: relative;
            z-index: 20;
            border-radius: 5px;
        }

        #modal .copy {
            background: #fff;
        }

        #modal .overlay {
            background-color: #000;
            background: rgba(0,0,0,.5);
            height: 100%;
            left: 0;
            position: fixed;
            top: 0;
            width: 100%;
            z-index: 10;
        }
        /*End Html5 Modal Popup*/
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <asp:Label ID="lblmsg" runat="server" />
        <asp:Button ID="modelPopup" runat="server" Style="display: none" />
        <cc1:ModalPopupExtender ID="ModalPopupExtender1" runat="server" TargetControlID="btn_submit" PopupControlID="updatePanel"
            CancelControlID="btnCancel" BackgroundCssClass="modalBackground">
        </cc1:ModalPopupExtender>
        <asp:Panel ID="updatePanel" runat="server" BackColor="White" Width="408px" Style="display: none; height: auto;">
            <table width="100%" cellspacing="4">
                <tr style="background-color: #268BB5">
                    <td colspan="2" align="center" style="color: white; font-size: 15px; font-weight: 700; height: 25px;">Modal Popup</td>
                </tr>
                <tr>
                    <td style="width: 100%;" colspan="2">
                        <div style="font-size: 22px; margin-top: 14px; padding-left: 15px; text-align: center;">
                            Modal Popup
                        </div>
                    </td>
                </tr>
                <tr>
                    <td colspan="2" style="text-align: center;">
                        <br />
                        <asp:Button ID="btnCancel" runat="server" Text="Close" class="btn btn-inverse" />
                    </td>
                </tr>
            </table>
        </asp:Panel>
        <table>
            <tr>
                <td>
                    <asp:Button ID="btn_submit" runat="server"  class="btn go" Text="Asp Modal Poppup" OnClick="btn_submit_Click" />
                </td>
            </tr>
        </table>
        <br />
        <table>
            <tr>
                <td>
            <p><a href="#modal" class="btn go">Html Modal Poppup</a></p>
         </td>
            </tr>
        </table>
        <div id="modal">
            <div class="modal-content">
                <div class="header">
                    <h2>Html Modal Poppup</h2>
                </div>
                <div class="copy">
                    <p>Html Modal Poppup</p>
                </div>
                <div class="cf footer">
                    <a href="#" class="btn">Close</a>
                </div>
            </div>
            <div class="overlay"></div>
        </div>
    </form>
</body>
</html>
