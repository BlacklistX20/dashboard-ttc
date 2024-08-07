<?php $this->load->view('layout/header'); ?>

<div class="container-fluid mx-1 py-1">
  <div class="row my-2">
    <div class="col-6 text-start">
      <h2 class="fw-bold">Electricity</h2>
      <!-- <h2 class="fw-bold">Ruangan</h2> -->
    </div>
    <div class="col-6 text-end">
      <h2 id="time" class="fw-bold"></h2>
      <h4 id="date"></h4>
    </div>
  </div>

  <?php $this->load->view('content/contentElectric'); ?>

</div>
</div>

</div>
<!--Container Main end-->

<?php $this->load->view('layout/footer'); ?>

<!-- Custom JS -->
<script type="module" src="<?= base_url(); ?>asset/js/scriptElec.js"></script>

<script>
  $('.btnNotWorking').click(function () {
    $('#notWorking').modal('show');
  });
</script>

</body>

</html>