<button type="button" class="btn btn-success btn-lg btn-icon-split my-2" data-bs-toggle="modal" data-bs-target="#pueModal">
   <span class="icon text-white-50">
      <i class='bx bx-plus' style='color:#ffffff'></i>
   </span>
   <span class="text p-1 border-start">Tambah</span>
</button>
<div class="flexBox">
   <div class="box-33 border">
      <canvas style="height: 50vh;" id="puePagi"></canvas>
   </div>
   <div class="box-33 border">
      <canvas style="height: 50vh;" id="pueSiang"></canvas>
   </div>
   <div class="box-33 border">
      <canvas style="height: 50vh;" id="pueMalam"></canvas>
   </div>
</div>
<div class="flexBox">
   <div class="box-33" style="padding: 0;">
      <div class="card text-center">
         <div class="card-header">
            <h4 class="card-title fw-bold">Minimum</h4>
         </div>
         <div class="card-body">
            <h6 class="display-1 fw-bold"><?= $min[0]['average']; ?></h6>
         </div>
      </div>
   </div>
   <div class="box-33" style="padding: 0;">
      <div class="card text-center">
         <div class="card-header">
            <h4 class="card-title fw-bold">Average</h4>
         </div>
         <div class="card-body">
            <h6 class="display-1 fw-bold"><?= round($avg[0]['average'], 2); ?></h6>
         </div>
      </div>
   </div>
   <div class="box-33" style="padding: 0;">
      <div class="card text-center">
         <div class="card-header">
            <h4 class="card-title fw-bold">Maximum</h4>
         </div>
         <div class="card-body">
            <h6 class="display-1 fw-bold"><?= $max[0]['average']; ?></h6>
         </div>
      </div>
   </div>
</div>
<div class="row">
   <div class="col-sm-3 mb-3">

   </div>
   <div class="col-sm-3 mb-3">

   </div>
   <div class="col-sm-3 mb-3">

   </div>
</div>
<div class="flexBox">
   <div class="box-33 border">
      <h4 class="text-center fw-bold">Pagi</h4>
      <table class="table table-sm table-bordered">
         <thead class="table-dark text-center">
            <tr>
               <th>Tanggal</th>
               <th>LVMDP</th>
               <th>Recti+UPS</th>
               <th>PUE</th>
            </tr>
         </thead>
         <tbody class="text-center">
            <?php foreach ($pagi as $key => $p) { ?>
               <tr>
                  <td><?= $p->tgl; ?></td>
                  <td><?= $p->lvmdp; ?> kW</td>
                  <td><?= $p->total; ?> kW</td>
                  <td><?= $p->pue; ?></td>
               </tr>
            <?php } ?>
         </tbody>
      </table>
   </div>
   <div class="box-33 border">
      <h4 class="text-center fw-bold">Siang</h4>
      <table class="table table-sm table-bordered">
         <thead class="table-dark text-center">
            <tr>
               <th>Tanggal</th>
               <th>LVMDP</th>
               <th>Recti+UPS</th>
               <th>PUE</th>
            </tr>
         </thead>
         <tbody class="text-center">
            <?php foreach ($siang as $key => $s) { ?>
               <tr>
                  <td><?= $s->tgl; ?></td>
                  <td><?= $s->lvmdp; ?> kW</td>
                  <td><?= $s->total; ?> kW</td>
                  <td><?= $s->pue; ?></td>
               </tr>
            <?php } ?>
         </tbody>
      </table>
   </div>
   <div class="box-33 border">
      <h4 class="text-center fw-bold">Malam</h4>
      <table class="table table-sm table-bordered">
         <thead class="table-dark text-center">
            <tr>
               <th>Tanggal</th>
               <th>LVMDP</th>
               <th>Recti+UPS</th>
               <th>PUE</th>
            </tr>
         </thead>
         <tbody class="text-center">
            <?php foreach ($malam as $key => $m) { ?>
               <tr>
                  <td><?= $m->tgl; ?></td>
                  <td><?= $m->lvmdp; ?> kW</td>
                  <td><?= $m->total; ?> kW</td>
                  <td><?= $m->pue; ?></td>
               </tr>
            <?php } ?>
         </tbody>
      </table>
   </div>
