<?php
    require_once('../conn/conection.php'); 
?>

<?php
echo"<div class=\"image\">";
    echo "<a href=\"change.php\">";
        echo "<img src=\"back2.png\">";
    echo "</a>";
echo"</div>";
if(isset($_POST["submit"])){
    
    //$course=$_POST['courses'];
echo"<table border=\"1px\">";
    foreach($_POST['courses'] as $name){
        echo"<tr><td><h2>".$name."</h2></td>";
    $query="SELECT crs_name_2015 FROM 2010_courses where crs_name_2010=\"{$name}\"";
        $result=mysqli_query($conn,$query);
        //echo "test";
        if($result){
            //echo "test";
            
            while($new = mysqli_fetch_assoc($result)){
                    echo"<td>".$new['crs_name_2015']."<td></tr>";
                }
                    
        }
       
    }
    echo"</table>";   
}
echo '</div>';

echo "<br>";

if(isset($_POST["submit1"])){
    
    //$course=$_POST['courses'];
echo"<table border=\"1px\">";
    foreach($_POST['courses'] as $name){
        echo"<tr><td><h2>".$name."</h2></td>";
    $query="SELECT crs_name_2020 FROM 2015_courses where crs_name_2015=\"{$name}\"";
        $result=mysqli_query($conn,$query);
        //echo "test";
        if($result){
            //echo "test";
            
            while($new = mysqli_fetch_assoc($result)){
                    echo"<td>".$new['crs_name_2020']."<td></tr>";
                }
                    
        }
       
    }
    echo"</table>";   
}
echo '</div>';
?>

<html>
    <head>
        <style>
            body{
                background-color:#800015;
            }
            .div1{
               
            }
            table{
                border:1px white;
                width:900px;
                margin-left:210px;
                color:white;
                margin-top:100px;
            }
            img{
                height:50px;
                width:50px:
            }
        </style>
    </head>
    <body>
    </body>    
</html>
