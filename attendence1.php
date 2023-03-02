<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
    <!-- <link rel="stylesheet" type="text/css" href="display.css"> -->
	<title>ATTENDENCE| EDUCARE</title>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">


    <link rel="stylesheet" href="css/all.min.css"> 
    <script src="https://kit.fontawesome.com/654a5792a1.js" crossorigin="anonymous"></script>
</head>
	<style>


body{
    margin: 0;
    padding: 0;
    font-family: montserrat;
    background:rgb(104, 228, 247);
    height: 150vh;
    /* overflow: hidden; */
    background-image: url("https://images.pexels.com/photos/2847648/pexels-photo-2847648.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500");
    background-repeat: no-repeat;
    background-position:center;
    background-size: cover;
    /* background-size: #; */
   }



* {
  box-sizing: border-box;
  align-content: center;
}



h1{
  margin-left: 45%;
  padding-top: 35px;
  font-family: Cambria, Cochin, Georgia, Times, 'Times New Roman', serif;
}
.nav-area {
  float: right;
  list-style: none;
  margin-top: 30px;
  margin-right: 40px;
}
.nav-area li {
  display: inline-block;
  padding: 10px;
  background-color: #ba68c8;
  border-radius: 10px;
  margin-left: 20px;
}

.nav-area li a {
  color: black;
  text-decoration: none;
  padding: 5px 20px;
  font-family: poppins;
  font-size: 26px;
  text-transform: uppercase;
  background-color:transparent;
  padding-right:20px;
}
.nav-area li a:hover {
  background: #fff;
  color: black;
  border-radius:40px;
}

       table{
 /* position: absolute; */
 position: relative;
 z-index: 2;
 left: 50%;
 top: 50%;
 transform: translate(-50%,-50%);
 width: 60%; 
 border-collapse: collapse;
 border-spacing: 0;
 box-shadow: 0 2px 15px rgba(64,64,64,.7);
 border-radius: 12px 12px 0 0;
 overflow: hidden;
 margin-top:-15%;

}
td , th{
 padding: 15px 20px;
 text-align: center;
 

}
th{
 background-color: #ba68c8;
 color: #fafafa;
 font-family: 'Open Sans',Sans-serif;
 font-weight: 200;
 text-transform: uppercase;

}
tr{
 width: 100%;
 background-color: #fafafa;
 font-family: 'Montserrat', sans-serif;
}
tr:nth-child(even){
 background-color: #eeeeee;
}
form input{
    margin-top: -15%;
    margin-left: 45%;
    width: 10%;
    height: 30px;
    background-color:darkseagreen;
    font-size: 13px;
    font-weight: 900;
}
button{
    width: 70px;
    height: 30px;
    margin-bottom: -10px;
}
</style>
</head>
<body>

      <h1> <i class=""></i>ATTENDENCE</h1> 
      <form action="attendence1.php">
        <!-- <select>
            <option selected>SELECT MONTH</option>
            <option>JAN</option>
            <option>FEB</option>
            <option>MARCH</option>
            <option>APRIL</option>
            <option>MAY</option>
            <option>JUNE</option>
            <option>JULY</option>
            <option>AUG</option>
            <option>SEPT</option>
            <option>OCT</option>
            <option>NOV</option>
            <option>DEC</option>  
        </select> -->
        <input type="month" />
        <button type="submit">CHECK</button>
      </form>
   


         <table>
             <tr>
                 <th>Student Name</th>
                 <th>Register Number</th>
                  <!-- <th>PhoneNumber</th> -->
                 <!-- <th>SEMISTER</th> -->
                 <!-- <th>COMBINATITION</th> -->
                 <th>TOTAL DAYS</th>
                 <th>ATTENDED DAYS</th>
             </tr>
            <?php
            $conn = mysqli_connect("localhost", "root", "","cms");
            if($conn-> connect_error){
               die("connection failed:" .$conn-> connect_error);
            }
            
            $sql= "SELECT s_name,s_reg,s_phno from student";
            $result = $conn-> query($sql);
            
            if($result-> num_rows >0){
              while($row = $result-> fetch_assoc()){
                $total=25;
                $random_number = rand(15, 24);
                echo "<tr><td>". $row["s_name"] . "</td><td>" . $row["s_reg"] . "</td><td>$total</td><td>$random_number</td>   <tr>";
              }

              echo "</table>";

            }
            else{
               echo "0 result";
            }
            $conn->close();
            ?>
         </table>
</body>
</html>