<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Tour.Master" CodeBehind="Default.aspx.cs" Inherits="Site.WebForm1" %>

<%--<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
   <link rel="stylesheet" href="style1.css" />
  
	
</head>
<body>
    <form id="form1" runat="server">
        
        <nav class="navbar navbar-expand-lg fixed-top navbar-dark bg-dark">
  <div class="container-fluid">

    <a class="navbar-brand  " href="#"><i>Tour Trip&#9992;</i></a>

        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
          <ul class="navbar-nav me-auto mb-2 mb-lg-0">
            <li class="nav-item">
              <asp:LinkButton ID="Home" runat="server" class="nav-link " OnClick="Home_Click"><b>Home</b></asp:LinkButton>
            </li>     
              <li class="nav-item">
              <asp:LinkButton ID="Aboutus" runat="server" class="nav-link " OnClick="Aboutus_Click" ><b>AboutUs</b></asp:LinkButton>
            </li>
              <li class="nav-item">
              <asp:LinkButton ID="Contactus" runat="server" class="nav-link " OnClick="ContactUs_Click" ><b>ContactUs</b></asp:LinkButton>
            </li>
             </ul>
        </div>

            <asp:TextBox ID="searchbox" runat="server" class="form-control  mr-sm-2 col-3" type="search" placeholder="Search" aria-label="Search" />
            <asp:Button ID="btnsearch" runat="server" Text="Search" class="btn btn-success  my-2 my-sm-0 mx-2" type="submit" />
                    <asp:Button ID="btnlogin" runat="server" Text="Login" class="btn btn-primary my-2 my-sm-0 mx-2" type="submit" OnClick="btnlogin_Click" />
                      <asp:Button ID="btnregister" runat="server" Text="Register" class="btn btn-danger my-2 my-sm-0 mx-2" type="submit" OnClick="btnregister_Click" />
    

  </div>
</nav> 

    </form>--%>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section class="header">
    <h1 id="pose"> <asp:Label ID="heading" runat="server" Text="Welcome To Our Site"></asp:Label><asp:Label ID="sitename" runat="server" Text=" Tour Trip"></asp:Label> <asp:Label ID="user" runat="server" Text=" user"></asp:Label><i style="color:white;" class="fa fa-plane fa-lg" aria-hidden="true"></i>
</h1>
            </section>
   
        
    <div id="homes1">
        <asp:Label ID="lbuser" runat="server" Text="Welcome "></asp:Label>
        <h2><b>
            <asp:Label ID="lbcategory" runat="server" Text="Category : "></asp:Label></b></h2>
        <%-- <asp:Repeater ID="Repeater2" runat="server">
                 <ItemTemplate>
                     <asp:Label ID="imgnm1" runat="server" align="left" Text='<%#Eval("image_name") %>'></asp:Label>
                 </ItemTemplate>
             </asp:Repeater>--%>
        <br />
        <asp:Repeater ID="Repeater1" runat="server">


            <ItemTemplate>
                &nbsp;
               <a href="category.aspx?cat_name=<%#Eval("cat_name") %>">
                   <asp:Image ID="cat1mg" runat="server" Height="200px" Width="230px" ImageUrl='<%#Eval("cat_img") %>' Style="margin-left: 70px; margin-top: 50px; border-radius: 50px; border: 1px solid; border-width: 4px;" AlternateText='<%#Eval("cat_name") %>' />

               </a>&nbsp;
                <asp:Label ID="Label1" runat="server" Text='<%#Eval("cat_name") %>' Font-Bold="True" Font-Italic="True" Font-Overline="False" Font-Size="Medium"></asp:Label>
    <asp:GridView runat="server"></asp:GridView>
            </ItemTemplate>



        </asp:Repeater>
    </div>
   
    <br />
    <div class="gallery1">
<h2>
        <asp:Label ID="Label2" runat="server" Text="Gallery"></asp:Label></h2>

   
        <asp:Repeater ID="Repeater2" runat="server">
            <ItemTemplate>
                <a href="gallery.aspx?galname=<%#Eval("gallery_image_name") %>">
                    <asp:Image ID="Image1" runat="server" Style="margin-left:70px; margin-top:50px; border-radius:50px; border:1px solid; border-width:4px;"
                        ImageUrl='<%#Eval("gallery_imgpath") %>' Height="350px" Width="350px" />
                </a>&nbsp;
                <asp:Label ID="Label3" runat="server" Text='<%#Eval("gallery_image_name") %>' Font-Bold="True" Font-Italic="True" Font-Size="Medium"></asp:Label>
                &nbsp;Rs. <%#Eval("price") %>
            </ItemTemplate>
            
        </asp:Repeater>
        <br />
        </div>
    <br />
    <br />
       
<%--       

</body>
</html>--%>
    </asp:Content>
