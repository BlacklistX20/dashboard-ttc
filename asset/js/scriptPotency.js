new DataTable('#power', {
	paging: false,
	layout: {
		topStart: 'buttons'
	 },
	 buttons: {
		buttons: [
		  {
			 text: '<span class="icon text-white-50 px-1"><i class="bx bx-chevron-left" style="color:#ffffff"></i></span><span>Kembali</span>',
			 className: 'btn-success px-1',
			 attr: {
				type: 'button',
			 },
			 action: function (e, dt, node, config) {
				if (document.referrer) {
				  // Go back to the previous page if available
				  window.history.back();
				} else {
				  // If no referrer, redirect to a default page
				  window.location.href = '<?= base_url() ?>Pages/potency';
				}
			 }
		  },
		  {
			text: '<span class="icon text-white-50 px-1"><i class="bx bx-plus" style="color:#ffffff"></i></span><span>Tambah</span>',
			className: 'btn-primary px-1',
			attr: {
			  type: 'button',
			  'data-bs-toggle': 'modal',
			  'data-bs-target': '#addPower',
			},
		 },
		],
		dom: {
		  button: {
			 className: 'btn mx-1',
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
	$('.change-floor').change(function () {
	  const selectedFloor = $(this).val();
	  const roomSelect = $('.change-room');

	  // Clear previous options
	  roomSelect.removeAttr("disabled");
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
	$("a[id=potency]").addClass("active");
	$("#date").text(namaHari + ", " + tgl);
	changeOption();
}, startTime());