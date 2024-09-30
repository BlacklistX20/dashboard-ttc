<?php $this->load->view('layout/header'); ?>

<!-- <div class="row my-2">
   <div class="col-6 text-start">
      <h2 class="fw-bold">FM 200</h2>
      <h2 class="fw-bold">TTC Sudiang Makassar</h2>
   </div>
   <div class="col-6 text-end">
      <h2 id="time" class="fw-bold"></h2>
      <h4 id="date"></h4>
   </div>
</div> -->

<?php $this->load->view('content/fm200') ?>
</div>
<!--Container Main end-->

<?php $this->load->view('layout/footer'); ?>

<!-- Custom JS -->
<script src="<?= base_url(); ?>asset/js/scriptPue.js"></script>
<script src="<?= base_url(); ?>asset/js/pueDailyChart.js"></script>

</body>

</html>