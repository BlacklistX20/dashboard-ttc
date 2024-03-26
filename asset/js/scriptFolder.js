$(document).ready(function(){
   $("a[id=folder]").addClass("active");
 });

 $('.btn-edit').click(function() {
  var id = $(this).data('id');
  $.ajax({
      url: 'config/getDataPotensi.php',
      type: 'post',
      data: {
        'id': id
      },
      success: function(respond) {
          
          console.log(respond.nama)
      //     $('#komoditasEdit').val(data.Komoditas)
      //     $('#hujanMinEdit').val(data.HujanMin)
      //     $('#hujanMaxEdit').val(data.HujanMax)
      //     $('#kelembapanMinEdit').val(data.KelembapanMin)
      //     $('#kelembapanMaxEdit').val(data.KelembapanMax)
      //     $('#suhuMinEdit').val(data.SuhuMin)
      //     $('#suhuMaxEdit').val(data.SuhuMax)
      //     $('#tanahMinEdit').val(data.TanahMin)
      //     $('#tanahMaxEdit').val(data.TanahMax)
      //     $('#formEdit').attr('action', '');
      //     $('#Edit').modal('show');
      }
  })

});