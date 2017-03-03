<!DOCTYPE html>
<html>
<title>${title}</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/lib/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Montserrat">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
body, h1,h2,h3,h4,h5,h6 {font-family: "Montserrat", sans-serif}
.w3-row-padding img {margin-bottom: 12px}
/* Set the width of the sidenav to 120px */
.w3-sidenav {width: 120px;background: #222;}
/* Add a left margin to the "page content" that matches the width of the sidenav (120px) */
#main {margin-left: 120px}
/* Remove margins from "page content" on small screens */
@media only screen and (max-width: 600px) {#main {margin-left: 0}}
</style>
<body class="w3-black">

<!-- Icon Bar (Sidenav - hidden on small screens) -->
<nav class="w3-sidenav w3-center w3-small w3-hide-small">
  <!-- Avatar image in top left corner -->
  <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ02ExQy4EO5K7Q9TPmE0xLrg2xQoDasB6RDih_8zYqbZ6RIrSZ" style="width:100%">
  <a class="w3-padding-large w3-black" href="#home">
    <i class="fa fa-home w3-xxlarge"></i>
    <p>HOME</p>
  </a>
  <a class="w3-padding-large w3-hover-black" href="#about">
    <i class="fa fa-user w3-xxlarge"></i>
    <p>ABOUT</p>
  </a>
  <a class="w3-padding-large w3-hover-black" href="#photos">
  <a href="/add">
    <i class="fa fa-eye w3-xxlarge"></i>
    <p>DISCOVER</p>
  </a>
  <a class="w3-padding-large w3-hover-black" href="#contact">
    <i class="fa fa-envelope w3-xxlarge"></i>
    <p>CONTACT</p>
  </a>
</nav>

<!-- Navbar on small screens (Hidden on medium and large screens) -->
<div class="w3-top w3-hide-large w3-hide-medium" id="myNavbar">
  <div class="w3-bar w3-black w3-opacity w3-hover-opacity-off w3-center w3-small">
    <a class="w3-bar-item w3-button" style="width:25% !important" href="#">HOME</a>
    <a class="w3-bar-item w3-button" style="width:25% !important" href="#about">ABOUT</a>
    <a class="w3-bar-item w3-button" style="width:25% !important" href="#photos">DISCOVER</a>
    <a class="w3-bar-item w3-button" style="width:25% !important" href="#contact">CONTACT</a>
  </div>
</div>

<!-- Page Content -->
<div class="w3-padding-large" id="main">
  <!-- Header/Home -->
  <header class="w3-container w3-padding-32 w3-center w3-black" id="home">
    <h1 class="w3-jumbo"><span class="w3-hide-small">KD</span> WORLD.</h1>
    <p>
    <div class="boxed">
    SHARE AND CREATE MY PLAYLIST
    </div>
    </p>
    <img src="http://hd-wall-papers.com/images/wallpapers/guitar-music-wallpaper/guitar-music-wallpaper-6.jpg" class="w3-image" width="992" height="1108">
  </header>

  <!-- About Section -->
  <div class="w3-content w3-justify w3-text-grey w3-padding-64" id="about">
    <h2 class="w3-text-light-grey">Share My Playlist | KD WORLD</h2>
    <hr style="width:200px" class="w3-opacity">
    <p>Great friends are those who share great music.
    </p>
    
      


  <h3 class="w3-padding-24 w3-text-light-grey">Our Team</h3>  
    <img src="https://avatars0.githubusercontent.com/u/24243069?v=3&s=460" alt="Avatar" class="w3-left w3-circle w3-margin-right" style="width:80px">
    <p><span class="w3-large w3-margin-right">Whillien Caturan.</span> ECE 2</p>
    <p>LEADER</p><br>
    
    <img src="https://avatars1.githubusercontent.com/u/24243220?v=3&s=460" alt="Avatar" class="w3-left w3-circle w3-margin-right" style="width:80px">
    <p><span class="w3-large w3-margin-right">Devirose Obligado.</span> ECE 2</p>
    <p>ASSISTANT LEADER </p>

    <img src="https://avatars3.githubusercontent.com/u/24243400?v=3&s=460" alt="Avatar" class="w3-left w3-circle w3-margin-right" style="width:80px">
    <p><span class="w3-large w3-margin-right">Vince Reycitez.</span> ECE 2</p>
    <p>MEMBER</p>
    <p></p>

    
    <img src="https://scontent.fmnl3-1.fna.fbcdn.net/v/t31.0-8/q88/s960x960/15731906_1769966243327804_2291485971399773954_o.jpg?oh=c108ae66392b103d816fb4b7083666a2&oe=59330F8A" alt="Avatar" class="w3-left w3-circle w3-margin-right" style="width:80px">
    <p><span class="w3-large w3-margin-right">Kimberly Migrino.</span> ECE 2 </p>
    <p>MEMBER</p>
  
 
  <!-- Contact Section -->
  <div class="w3-padding-64 w3-content w3-text-grey" id="contact">
    <h2 class="w3-text-light-grey">Contact Us</h2>
    <hr style="width:200px" class="w3-opacity">

    <div class="w3-section">
      <p><i class="fa fa-map-marker fa-fw w3-text-white w3-xxlarge w3-margin-right"></i> CDO</p>
      <p><i class="fa fa-phone fa-fw w3-text-white w3-xxlarge w3-margin-right"></i> Phone: +12343198087</p>
      <p><i class="fa fa-envelope fa-fw w3-text-white w3-xxlarge w3-margin-right"> </i> Email: kdworld@earth</p>
    </div><br>
    <p>Lets get in touch. Send us a message:</p>

    <form action="/action_page.php" target="_blank">
      <p><input class="w3-input w3-padding-16" type="text" placeholder="Name" required name="Name"></p>
      <p><input class="w3-input w3-padding-16" type="text" placeholder="Email" required name="Email"></p>
      <p><input class="w3-input w3-padding-16" type="text" placeholder="Subject" required name="Subject"></p>
      <p><input class="w3-input w3-padding-16" type="text" placeholder="Message" required name="Message"></p>
      <p>
        <button class="w3-btn w3-light-grey w3-padding-large" type="submit">
          <i class="fa fa-paper-plane"></i> SEND MESSAGE
        </button>
      </p>
    </form>
  <!-- End Contact Section -->
  </div>
  
    <!-- Footer -->
  <footer class="w3-content w3-padding-64 w3-text-grey w3-xlarge">
    <i class="fa fa-facebook-official w3-hover-text-indigo"></i>
    <i class="fa fa-instagram w3-hover-text-purple"></i>
    <i class="fa fa-snapchat w3-hover-text-yellow"></i>
    <i class="fa fa-pinterest-p w3-hover-text-red"></i>
    <i class="fa fa-twitter w3-hover-text-light-blue"></i>
    <i class="fa fa-linkedin w3-hover-text-indigo"></i>
    <p class="w3-medium">Powered by <a href="https://github.com/COE11-USTP-CEA/KDWorld" target="_blank" class="w3-hover-text-green">kiddie</a></p>
  <!-- End footer -->
  </footer>

<!-- END PAGE CONTENT -->
</div>

</body>
</html>
