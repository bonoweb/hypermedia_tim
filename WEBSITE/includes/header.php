<?php
    header("Access-Control-Allow-Origin: *");
?>
<nav class="navbar navbar-inverse">
    <div class="container-fluid">
        <ul class="nav navbar-nav">
            <li class="dropdown">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">CHI SIAMO <span class="caret"></span></a>
                <ul class="dropdown-menu">
                    <li><a href="#">Innovazione</a></li>
                    <li><a href="#">Testimonials</a></li>
                    <li><a href="#">Progetti</a></li>
                </ul>
            </li>
            <li class="dropdown">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">IL GRUPPO <span class="caret"></span></a>
                <ul class="dropdown-menu">
                    <li><a href="#">Descrizione del gruppo</a></li>
                    <li><a href="#">Novità</a></li>
                    <li><a href="#">ecccc</a></li>
                    <li role="separator" class="divider"></li>
                    <li><a href="#">Separated link</a></li>
                </ul>
            </li>
        </ul>
    </div><!-- /.container-fluid -->
</nav>

<div class="container">
    <a href="index.php">
        <div class="text-center img_responsive logo_header ">
            <img src="img/TIM_logo_2016.png" alt="TIM_logo">
        </div>
    </a>
</div>

<nav class="navbar navbar-inverse">
    <div class="navbar-header">
        <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
        </button>
    </div>
    <div id="navbar" class="navbar-collapse collapse">
        <ul class="nav nav-justified navbar-nav mainbar">
            <li><a href="prodotti.php">PRODOTTI</a></li>
            <li><a href="#">SERVIZI SMART LIFE</a></li>
            <li><a href="#">PROMOZIONI</a></li>
            <li><a href="#">SERVIZI DI ASSISTENZA</a></li>
            <li><a href="#">HIGHLIGHTS</a></li>
        </ul>
    </div>
</nav>