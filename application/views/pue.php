<?php $this->load->view('layout/header'); ?>

<div class="row my-2">
   <div class="col-6 text-start">
      <h2 class="fw-bold">Power Usage Effectiveness (PUE)</h2>
      <h2 class="fw-bold">TTC Sudiang Makassar</h2>
   </div>
   <div class="col-6 text-end">
      <h2 class="fw-bold">09 : 45 AM</h2>
      <h4>Senin, 29 Januari 2024</h4>
   </div>
</div>

<?php $this->load->view('content/contentPue') ?>
</div>
<!--Container Main end-->

<?php $this->load->view('layout/footer'); ?>

<!-- Custom JS -->
<script src="<?= base_url(); ?>asset/js/scriptPue.js"></script>
<script src="<?= base_url(); ?>asset/js/pueDailyChart.js"></script>

</body>

</html>