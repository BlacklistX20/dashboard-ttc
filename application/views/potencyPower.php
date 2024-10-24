<?php $this->load->view('layout/header'); ?>

<div class="container-fluid mx-1 py-1">
   <div class="row my-2">
      <div class="col-6 text-start">
         <h2 class="fw-bold">Data Potensi</h2>
         <h2 class="fw-bold">Power System</h2>
      </div>
      <div class="col-6 text-end">
         <h2 id="time" class="fw-bold"></h2>
         <h4 id="date"></h4>
      </div>
   </div>

   <div class="mt-5">
      <table id="power" class="mt-3 table table-bordered table-responsive table-striped" style="width:100%">
         <thead>
            <tr class="table-danger text-center">
               <th>ID</th>
               <th>NE ID</th>
               <th>Lantai</th>
               <th>Ruangan</th>
               <th>Nama</th>
               <th>Vendor</th>
               <th>Brand</th>
               <th>Type</th>
               <th>Kondisi</th>
               <th>Status</th>
               <th>Installation</th>
               <th>Maintanance</th>
               <th>Last Update</th>
               <th>Aksi</th>
            </tr>
         </thead>
         <tbody>
            <?php foreach ($power as $key => $p) { ?>
               <tr>
                  <td><?= $p->id; ?></td>
                  <td><?= $p->ne_id; ?></td>
                  <td><?= $p->floor; ?></td>
                  <td><?= $p->room; ?></td>
                  <td><?= $p->name; ?></td>
                  <td><?= $p->vendor; ?></td>
                  <td><?= $p->brand; ?></td>
                  <td><?= $p->type; ?></td>
                  <td><?= $p->kondisi; ?></td>
                  <td><?= $p->status; ?></td>
                  <td><?= $p->install; ?></td>
                  <td><?= $p->maintanance; ?></td>
                  <td><?= $p->updated_at; ?></td>
                  <td>
                     <button type="button" class="btn btn-success btnDetailElec" data-bs-toggle="modal" data-bs-target="#detailPower" data data-bs-toggle="tooltip" data-bs-placement="top" title="Detail">
                        <i class='bx bxs-book-content'></i>
                     </button>
                     <button type="button" class="btn btn-primary btnEditElec" data-id="<?= $p->id; ?>" data data-bs-toggle="tooltip" data-bs-placement="top" title="Edit">
                        <i class='bx bxs-edit'></i>
                     </button>
                     <button type="button" class="btn btn-danger btnDeleteElec" data-id="<?= $p->id; ?>" data-bs-toggle="tooltip" data-bs-placement="top" title="Hapus">
                        <i class='bx bxs-trash'></i>
                     </button>
                  </td>
               </tr>
            <?php } ?>
         </tbody>
      </table>
   </div>

   <!-- Modal -->
   <!-- Detail -->
   <div class="modal fade" id="detailPower" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="detailLabel" aria-hidden="true">
      <div class="modal-dialog modal-xl modal-fullscreen-sm-down">
         <div class="modal-content">
            <div class="modal-header">
               <h5 class="modal-title fw-bold" id="detailLabel">Detail <span id="deviceName"></span></h5>
               <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <form action="#" method="post">
               <div class="modal-body row g-3">
                  <div class="mb-3 col-md-4">
                     <div class="input-group">
                        <div class="input-group-text">NE ID</div>
                        <input type="text" class="form-control" name="ne_id" disabled>
                     </div>
                  </div>
                  <div class="mb-3 col-md-4">
                     <div class="input-group">
                        <div class="input-group-text">NE ID</div>
                        <select class="form-select change-floor" name="floor" disabled>
                           <option selected disabled value="">-- Pilih Lantai --</option>
                           <option value="Basement">Basement</option>
                           <option value="Semi Basement">Semi-Basement</option>
                           <option value="1">1</option>
                           <option value="2">2</option>
                           <option value="3">3</option>
                           <option value="4">4</option>
                           <option value="5">5</option>
                        </select>
                     </div>
                  </div>
                  <div class="mb-3 col-md-4">
                     <div class="input-group">
                        <div class="input-group-text">NE ID</div>
                        <select class="form-select change-room" name="room" id="validationCustom03" disabled>
                           <option selected disabled value="">-- Pilih Lantai --</option>
                        </select>
                     </div>
                  </div>
                  <div class="mb-3 col-md-4">
                     <div class="input-group">
                        <div class="input-group-text">NE ID</div>
                        <select class="form-select" name="category" id="validationCustom04" disabled>
                           <option selected disabled value="">-- Pilih Kategori --</option>
                           <option value="Panel">Panel</option>
                           <option value="Rectifier">Rectifier</option>
                           <option value="UPS">UPS</option>
                           <option value="Genset">Genset</option>
                           <option value="Trafo">Trafo</option>
                           <option value="Cubicle">Cubicle</option>
                           <option value="PLN">PLN</option>
                        </select>
                     </div>
                  </div>
                  <div class="mb-3 col-md-4">
                     <div class="input-group">
                        <div class="input-group-text">Nama</div>
                        <input type="text" class="form-control" name="name" disabled>
                     </div>
                  </div>
                  <div class="mb-3 col-md-4">
                     <div class="input-group">
                        <div class="input-group-text">Vendor</div>
                        <input type="text" class="form-control" name="vendor" disabled>
                     </div>
                  </div>
                  <div class="mb-3 col-md-4">
                     <div class="input-group">
                        <div class="input-group-text">Brand</div>
                        <input type="text" class="form-control" name="brand" disabled>
                     </div>
                  </div>
                  <div class="mb-3 col-md-4">
                     <div class="input-group">
                        <div class="input-group-text">Type</div>
                        <input type="text" class="form-control" name="type" disabled>
                     </div>
                  </div>
               </div>
               <div class="modal-footer">
                  <button type="button" class="btn btn-danger" data-bs-dismiss="modal">Close</button>
                  <button type="button" id="edit" class="btn btn-primary">Edit</button>
               </div>
            </form>
         </div>
      </div>
   </div>
   <!-- Add -->
   <div class="modal fade" id="addPower" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="addLabel" aria-hidden="true">
      <div class="modal-dialog modal-lg">
         <div class="modal-content">
            <div class="modal-header">
               <h5 class="modal-title" id="addLabel">Tambah Data Potensi</h5>
               <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <form action="<?= base_url() ?>potency/addPower" method="post" class="needs-validation" novalidate>
               <div class="modal-body row g-3">
                  <div class="mb-3 col-md-4">
                     <label for="validationCustom01" class="form-label">NE ID</label>
                     <input type="text" class="form-control" id="validationCustom01" name="ne_id" required />
                     <div class="invalid-feedback">
                        Masukkan NE ID (Jika tidak ada isi dengan -)
                     </div>
                  </div>
                  <div class="mb-3 col-md-4">
                     <label for="validationCustom02" class="form-label">Lantai</label>
                     <select class="form-select change-floor" name="floor" id="validationCustom02" required>
                        <option selected disabled value="">-- Pilih Lantai --</option>
                        <option value="Basement">Basement</option>
                        <option value="Semi Basement">Semi-Basement</option>
                        <option value="1">1</option>
                        <option value="2">2</option>
                        <option value="3">3</option>
                        <option value="4">4</option>
                        <option value="5">5</option>
                     </select>
                     <div class="invalid-feedback">Pilih Lantai</div>
                  </div>
                  <div class="mb-3 col-md-4">
                     <label for="validationCustom03" class="form-label">Ruang</label>
                     <select class="form-select change-room" name="room" id="validationCustom03" required disabled>
                        <option selected disabled value="">-- Pilih Lantai --</option>
                     </select>
                     <div class="invalid-feedback">Pilih Ruangan</div>
                  </div>
                  <div class="mb-3 col-md-4">
                     <label for="validationCustom04" class="form-label">Kategori</label>
                     <select class="form-select" name="category" id="validationCustom04" required>
                        <option selected disabled value="">-- Pilih Kategori --</option>
                        <option value="Panel">Panel</option>
                        <option value="Rectifier">Rectifier</option>
                        <option value="UPS">UPS</option>
                        <option value="Genset">Genset</option>
                        <option value="Trafo">Trafo</option>
                        <option value="Cubicle">Cubicle</option>
                        <option value="PLN">PLN</option>
                     </select>
                     <div class="invalid-feedback">Pilih Kategori</div>
                  </div>
                  <div class="mb-3 col-md-4">
                     <label for="validationCustom05" class="form-label">Nama</label>
                     <input type="text" class="form-control" id="validationCustom05" name="name" required />
                     <div class="invalid-feedback">Masukkan Nama</div>
                  </div>
                  <div class="mb-3 col-md-4">
                     <label for="validationCustom06" class="form-label">Vendor</label>
                     <input type="text" class="form-control" id="validationCustom06" name="vendor" required />
                     <div class="invalid-feedback">Masukkan Vendor</div>
                  </div>
                  <div class="mb-3 col-md-4">
                     <label for="validationCustom07" class="form-label">Brand</label>
                     <input type="text" class="form-control" id="validationCustom07" name="brand" required />
                     <div class="invalid-feedback">Masukkan Brand (Jika tidak ada isi dengan -)</div>
                  </div>
                  <div class="mb-3 col-md-4">
                     <label for="validationCustom08" class="form-label">Type</label>
                     <input type="text" class="form-control" id="validationCustom08" name="type" required />
                     <div class="invalid-feedback">Masukkan Type (Jika tidak ada isi dengan -)</div>
                  </div>
                  <div class="mb-3 col-md-4">
                     <label for="validationCustom09" class="form-label">Role</label>
                     <input type="text" class="form-control" id="validationCustom09" name="role" required />
                     <div class="invalid-feedback">Masukkan Role (Jika tidak ada isi dengan -)</div>
                  </div>
                  <div class="mb-3 col-md-4">
                     <label for="validationCustom10" class="form-label">Kapasitas (Kva)</label>
                     <input type="number" class="form-control" id="validationCustom10" name="capacity" required />
                     <div class="invalid-feedback">Masukkan Kapasitas</div>
                  </div>
                  <div class="mb-3 col-md-4">
                     <label for="validationCustom11" class="form-label">Jumlah Modul</label>
                     <input type="number" class="form-control" id="validationCustom11" name="modul" required />
                     <div class="invalid-feedback">Masukkan Jumlah Modul</div>
                  </div>
                  <div class="mb-3 col-md-4">
                     <label for="validationCustom12" class="form-label">Kapasitas Modul (Kva)</label>
                     <input type="number" class="form-control" id="validationCustom12" name="modul_capacity" step="0.01" required />
                     <div class="invalid-feedback">Masukkan Kapasitas Modul</div>
                  </div>
                  <div class="mb-3 col-md-4">
                     <label for="validationCustom13" class="form-label">Occupancy (%)</label>
                     <input type="number" class="form-control" id="validationCustom13" name="occupancy" required />
                     <div class="invalid-feedback">Masukkan Occupancy</div>
                  </div>
                  <div class="mb-3 col-md-4">
                     <label for="validationCustom14" class="form-label">Jenis System</label>
                     <select class="form-select" name="system" id="validationCustom17" required>
                        <option selected disabled value="">-- Pilih Jenis System --</option>
                        <option value="Baik">Large</option>
                        <option value="Rusak">Small</option>
                        <option value="-">Tidak Ada</option>
                     </select>
                     <div class="invalid-feedback">Pilih Jenis System</div>
                  </div>
                  <div class="mb-3 col-md-4">
                     <label for="validationCustom15" class="form-label">Remark Aging</label>
                     <select class="form-select" name="aging" id="validationCustom15" required>
                        <option selected disabled value="">-- Pilih Remark Aging --</option>
                        <option value="Baik">Under 10 Years</option>
                        <option value="Rusak">Above 10 Years</option>
                     </select>
                     <div class="invalid-feedback">Pilih Remark Aging</div>
                  </div>
                  <div class="mb-3 col-md-4">
                     <label for="validationCustom16" class="form-label">Jumlah Batterai</label>
                     <input type="number" class="form-control" id="validationCustom16" name="battery" required />
                     <div class="invalid-feedback">Masukkan Jumlah Batterai</div>
                  </div>
                  <div class="mb-3 col-md-4">
                     <label for="validationCustom17" class="form-label">Source A</label>
                     <input type="text" class="form-control" id="validationCustom17" name="source_a" required />
                     <div class="invalid-feedback">Masukkan Source A (Jika tidak ada isi dengan -)</div>
                  </div>
                  <div class="mb-3 col-md-4">
                     <label for="validationCustom18" class="form-label">Source B</label>
                     <input type="text" class="form-control" id="validationCustom18" name="source_b" required />
                     <div class="invalid-feedback">Masukkan Source B (Jika tidak ada isi dengan -)</div>
                  </div>
                  <div class="mb-3 col-md-4">
                     <label for="validationCustom19" class="form-label">Kondisi</label>
                     <select class="form-select" name="kondisi" id="validationCustom19" required>
                        <option selected disabled value="">-- Pilih Kondisi --</option>
                        <option value="Baik">Baik</option>
                        <option value="Rusak">Rusak</option>
                     </select>
                     <div class="invalid-feedback">Pilih Kondisi</div>
                  </div>
                  <div class="mb-3 col-md-4">
                     <label for="validationCustom20" class="form-label">Status</label>
                     <select class="form-select" name="status" id="validationCustom20" required>
                        <option selected disabled value="">-- Pilih Status --</option>
                        <option value="ON">ON</option>
                        <option value="OFF">OFF</option>
                     </select>
                     <div class="invalid-feedback">Pilih Status</div>
                  </div>
                  <div class="mb-3 col-md-4">
                     <label for="validationCustom21" class="form-label">Keterangan</label>
                     <textarea class="form-control" name="ket" id="validationCustom21" rows="3" required></textarea>
                     <div class="invalid-feedback">Masukkan Keterangan (Jika tidak ada isi dengan -)</div>
                  </div>
                  <div class="mb-3 col-md-4">
                     <label for="validationCustom22" class="form-label">Tanggal Instalasi</label>
                     <input type="date" class="form-control" id="validationCustom22" name="install" require />
                     <div class="invalid-feedback">Masukkan Tanggal Instalasi</div>
                  </div>
                  <div class="mb-3 col-md-4">
                     <label for="maintanance" class="form-label">Tanggal Maintanance Terakhir</label>
                     <input type="date" class="form-control" id="maintanance" name="maintanance" value="-" />
                  </div>
               </div>
               <div class="modal-footer">
                  <button type="submit" class="btn btn-success">Tambah</button>
               </div>
            </form>
         </div>
      </div>
   </div>
   <!-- Edit -->
   <div class="modal fade" id="editElec" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="editLabel" aria-hidden="true">
      <div class="modal-dialog">
         <div class="modal-content">
            <div class="modal-header">
               <h5 class="modal-title" id="editLabel">Edit Data Potensi</h5>
               <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <form action="#" method="post" id="editPower">
               <div class="modal-body row g-3">
                  <div class="mb-3 col-md-4">
                     <label for="validationCustom01" class="form-label">NE ID</label>
                     <input type="text" class="form-control" id="validationCustom01" name="neid" required />
                     <div class="invalid-feedback">
                        Masukkan NE ID (Jika tidak ada isi dengan -)
                     </div>
                  </div>
                  <div class="mb-3 col-md-4">
                     <label for="validationCustom02" class="form-label">Lantai</label>
                     <select class="form-select" name="floor" id="validationCustom02" required>
                        <option selected disabled value="">-- Pilih Lantai --</option>
                        <option value="Basement">Basement</option>
                        <option value="Semi Basement">Semi-Basement</option>
                        <option value="1">1</option>
                        <option value="2">2</option>
                        <option value="3">3</option>
                        <option value="4">4</option>
                        <option value="5">5</option>
                     </select>
                     <div class="invalid-feedback">Pilih Lantai</div>
                  </div>
                  <div class="mb-3 col-md-4">
                     <label for="validationCustom03" class="form-label">Ruang</label>
                     <select class="form-select" name="room" id="validationCustom03" required>
                        <option selected disabled value="">-- Pilih Ruangan --</option>
                     </select>
                     <div class="invalid-feedback">Pilih Ruangan</div>
                  </div>
                  <div class="mb-3 col-md-4">
                     <label for="validationCustom04" class="form-label">Kategori</label>
                     <select class="form-select" name="category" id="validationCustom04" required>
                        <option selected disabled value="">-- Pilih Kategori --</option>
                        <option value="Panel">Panel</option>
                        <option value="Rectifier">Rectifier</option>
                        <option value="UPS">UPS</option>
                        <option value="Genset">Genset</option>
                        <option value="Trafo">Trafo</option>
                        <option value="Cubicle">Cubicle</option>
                        <option value="PLN">PLN</option>
                     </select>
                     <div class="invalid-feedback">Pilih Kategori</div>
                  </div>
                  <div class="mb-3 col-md-4">
                     <label for="validationCustom05" class="form-label">Nama</label>
                     <input type="text" class="form-control" id="validationCustom05" name="name" required />
                     <div class="invalid-feedback">Masukkan Nama</div>
                  </div>
                  <div class="mb-3 col-md-4">
                     <label for="validationCustom06" class="form-label">Vendor</label>
                     <input type="text" class="form-control" id="validationCustom06" name="vendor" required />
                     <div class="invalid-feedback">Masukkan Vendor</div>
                  </div>
                  <div class="mb-3 col-md-4">
                     <label for="validationCustom07" class="form-label">Brand</label>
                     <input type="text" class="form-control" id="validationCustom07" name="brand" required />
                     <div class="invalid-feedback">Masukkan Brand (Jika tidak ada isi dengan -)</div>
                  </div>
                  <div class="mb-3 col-md-4">
                     <label for="validationCustom08" class="form-label">Type</label>
                     <input type="text" class="form-control" id="validationCustom08" name="type" required />
                     <div class="invalid-feedback">Masukkan Type (Jika tidak ada isi dengan -)</div>
                  </div>
                  <div class="mb-3 col-md-4">
                     <label for="validationCustom09" class="form-label">Role</label>
                     <input type="text" class="form-control" id="validationCustom09" name="role" required />
                     <div class="invalid-feedback">Masukkan Role (Jika tidak ada isi dengan -)</div>
                  </div>
                  <div class="mb-3 col-md-4">
                     <label for="validationCustom10" class="form-label">Kapasitas (Kva)</label>
                     <input type="number" class="form-control" id="validationCustom10" name="capacity" required />
                     <div class="invalid-feedback">Masukkan Kapasitas</div>
                  </div>
                  <div class="mb-3 col-md-4">
                     <label for="validationCustom11" class="form-label">Jumlah Modul</label>
                     <input type="number" class="form-control" id="validationCustom11" name="modul" required />
                     <div class="invalid-feedback">Masukkan Jumlah Modul</div>
                  </div>
                  <div class="mb-3 col-md-4">
                     <label for="validationCustom12" class="form-label">Kapasitas Modul (Kva)</label>
                     <input type="number" class="form-control" id="validationCustom12" name="modulCapacity" required />
                     <div class="invalid-feedback">Masukkan Kapasitas Modul</div>
                  </div>
                  <div class="mb-3 col-md-4">
                     <label for="validationCustom13" class="form-label">Occupancy (%)</label>
                     <input type="number" class="form-control" id="validationCustom13" name="occupancy" required />
                     <div class="invalid-feedback">Masukkan Occupancy</div>
                  </div>
                  <div class="mb-3 col-md-4">
                     <label for="validationCustom14" class="form-label">System</label>
                     <input type="text" class="form-control" id="validationCustom14" name="system" required />
                     <div class="invalid-feedback">Masukkan System (Jika tidak ada isi dengan -)</div>
                  </div>
                  <div class="mb-3 col-md-4">
                     <label for="validationCustom15" class="form-label">Source A</label>
                     <input type="text" class="form-control" id="validationCustom15" name="sourceA" required />
                     <div class="invalid-feedback">Masukkan Source A (Jika tidak ada isi dengan -)</div>
                  </div>
                  <div class="mb-3 col-md-4">
                     <label for="validationCustom16" class="form-label">Source B</label>
                     <input type="text" class="form-control" id="validationCustom16" name="sourceB" required />
                     <div class="invalid-feedback">Masukkan Source B (Jika tidak ada isi dengan -)</div>
                  </div>
                  <div class="mb-3 col-md-4">
                     <label for="validationCustom17" class="form-label">Kondisi</label>
                     <select class="form-select" name="kondisi" id="validationCustom17" required>
                        <option selected disabled value="">-- Pilih Kondisi --</option>
                        <option value="Baik">Baik</option>
                        <option value="Rusak">Rusak</option>
                     </select>
                     <div class="invalid-feedback">Pilih Kondisi</div>
                  </div>
                  <div class="mb-3 col-md-4">
                     <label for="validationCustom18" class="form-label">Status</label>
                     <select class="form-select" name="status" id="validationCustom18" required>
                        <option selected disabled value="">-- Pilih Status --</option>
                        <option value="ON">ON</option>
                        <option value="OFF">OFF</option>
                     </select>
                     <div class="invalid-feedback">Pilih Status</div>
                  </div>
                  <div class="mb-3 col-md-4">
                     <label for="validationCustom19" class="form-label">Keterangan</label>
                     <textarea class="form-control" name="keterangan" id="validationCustom19" rows="3" required></textarea>
                     <div class="invalid-feedback">Masukkan Keterangan (Jika tidak ada isi dengan -)</div>
                  </div>
                  <div class="mb-3 col-md-4">
                     <label for="validationCustom20" class="form-label">Tanggal Instalasi</label>
                     <input type="date" class="form-control" id="validationCustom20" name="install" required />
                     <div class="invalid-feedback">Masukkan Tanggal Instalasi</div>
                  </div>
                  <div class="mb-3 col-md-4">
                     <label for="validationCustom21" class="form-label">Tanggal Maintanance Terakhir</label>
                     <input type="date" class="form-control" id="validationCustom21" name="maintanance" required />
                     <div class="invalid-feedback">Masukkan Tanggal Maintanance Terakhir</div>
                  </div>
               </div>
               <div class="modal-footer">
                  <button type="submit" class="btn btn-success">Tambah</button>
               </div>
            </form>
         </div>
      </div>
   </div>
   <!-- Delete -->
   <div class="modal fade" id="deleteElec" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="deleteLabel" aria-hidden="true">
      <div class="modal-dialog">
         <div class="modal-content">
            <div class="modal-header">
               <h5 class="modal-title" id="deleteLabel">Hapus Data Potensi</h5>
            </div>
            <div class="modal-body">
               <p>Apakah anda yakin menghapus data <span id="deleteNameEl"></span> <span id="deleteMerkEl"></span></p>
            </div>
            <div class="modal-footer">
               <a class="btn btn-danger" id="deleteButtonEl" href="#">Hapus</a>
               <button type="button" class="btn btn-success" data-bs-dismiss="modal">Kembali</button>
            </div>
         </div>
      </div>
   </div>
</div>

<?php $this->load->view('layout/footer'); ?>

<script src="<?= base_url(); ?>asset/js/scriptPotency.js"></script>

</body>

</html>