</div>


<!-- Modal -->
<div class="modal fade" id="pueModal" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="electricModalLabel" aria-hidden="true">
   <div class="modal-dialog">
      <div class="modal-content">
         <div class="modal-header">
            <h5 class="modal-title" id="electricModalLabel">Modal title</h5>
            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
         </div>
         <form action="<?= base_url() . 'InputData/pue'; ?>" method="post" class="needs-validation" novalidate>
            <div class="modal-body">
               <div class="my-3">
                  <label for="validationCustom01" class="form-label">Tanggal</label>
                  <input type="date" class="form-control" id="validationCustom01" name="tanggal" required>
                  <div class="invalid-feedback">
                     Masukkan Tanggal
                  </div>
               </div>
               <div class="form-check form-check-inline">
                  <input class="form-check-input" type="radio" name="table" id="validationCustom02" value="pagi" required>
                  <label class="form-check-label" for="validationCustom02">Pagi</label>
               </div>
               <div class="form-check form-check-inline">
                  <input class="form-check-input" type="radio" name="table" id="validationCustom03" value="siang" required>
                  <label class="form-check-label" for="validationCustom03">Siang</label>
               </div>
               <div class="form-check form-check-inline">
                  <input class="form-check-input" type="radio" name="table" id="validationCustom04" value="malam" required>
                  <label class="form-check-label" for="validationCustom04">Malam</label>
               </div>
               <div class="my-3">
                  <label for="validationCustom05" class="form-label">LVMDP (kW)</label>
                  <input type="number" class="form-control" id="validationCustom05" step="0.01" name="lvmdp" required>
                  <div class="invalid-feedback">
                     Masukkan Daya LVMDP
                  </div>
               </div>
               <div class="mb-3">
                  <label for="validationCustom06" class="form-label">Rect 1</label>
                  <input type="number" class="form-control" id="validationCustom06" step="0.01" name="rect1" required>
                  <div class="invalid-feedback">
                     Masukkan Daya Recti 2.01
                  </div>
               </div>
               <div class="mb-3">
                  <label for="validationCustom07" class="form-label">Rect 2</label>
                  <input type="number" class="form-control" id="validationCustom07" step="0.01" name="rect2" required>
                  <div class="invalid-feedback">
                     Masukkan Daya Recti 2.02
                  </div>
               </div>
               <div class="mb-3">
                  <label for="validationCustom08" class="form-label">Rect 3</label>
                  <input type="number" class="form-control" id="validationCustom08" step="0.01" name="rect3" required>
                  <div class="invalid-feedback">
                     Masukkan Daya Recti 2.03
                  </div>
               </div>
               <div class="mb-3">
                  <label for="validationCustom09" class="form-label">Rect 4</label>
                  <input type="number" class="form-control" id="validationCustom09" step="0.01" name="rect4" required>
                  <div class="invalid-feedback">
                     Masukkan Daya Recti 2.04
                  </div>
               </div>
               <div class="mb-3">
                  <label for="validationCustom10" class="form-label">Rect 5</label>
                  <input type="number" class="form-control" id="validationCustom10" step="0.01" name="rect5" required>
                  <div class="invalid-feedback">
                     Masukkan Daya Recti 2.05
                  </div>
               </div>
               <div class="mb-3">
                  <label for="validationCustom11" class="form-label">Rect 6</label>
                  <input type="number" class="form-control" id="validationCustom11" step="0.01" name="rect6" required>
                  <div class="invalid-feedback">
                     Masukkan Daya Recti 2.06
                  </div>
               </div>
               <div class="mb-3">
                  <label for="validationCustom12" class="form-label">Rect 7</label>
                  <input type="number" class="form-control" id="validationCustom12" step="0.01" name="rect7" required>
                  <div class="invalid-feedback">
                     Masukkan Daya Recti 3.01
                  </div>
               </div>
               <div class="mb-3">
                  <label for="validationCustom13" class="form-label">Rect 8</label>
                  <input type="number" class="form-control" id="validationCustom13" step="0.01" name="rect8" required>
                  <div class="invalid-feedback">
                     Masukkan Daya Recti 3.02
                  </div>
               </div>
               <div class="mb-3">
                  <label for="validationCustom14" class="form-label">Rect 9</label>
                  <input type="number" class="form-control" id="validationCustom14" step="0.01" name="rect9" required>
                  <div class="invalid-feedback">
                     Masukkan Daya Recti 3.03
                  </div>
               </div>
               <div class="mb-3">
                  <label for="validationCustom15" class="form-label">Rect 10</label>
                  <input type="number" class="form-control" id="validationCustom15" step="0.01" name="rect10" required>
                  <div class="invalid-feedback">
                     Masukkan Daya Recti 3.04
                  </div>
               </div>
               <div class="mb-3">
                  <label for="validationCustom16" class="form-label">Rect 11</label>
                  <input type="number" class="form-control" id="validationCustom16" step="0.01" name="rect11" required>
                  <div class="invalid-feedback">
                     Masukkan Daya Recti 4.01
                  </div>
               </div>
               <div class="mb-3">
                  <label for="validationCustom17" class="form-label">Rect 12</label>
                  <input type="number" class="form-control" id="validationCustom17" step="0.01" name="rect12" required>
                  <div class="invalid-feedback">
                     Masukkan Daya Recti 4.02
                  </div>
               </div>
               <div class="mb-3">
                  <label for="validationCustom18" class="form-label">Rect 13</label>
                  <input type="number" class="form-control" id="validationCustom18" step="0.01" name="rect13" required>
                  <div class="invalid-feedback">
                     Masukkan Daya Recti 4.03
                  </div>
               </div>
               <div class="mb-3" id="change">
                  <label for="validationCustom19" class="form-label">UPS 2.02</label>
                  <input type="number" class="form-control" id="validationCustom19" step="0.01" name="ups1" required>
                  <div class="invalid-feedback">
                     Masukkan Daya UPS 2.02
                  </div>
               </div>
               <div class="mb-3" id="change">
                  <label for="validationCustom20" class="form-label">UPS 2.03</label>
                  <input type="number" class="form-control" id="validationCustom20" step="0.01" name="ups2" required>
                  <div class="invalid-feedback">
                     Masukkan Daya UPS 2.03
                  </div>
               </div>
               <div class="mb-3" id="change">
                  <label for="validationCustom21" class="form-label">UPS 3.01</label>
                  <input type="number" class="form-control" id="validationCustom21" step="0.01" name="ups3" required>
                  <div class="invalid-feedback">
                     Masukkan Daya UPS 3.01
                  </div>
               </div>
               <div class="mb-3" id="change">
                  <label for="validationCustom22" class="form-label">UPS 3.02</label>
                  <input type="number" class="form-control" id="validationCustom22" step="0.01" name="ups4" required>
                  <div class="invalid-feedback">
                     Masukkan Daya UPS 3.02
                  </div>
               </div>
               <div class="mb-3" id="change">
                  <label for="validationCustom23" class="form-label">UPS 5.01</label>
                  <input type="number" class="form-control" id="validationCustom23" step="0.01" name="ups5" required>
                  <div class="invalid-feedback">
                     Masukkan Daya UPS 5.01
                  </div>
               </div>
               <div class="mb-3" id="change">
                  <label for="validationCustom24" class="form-label">UPS 5.02</label>
                  <input type="number" class="form-control" id="validationCustom24" step="0.01" name="ups6" required>
                  <div class="invalid-feedback">
                     Masukkan Daya UPS 5.02
                  </div>
               </div>
            </div>
            <div class="modal-footer">
               <button type="submit" class="btn btn-success">Tambah</button>
            </div>
         </form>
      </div>
   </div>
</div>