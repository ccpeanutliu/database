<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">

    <title>DataBaseSfind</title>
  </head>
  <body id = "top" background="giraffe.jpg">
      	
  <div class="img-thumbnail">
      <div class="text-center">
        <h1>
          DBTutor<h5><kbd>team seven</kbd></h5>
        </h1>
      </div>
    </div>
<?php

session_start();
include("connect.php");
$uid = $_SESSION['username'];
$sql = "SELECT SID FROM student_table WHERE UID='$uid'";
$result = $mysqli->query($sql);
$row = $result->fetch_row();

$_SESSION['studentname'] = $row[0];


$sql = "SELECT * FROM T_case_table";
$result = $mysqli->query($sql);
if ($result = $mysqli -> query($sql)) {
  echo "<div class='text-white'>";
  echo "<div class='container'>";
  echo "<h5>&nbsp<h5>";
  echo "<h5><kbd>Case list</kbd></h5>";
  echo "<table class='table table-striped'>";
  echo "<thead>";
  echo "<tr class='table-light'>";
  echo "<th>Teacher ID</th>";
  echo "<th>region</th>";
  echo "<th>subject</th>";
  echo "<th>time</th>";
  echo "<th>Check</th>";
  echo "<th>Accept</th>";
  echo "</tr>";
  echo "</thead>";
  echo "<tbody>";
  $count = 0;
  while ($row = $result -> fetch_row()) {
    $count += 1;
    echo "<tr class='table-light'>";
    echo "<td>$row[1]</td>"; // TID, region, subject, time
    echo "<td>$row[2]</td>";
    echo "<td>$row[3]</td>";
    echo "<td>$row[4]</td>";
    echo "<td><form action='Scheck.php' method='post'><input style='color:white' type='submit' name='chk' value=$row[1]></form></td>";
    echo "<td><form action='Saccept.php' method='post'><input style='color:white' type='submit' name='acp' value=$row[0]></form></td>";
    echo "</tr>";
  }
  echo "</tbody>";
  echo "</table>";
  echo "</div>";
  echo "</div>";
  $result -> free_result();
}

?>





    


	<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
  </body>
</html>


