<?php
    require_once('../conn/conection.php'); 
?>
<div>
<?php


$courses = array();

//div1 start   
    echo"<h3 class=\"h1\">"."2010 To 2015 SUBJECT"."</h3>";
    echo '<div class="div1">';
    //get crs_name in 2010_courses table
    $sql = "SELECT crs_name_2010 FROM 2010_courses";
    $result = $conn -> query($sql);
    

    if($result->num_rows>0){
        echo "<form action=\"selected_courses.php\" method=\"post\" >";
            echo "<table border=\"1px\"><tr><th>Subject name</th><th>Select</th></tr>";
                while($row = $result->fetch_assoc()){
                    echo"<tr><td>".$row['crs_name_2010']."</td><td><input type=\"checkbox\" id=\"courses\" name=\"courses[]\" value=\"".$row['crs_name_2010']."\"> </td></tr>";
                    
                    }
                }
            
            echo "</table>";
            echo "<div class=\"sub1\">";
                echo "<input type=\"submit\" name=\"submit\" value=\"submit\"> ";
            echo "</div>";
        echo "</form>";

    
    echo '</div>'; 

//div1 end


    echo"<br>";

//div2 start  
echo"<h3 class=\"h1\">"."2015 To 2020 SUBJECT"."</h3>";
echo '<div class="div2">';
//get crs_name in 2010_courses table
$sql = "SELECT crs_name_2015 FROM 2015_courses";
$result = $conn -> query($sql);


if($result->num_rows>0){
    echo "<form method=\"post\" action=\"selected_courses.php\">";
        echo "<table border=\"1px\"><tr><th>Subject name</th><th>Select</th></tr>";
            while($row = $result->fetch_assoc()){
                echo"<tr><td>".$row['crs_name_2015']."</td><td><input type=\"checkbox\" id=\"courses\" name=\"courses[]\" value=\"".$row['crs_name_2015']."\"> </td></tr>";
                
                }
            }
        
        echo "</table>";
        echo "<div class=\"sub1\">";
            echo "<input type=\"submit\" name=\"submit1\" value=\"submit1\"> ";
        echo "</div>";
    echo "</form>";


echo '</div>'; 
//div2 end    





?>
</div>
<html>
    <head>
        <style>
            table{
                border:1px solid black;
                width:900px;
                margin-left:15px;
                
            }
            .div1,.div2{
                margin-left:200px;
                margin-top:50px;
                margin-right:200px;
                background-color:white;
            }
            .sub1{
                margin-left:860px;
                margin-top:20px;
            }
            .sub2{
                margin-left:860px;
                margin-top:20px;
            }
            .h1{
	            text-align:center;
	            font-size:35px;
                color: black;
                margin-top: 15px;
                margin-left:25;
            }
            body{
                background-color:#800015;
            }
        </style>
    </head>
    <body>
    </body>    
</html>
