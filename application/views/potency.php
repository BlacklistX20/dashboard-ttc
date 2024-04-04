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
         url: '<?= base_url('getdata/potencyElById/'); ?>' + id,
         success: function(respond) {
            var data = JSON.parse(respond)
            $('#editNama').val(data.nama)
            $('#editMerk').val(data.merk)
            $('#editKapasitas').val(data.kapasitas)
            $('#editSatuan').val(data.satuan).change()
            $('#editJumlah').val(data.jumlah)
            $('#editModal').attr('action', '<?= base_url() ?>ChangeData/editPotencyEl/' + id);
            $('#edit').modal('show');
         },
      });
   });

   $('.btnDelete').click(function() {
      var id = $(this).data("id");
      $.ajax({
         url: '<?= base_url('getdata/potencyElById/'); ?>' + id,
         success: function(respond) {
            var data = JSON.parse(respond)

            $('#deleteName').text(data.nama)
            $('#deleteMerk').text(data.merk)
            $('#deleteButton').attr('href', '<?= base_url() ?>ChangeData/deletePotencyEl/' + id);
            $('#delete').modal('show');
         }
      })
   });
</script>

</body>

</html>