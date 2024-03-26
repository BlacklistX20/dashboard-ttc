<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>Dashboard Monitoring TTC</title>

  <!-- Custom CSS -->
  <link rel="stylesheet" href="<?= base_url() ?>asset/style.css" />

  <!-- Bootstrap 5 -->
  <link rel="stylesheet" href="<?= base_url() ?>asset/src/bootstrap-5.3.3-dist/css/bootstrap.min.css">

  <!-- Box Icon -->
  <link href='<?= base_url() ?>asset/src/boxicons-2.1.4/css/boxicons.min.css' rel='stylesheet'>

</head>

<body id="body-pd">
  <div class="l-navbar" id="nav-bar">
    <nav class="nav">
      <div>
        <div class="header_toggle nav_logo"> <i class='bx bx-menu' id="header-toggle"></i> </div>

        <div class="nav_list"> 
          <a href="<?= base_url() ?>Pages/index" id="index" class="nav_link"> <i class='bx bx-home nav_icon'></i> <span class="nav_name">Dashboard</span> </a>
          <a href="<?= base_url() ?>Pages/temp" id="temp" class="nav_link"> <i class='bx bxs-thermometer nav_icon'></i> <span class="nav_name">Suhu Ruangan</span> </a>
          <a href="<?= base_url() ?>Pages/electric" id="electric" class="nav_link"> <i class='bx bx-bolt-circle nav_icon'></i> <span class="nav_name">Electricity</span> </a>
          <a href="<?= base_url() ?>Pages/fuel" id="fuel" class="nav_link"> <i class='bx bxs-gas-pump nav_icon'></i> <span class="nav_name">Level BBM</span> </a>
          <a href="<?= base_url() ?>Pages/potency" id="folder" class="nav_link"> <i class='bx bx-folder nav_icon'></i> <span class="nav_name">Data Potensi</span> </a> 
          <a href="<?= base_url() ?>Pages/space" id="space" class="nav_link"> <i class='bx bx-grid-alt nav_icon'></i> <span class="nav_name">Space Management</span> </a>
          <a href="<?= base_url() ?>Pages/pue" id="pue" class="nav_link"> <i class='bx bx-line-chart'></i> <span class="nav_name">PUE Harian</span> </a>
        </div>
      </div>
      <!-- <a href="#" class="nav_link"> <i class='bx bx-log-out nav_icon'></i> <span class="nav_name">SignOut</span> </a> -->
    </nav>
  </div>
  <!--Container Main start-->
  <div class="height-100 bg-light">
