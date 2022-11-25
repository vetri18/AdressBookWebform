<%@ Page Title="" Language="C#" MasterPageFile="~/AdressBook.Master" AutoEventWireup="true" CodeBehind="ContactForm.aspx.cs" Inherits="AdressBook.ContactForm" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../stylesheets/contact.css" rel="stylesheet" />
    
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   <div class="sec2">
       <div class="background">
        

    <div style="margin-left: 40px">
        <h2 style="margin-left: 80px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; CONTACT FORM&nbsp;&nbsp;&nbsp; </h2>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label1" runat="server" Text="FirstName"></asp:Label>
         &emsp;&emsp;
        <asp:TextBox ID="TextBox1" runat="server" Width="210px"></asp:TextBox>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label2" runat="server" Text="LastName"></asp:Label>
         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         &nbsp;<asp:TextBox ID="TextBox2" runat="server" Width="210px" Height="19px"></asp:TextBox>

        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

    <br />
         &emsp;&emsp;
        <br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label3" runat="server" Text="Address"></asp:Label>
        &emsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
        <asp:TextBox ID="TextBox3" runat="server"  Width="210px" style="margin-left: 4px"></asp:TextBox>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label4" runat="server" Text="City"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox4" runat="server" Height="21px" Width="210px"></asp:TextBox>
&nbsp;&nbsp;
        <br />&emsp;&emsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </div>
           <div style="margin-left: 40px">
               &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
               <asp:Label ID="Label5" runat="server" Text="State"></asp:Label>
           &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
               <asp:DropDownList ID="DropDownList1" runat="server" Height="29px" Width="210px" style="margin-left: 0px">
                   <asp:ListItem>Select State</asp:ListItem>
                   <asp:ListItem Text="Andhra Pradesh" Value="Andhra Pradesh"></asp:ListItem>
                   <asp:ListItem Text="Arunachal Pradesh" Value="Arunachal Pradesh"></asp:ListItem>
                   <asp:ListItem Text="TamilNadu" Value="TamilNadu"></asp:ListItem>
                   <asp:ListItem Text="Bihar" Value="Bihar"></asp:ListItem>
                   <asp:ListItem Text="Chhattisgarh" Value="Chhattisgarh" ></asp:ListItem>
                   <asp:ListItem Text="Goa" Value="Goa"></asp:ListItem>
                   <asp:ListItem Text="Gujarat" Value="Gujarat"></asp:ListItem>
               </asp:DropDownList>
               &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
               <asp:Label ID="Label6" runat="server" Text="Zip"></asp:Label>
         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
               <asp:TextBox ID="TextBox5" runat="server" Width="210px"></asp:TextBox>

    </div>
    <br />
           <div style="margin-left: 40px">
               <p style="margin-left: 80px; width: 672px;">
&nbsp;<asp:Label ID="Label7" runat="server" Text="Phone"></asp:Label>
         &emsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                   <asp:TextBox ID="TextBox6" runat="server" Width="210px"></asp:TextBox>
                   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label8" runat="server" Text="Email"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                   <asp:TextBox ID="TextBox7" runat="server" Width="210px"></asp:TextBox>
                   <br />&emsp;&emsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
               </p>

    </div>
           <div style="margin-left: 360px">
       
               <asp:Button ID="Button2" runat="server" Text="BackTOList" style="margin-left: 0px" Width="111px"  Height="33px" OnClick="Button2_Click" />
               <asp:Button ID="Button1" runat="server" Text="Submit" Width="101px" Height="32px"  OnClick="Button1_Click" style="margin-left: 40px" />
    </div>

    <div>
        <asp:Label ID="Label9" runat="server" ></asp:Label>
    </div>
           
            
        </div>
       </div>
</asp:Content>
