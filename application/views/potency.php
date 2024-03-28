<?php $this->load->view('layout/header'); ?>

<div class="text-center">
   <h2 class="fw-bold">Data Potensi</h2>
   <h4>TTC Sudiang Makassar</h2>
</div>

<?php $this->load->view('content/contentPotency'); ?>

</div>
<!--Container Main end-->

<?php $this->load->view('layout/footer'); ?>

<!-- Custom JS -->
<script src="<?= base_url(); ?>asset/js/scriptPotency.js"></script>
<script>
   $(".btnEdit").click(function() {
      var id = $(this).data("id");
      $.ajax({
         url: '<?= base_url('changedata/editpotency/'); ?>' + id,
         success: function(respond) {
            var data = JSON.parse(respond)
            $('#editNama').val(data.nama)
            $('#editMerk').val(data.merk)
            $('#editKapasitas').val(data.kapasitas)
            $('#editJumlah').val(data.jumlah)
            $('#formEdit').attr('action', '<?= base_url('changedata/editpotency/'); ?>' + id);
            $('#edit').modal('show');
         },
      });
   });
</script>

</body>

</html>