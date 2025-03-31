<%@ Page Title="" Language="C#" MasterPageFile="~/Visitors/Visitormaster.master" AutoEventWireup="true" CodeFile="About.aspx.cs" Inherits="Visitors_About" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style2
        {
            width: 100%;
            height: 80%;
        }
        .style4
        {
            width: 85%;
            height: 0;
        }
        .style6
        {
            text-align: justify;
        }
        .style7
        {
            font-family: Arial, Helvetica, sans-serif;
        }
    </style>
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   
     
                    <table align="center" cellpadding="10" class="style4" cellspacing="5">
        <tr>
            <td style="text-align: center; font-size: xx-large" colspan="2">
                ABOUT US<hr noshade="noshade" size="2" 
                    style="color: #800000; background-color: #800000; font-size: small;" />
            </td>
        </tr>
        <tr>
                <td class="style6" valign="top">
                    We are a family-oriented practice with a strong community presence. We believe 
                    in offering high-quality services in a friendly and compassionate environment, 
                    with staff whom truly care about pets and their families. We will always do our 
                    best to provide high-quality, compassionate and personalized care for you and 
                    your pets!</span>&nbsp; The user of the application are employees of the clinic who is 
                    the course of their work need&nbsp; to view and manage information regarding the 
                    veterinarians, the clients and their pets.
                    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Pet central is the country&#39;s first comprehensive pet portal, dedicated to 
                    provide pet lovers the easiest platform for their pet search needs. We are the 
                    perfect partner for breeder and pet searvice provides. We introduce you the new 
                    way of having your business known online..</td>
                <td class="style6" valign="top">
                    <asp:Image ID="Image5" runat="server" Height="350px" 
                        ImageUrl="~/Images/dog-training.png" Width="600px" />
                </td>
        </tr>
        </table>
            
</asp:Content>

