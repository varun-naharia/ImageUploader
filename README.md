# ImageUploader
Simple Image Uploader To PHP Server
This is an Simple example for image upload from ios app gallary to php server

App is build in Xcode 6.1 and tested in iphone 4s and ios8 
If you found any problem in the code ask me I will resolve that ASAP.
you can contact me to from my website www.techwizard.in
PHP Code:-
file name should be savetofile.php
<?php


//if (isset($_FILES['userfile'])) {
$username=$_POST['full_name'];
$mobile=$_POST['mobile'];
    // Example:
$myfile = fopen("log.txt", "w") or die("Unable to open file!");
$txt = fread($myfile,filesize("log.txt"));
$txt = $txt. "\n------------------"."The time is " . date("h:i:sa")."------------------------- \n".$_FILES['userfile']['name']."\n".$username."\n".$mobile;
fwrite($myfile, $txt);



    move_uploaded_file($_FILES['userfile']['tmp_name'], "uploads/" . $_FILES['userfile']['name']);
    echo 'successful'.$username." ".$mobile;
//}
fclose($myfile);
?>
