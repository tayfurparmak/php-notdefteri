<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "db2";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);
// Check connection
if ($conn->connect_error) {
  die("Connection failed: " . $conn->connect_error);
}

function Add($baslik, $icerik)
{
  global $conn;
  $sql = "INSERT INTO notdefteri (baslik, icerik) VALUES ('$baslik', '$icerik')";
  $conn->query($sql);
}

function Delete($id)
{
  global $conn;
  $sql = "DELETE FROM notdefteri WHERE id = '$id'";
  $conn->query($sql);
}

function Update($id, $baslik, $icerik)
{
  global $conn;
  $sql = "UPDATE notdefteri SET baslik = '$baslik' , icerik = '$icerik' WHERE id = '$id'";
  $conn->query($sql);
}

function GetAll()
{
  global $conn;
  $sql = "SELECT id, baslik, icerik FROM notdefteri";
  $result = $conn->query($sql);
  return $result;
}

function Get($id)
{
  global $conn;
  $sql = "SELECT id, baslik, icerik FROM notdefteri WHERE id = '$id'";
  $result = $conn->query($sql);
  if ($result->num_rows > 0) {
    while ($row = $result->fetch_assoc()) {
      return $row;
    }
  }
}
