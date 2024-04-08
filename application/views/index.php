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
                     <td><h3 class="fw-bold">:</h3></td>
                     <td>
                        <h3 id="pue" class="fw-bold"></h3>
                     </td>
                  </tr>
                  <tr>
                     <td>
                        <h5>Load LVMDP</h5>
                     </td>
                     <td>
                        <h5>:</h5>
                     </td>
                     <td><h5><span id="lvmdp"></span> kW</h5></td>
                  </tr>
                  <tr>
                     <td>
                        <h5>Load Rectifier</h5>
                     </td>
                     <td><h5>:</h5></td>
                     <td>
                        <h5><span id="recti"></span> kW</h5>
                     </td>
                  </tr>
                  <tr>
                     <td>
                        <h5>Load UPS</h5>
                     </td>
                     <td><h5>:</h5></td>
                     <td>
                        <h5><span id="ups"></span> kW</h5>
                     </td>
                  </tr>
               </tbody>
            </table>
         </div>
         <div class="box-66 border">
            <canvas id="pueChart"></canvas>
         </div>
      </div>
      <div class="flexBox">
         <div class="box-33 border" style="height: 25vh;">
            <canvas id="lvmdpChart"></canvas>
         </div>
         <div class="box-33 border" style="height: 25vh;">
            <canvas id="rectiChart"></canvas>
         </div>
         <div class="box-33 border" style="height: 25vh;">
            <canvas id="upsChart"></canvas>
         </div>
      </div>
      <div class="flexBox">
         <div class="box-33 border" style="height: 25vh;">
            <canvas id="dailyFuelChart"></canvas>
         </div>
         <div class="box-33 border" style="height: 25vh;">
            <canvas id="monthlyFuelChart"></canvas>
         </div>
         <div class="box-33 border" style="height: 25vh;">
            <canvas id="dcTempChart"></canvas>
         </div>
      </div>
   </div>
</div>
</div>

</div>
<!--Container Main end-->

<?php $this->load->view('layout/footer'); ?>

<!-- Custom JS -->
<script src="<?= base_url(); ?>asset/js/script.js"></script>

</body>

</html>