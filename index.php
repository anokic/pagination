<!--
    DYNAMIC LIST PHP SQL PAGINATION EMPLOYEES
-->

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
  <title>Document</title>
</head>
<body style="padding:40px">
  <?php
    include('pagination.php');
  ?>

  <table class="table">
    <thead>
      <tr>
        <th scope="col">Id</th>
        <th scope="col">Ime</th>
        <th scope="col">Prezime</th>
      </tr>
    </thead>
    <tbody>

        <?php foreach($korisnici as $red){
                echo "<tr>
                        <td>" . $red->id . "</td>
                        <td>". $red->ime ."</td>
                        <td>". $red->prezime . " </td>
                      </tr>";
              } ?>

    </tbody>
  </table>


  <nav aria-label="Page navigation example">
  <ul class="pagination" style="justify-content:center">

    <!-- Remove Previous page if one page one -->
    <?php if($page != 1){  ?>
      <li class="page-item"><a class="page-link" href="index.php?page=<?php echo $page - 1 ?>">Previous</a></li>
    <?php } ?>

    <?php for($i=1;$i<=$howMuchPages;$i++){ ?>
          <li class="page-item"><a class="page-link" href="index.php?page=<?php echo $i ?>"><?php echo $i ?></a></li>
    <?php }

      // Remove Next button if at last page //
      if($page != $howMuchPages){
        echo '<li class="page-item"><a class="page-link" href="index.php?page=' . ($page+1) . '">Next</a></li>';
      } ?> 


  </ul>
</nav>
</body>
</html>
