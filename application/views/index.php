<?php $this->load->view('layout/header'); ?>

<div class="container-fluid mx-1 py-1">
   <div class="text-center">
      <h1 class="fw-bold">Dashboard Monitoring</h1>
      <h2>TTC Sudiang Makassar</h2>
   </div>
   <div>
      <div class="row my-5">
         <div class="col-lg-3">
            <div class="card">
               <div class="card-header text-center">
                  <h3 class="card-title fw-bold">PUE <span id="weekDay"></span></h3>
               </div>
               <div class="card-body text-center">
                  <h2 class="display-1 fw-bold"><span id="pueWeekly">0</span></h2>
               </div>
            </div>
         </div>
         <div class="col-lg-3">
            <div class="card">
               <div class="card-header text-center">
                  <h3 class="card-title fw-bold">PUE Minimum</h3>
               </div>
               <div class="card-body text-center">
                  <h2 class="display-1 fw-bold"><span id="pueMin">0</span></h2>
               </div>
            </div>
         </div>
         <div class="col-lg-3">
            <div class="card">
               <div class="card-header text-center">
                  <h3 class="card-title fw-bold">PUE Average</h3>
               </div>
               <div class="card-body text-center">
                  <h2 class="display-1 fw-bold"><span id="pueAvg">0</span></h2>
               </div>
            </div>
         </div>
         <div class="col-lg-3">
            <div class="card">
               <div class="card-header text-center">
                  <h3 class="card-title fw-bold">PUE Maximum</h3>
               </div>
               <div class="card-body text-center">
                  <h2 class="display-1 fw-bold"><span id="pueMax">0</span></h2>
               </div>
            </div>
         </div>
      </div>
      <div class="row mb-4">
         <div class="col">
            <canvas id="pueMonth" style="height: 20vh;"></canvas>
         </div>
      </div>
      <div class="row mb-4">
         <div class="col-lg-4">
            <canvas id="pueMorning" style="height: 20vh;"></canvas>
         </div>
         <div class="col-lg-4">
            <canvas id="pueNoon" style="height: 20vh;"></canvas>
         </div>
         <div class="col-lg-4">
            <canvas id="pueNight" style="height: 20vh;"></canvas>
         </div>
      </div>
      <div class="row mb-4">
         <div class="col-lg-4">
            <canvas id="dailyFuelChart" style="height: 20vh;"></canvas>
         </div>
         <div class="col-lg-4">
            <canvas id="monthlyFuelChart" style="height: 20vh;"></canvas>
         </div>
         <div class="col-lg-4">
            <canvas id="dcTempChart" style="height: 20vh;"></canvas>
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