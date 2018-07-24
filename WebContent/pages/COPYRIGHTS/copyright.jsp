<head>
    <style>
        #myFooter {
    background-color: #3c3d41;
    color: white;
    font-family: "Montserrat", sans-serif;

}

#myFooter .footer-copyright {
    background-color: #333333;
    padding-top: 3px;
    padding-bottom: 3px;
    text-align: center;
}

#myFooter .footer-copyright p {
    margin: 10px;
    color: #ccc;
}


#myFooter a {
    color: #d2d1d1;
    text-decoration: none;
}

#myFooter a:hover,
#myFooter a:focus {
    text-decoration: none;
    color: white;
}

@media screen and (max-width: 767px) {
    #myFooter {
        text-align: center;
    }
}


/* CSS used for positioning the footers at the bottom of the page. */
/* You can remove this. */


#Footer-at-base{
                position: absolute;
                z-index: 1;
                width: 100%;
                padding-top: 830px;
}


#myFooter{
   flex: 0 0 auto;
   -webkit-flex: 0 0 auto;
}
    </style>
</head>
<div id="Footer-at-base">
    <footer id="myFooter">
        <div class="footer-copyright">
            <p>&copy 2018 Copyright | Developed By: <a href="#">Paras Varshney</a> & <a href="#"> M. Revanth</a> | All Rights Reserved.  </p>
        </div>
    </footer>
</div>    
