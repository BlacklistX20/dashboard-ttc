<?php $this->load->view('layout/header'); ?>

<div class="container-fluid mx-1 py-1">
   <div class="text-center">
      <h1 class="fw-bold">Dashboard Monitoring</h1>
      <h2>TTC Sudiang Makassar</h2>
   </div>
   <div>
      <div class="flexBox">
         <div class="box-33 border">
            <table class="table table-borderless">
               <colgroup>
                  <col style="width: 45%;">
                  <col style="width: 10%;">
                  <col style="width: 45%;">
               </colgroup>
               <tbody>
                  <tr>
                     <td>
                        <h3 class="fw-bold">PUE</h3>
                     </td>
                     <td>:</td>
                     <td id="pue"></td>
                  </tr>
                  <tr>
                     <td>
                        <h5>Load Recti</h5>
                     </td>
                     <td>:</td>
                     <td id="recti"></td>
                  </tr>
                  <tr>
                     <td>
                        <h5>Load UPS</h5>
                     </td>
                     <td>:</td>
                     <td id="ups"></td>
                  </tr>
                  <tr>
                     <td>
                        <h5>Load LVMDP</h5>
                     </td>
                     <td>:</td>
                     <td id="lvmdp"></td>
                  </tr>
               </tbody>
            </table>
         </div>
         <div class="box-66 border">
            <canvas id="pueChart"></canvas>
         </div>
      </div>
      <div class="flexBox">
         <div class="box-33 border">
            <canvas id="lvmdpChart"></canvas>
         </div>
         <div class="box-33 border">
            <canvas id="dcTempChart"></canvas>
         </div>
         <div class="box-33 border">
            <canvas id="fuelChart"></canvas>
         </div>
      </div>
   </div>
</div>
</div>

</div>
<!--Container Main end-->

<?php $this->load->view('layout/footer'); ?>

<!-- Custom Chart Js -->
<script src="<?= base_url(); ?>asset/js/pue-chart.js"></script>
<script src="<?= base_url(); ?>asset/js/lvmdp-chart.js"></script>
<script src="<?= base_url(); ?>asset/js/dc-temp-chart.js"></script>
<script src="<?= base_url(); ?>asset/js/fuel-chart.js"></script>

<!-- Custom JS -->
<script src="<?= base_url(); ?>asset/js/script.js"></script>

</body>

</html>