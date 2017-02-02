<?php
$code = $_GET['code'];

require("config/config.php");

$query = mysql_query("SELECT * FROM items WHERE code='$code'");
$numrows = mysql_num_rows($query);

if ($numrows == 1) {
    $row = mysql_fetch_assoc($query);
    $url = $row['url'];

    header("Location: $url");
}
else
    echo "No shortened url was found.";

mysql_close();

?>