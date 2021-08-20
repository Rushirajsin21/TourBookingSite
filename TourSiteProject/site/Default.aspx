<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Site.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
   <link rel="stylesheet" href="StyleSheet2.css" />
    
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.7.2/animate.min.css">
	
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
              <asp:LinkButton ID="ContactUs" runat="server" class="nav-link " OnClick="ContactUs_Click" ><b>ContactUs</b></asp:LinkButton>
            </li>
             </ul>
        </div>

            <asp:TextBox ID="searchbox" runat="server" class="form-control  mr-sm-2 col-sm-3" type="search" placeholder="Search" aria-label="Search" />
            <asp:Button ID="btnsearch" runat="server" Text="Search" class="btn btn-success  my-2 my-sm-0 mx-2" type="submit" />
                    <asp:Button ID="btnlogin" runat="server" Text="Login" class="btn btn-primary my-2 my-sm-0 mx-2" type="submit" OnClick="btnlogin_Click" />
                      <asp:Button ID="btnregister" runat="server" Text="Register" class="btn btn-danger my-2 my-sm-0 mx-2" type="submit" OnClick="btnregister_Click" />
    

  </div>
</nav> 

    </form>
    <section class="header">
    <h1 id="pose font-weight-bold"> Welcome To Our Site tour trip</h1>
            </section>
        
        <div>
        </div>
</body>
</html>
