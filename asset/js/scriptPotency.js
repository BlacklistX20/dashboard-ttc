new DataTable('#power', {
	paging: false,
	layout: {
		topStart: 'buttons'
	 },
	 buttons: {
		buttons: [
		  {
			 text: '<span class="icon text-white-50"><i class="bx bx-plus" style="color:#ffffff"></i></span><span class="text p-1 border-start">Tambah</span>',
			 className: 'btn-primary',
			 attr: {
				type: 'button',
				'data-bs-toggle': 'modal',
				'data-bs-target': '#addPower',
			 },
		  },
		],
		dom: {
		  button: {
			 className: 'btn',
		  },
		  buttonLiner: {
			 tag: null,
		  },
		},
	 },
});

function changeOption() {
	const rooms = {
	  "Basement": ["Pompa"],        // Basement rooms
	  "Semi Basement": ["House Keeping", "Genset"],   // Semi-basement rooms
	  1: ["Battery", "Recty", "Panel", "Control Room"],
	  2: ["Battery", "Recty", "Panel", "MSC", "CSPS"],
	  3: ["Battery", "Recty", "Panel", "INVAS", "Core", "MKios", "OCS"],
	  4: ["Battery", "Recty", "Panel", "BSS/TRAU", "Interkoneksi", "Transmisi"],
	  5: ["Utility A", "Utility B", "Panel", "Data Center", "Pengembangan", "Containment"]
	};

	// Event listener for floor selection
	$('#validationCustom02').change(function () {
	  const selectedFloor = $(this).val();
	  const roomSelect = $('#validationCustom03');

	  // Clear previous options
	  roomSelect.empty().append('<option value="">--Select Room--</option>');

	  // Populate room options based on selected floor
	  if (selectedFloor) {
		 $.each(rooms[selectedFloor], function (index, room) {
			roomSelect.append(new Option(room, room));
		 });
	  }
	});
 }

 $(document).ready(function () {
	$("a[id=tes]").addClass("active");
	$("#date").text(namaHari + ", " + tgl);
	changeOption();
}, startTime());