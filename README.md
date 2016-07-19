# hypermedia_tim


 **Hypermedia Applications Project**
 
 *Isabella Agosti, Francesco Buonocore, Carolina Cattivelli*
 
 *Delivery date: 20/07/2016*
 
 **http://hypermedia.francescobuonocore.it/**
 
 Frameworks used: 
 * Twitter Bootstrap 
 * jQuery
 * Icons from Font Awesome (http://fontawesome.io).
 
 
  
 Mockup and website details: 
* The active links are underlined both in the mockup and in the website. 

* If you click on "CHI SIAMO" or "IL GRUPPO" in the mockup, the dropdown menu will 
 always open in the Home (which would be a mistake). We decided to leave it like this 
 because otherwise we would have had to create too many pages. Still, in the website the 
 dropdown menu will correctly open in the same page that you are in. 
 
* The site is built on a single html page: the navigation between pages is controlled only by 
 JavaScript and AJAX requests. A spinner appears while loading the new content.

* The website is hosted in a VPS running Ubuntu Server 16.04 with Apache2, PHP7 and MariaDB 10.0.25

* Queries to the DB are made using PHP's PDO extension with prepared statements.
   