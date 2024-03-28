<div class="tabset">
  <!-- Tab 1 -->
  <input type="radio" name="tabset" id="tab1" aria-controls="electric" checked>
  <label for="tab1">Electricity System</label>
  <!-- Tab 2 -->
  <input type="radio" name="tabset" id="tab2" aria-controls="cool">
  <label for="tab2">Cooling System</label>
  <!-- Tab 3 -->
  <input type="radio" name="tabset" id="tab3" aria-controls="fire">
  <label for="tab3">Fire System</label>
  <!-- Tab 4 -->
  <input type="radio" name="tabset" id="tab4" aria-controls="angkut">
  <label for="tab4">Alat Angkut</label>
  <!-- Tab 5 -->
  <input type="radio" name="tabset" id="tab5" aria-controls="ups">
  <label for="tab5">UPS</label>
  <!-- Tab 6 -->
  <input type="radio" name="tabset" id="tab6" aria-controls="recti">
  <label for="tab6">Rectifier</label>
  <!-- Tab 7 -->
  <input type="radio" name="tabset" id="tab7" aria-controls="penerangan">
  <label for="tab7">Penerangan</label>
  <!-- Tab 8 -->
  <input type="radio" name="tabset" id="tab8" aria-controls="warning">
  <label for="tab8">Warning System</label>
  <!-- Tab 9 -->
  <input type="radio" name="tabset" id="tab9" aria-controls="support">
  <label for="tab9">Support System</label>


  <div class="tab-panels">
    <section id="electric" class="tab-panel">
      <button type="button" class="btn btn-success btn-icon-split my-2" data-bs-toggle="modal" data-bs-target="#add">
        <span class="icon text-white-50">
          <i class='bx bx-plus' style='color:#ffffff'></i>
        </span>
        <span class="text p-1 border-start">Tambah</span>
      </button>
      <table class="table table-striped table-bordered">
        <colgroup>
          <col style="width: 3%;">
          <col span="2">
          <col style="width: 9%;">
          <col span="2" style="width: 8%;">
        </colgroup>
        <thead>
          <tr class="table-dark text-center">
            <th>No</th>
            <th>Nama</th>
            <th>Merk</th>
            <th>Kapasitas</th>
            <th>Jumlah</th>
            <th>Aksi</th>
          </tr>
        </thead>
        <tbody>
          <?php foreach ($electric as $key => $e) { ?>
            <tr>
              <td class="text-center"><?= $key + 1; ?></td>
              <td><?= $e->nama; ?></td>
              <td><?= $e->merk; ?></td>
              <td class="text-center"><?= $e->kapasitas; ?></td>
              <td class="text-center"><?= $e->jumlah; ?></td>
              <td class="text-center">
                <button type="button" class="btn btn-primary btn-edit" data-id="<?= $e->id; ?>" data data-bs-toggle="tooltip" data-bs-placement="top" title="Edit">
                  <i class='bx bxs-edit'></i>
                </button>
                <button type="button" class="btn btn-danger btn-delete" data-id="<?= $e->id; ?>" data-bs-toggle="tooltip" data-bs-placement="top" title="Hapus">
                  <i class='bx bxs-trash'></i>
                </button>
              </td>
            </tr>
          <?php } ?>
        </tbody>
      </table>
    </section>
    <section id="cool" class="tab-panel">
      <button type="button" class="btn btn-success btn-icon-split my-2" id="switch">
        <span class="icon text-white-50">
          <i class='bx bx-plus' style='color:#ffffff'></i>
        </span>
        <span class="text p-1 border-start">Tambah</span>
      </button>
      <table class="table table-striped table-bordered">
        <colgroup>
          <col style="width: 3%;">
          <col span="2">
          <col style="width: 8%;">
          <col style="width: 25%;">
          <col style="width: 9%;">
        </colgroup>
        <thead>
          <tr class="table-dark text-center">
            <th>No</th>
            <th>Nama</th>
            <th>Merk</th>
            <th>Jumlah</th>
            <th>Keterangan</th>
            <th>Aksi</th>
          </tr>
        </thead>
        <tbody>
          <?php foreach ($cooling as $key => $c) { ?>
            <tr>
              <td class="text-center"><?= $key + 1; ?></td>
              <td><?= $c->nama; ?></td>
              <td><?= $c->merk; ?></td>
              <td class="text-center"><?= $c->jumlah; ?></td>
              <td class="text-center"><?= $c->keterangan; ?></td>
              <td class="text-center">
                <button type="button" class="btn btn-primary" data-id="<?= $c->id; ?>" data-bs-toggle="tooltip" data-bs-placement="top" title="Edit"><i class='bx bxs-edit'></i></button>
                <button type="button" class="btn btn-danger" data-id="<?= $c->id; ?>" data-bs-toggle="tooltip" data-bs-placement="top" title="Hapus"><i class='bx bxs-trash'></i></button>
              </td>
            </tr>
          <?php } ?>
        </tbody>
      </table>
    </section>
    <section id="fire" class="tab-panel">
      <button type="button" class="btn btn-success btn-icon-split my-2" id="switch">
        <span class="icon text-white-50">
          <i class='bx bx-plus' style='color:#ffffff'></i>
        </span>
        <span class="text p-1 border-start">Tambah</span>
      </button>
      <table class="table table-striped table-bordered">
        <colgroup>
          <col style="width: 3%;">
          <col span="2">
          <col style="width: 8%;">
          <col style="width: 25%;">
          <col style="width: 9%;">
        </colgroup>
        <thead>
          <tr class="table-dark text-center">
            <th>No</th>
            <th>Nama</th>
            <th>Merk</th>
            <th>Jumlah</th>
            <th>Keterangan</th>
            <th>Aksi</th>
          </tr>
        </thead>
        <tbody>
          <?php foreach ($fire as $key => $f) { ?>
            <tr>
              <td class="text-center"><?= $key + 1; ?></td>
              <td><?= $f->nama; ?></td>
              <td><?= $f->merk; ?></td>
              <td class="text-center"><?= $f->jumlah; ?></td>
              <td class="text-center"><?= $f->keterangan; ?></td>
              <td class="text-center">
                <button type="button" class="btn btn-primary" data-id="<?= $f->id; ?>" data-bs-toggle="tooltip" data-bs-placement="top" title="Edit"><i class='bx bxs-edit'></i></button>
                <button type="button" class="btn btn-danger" data-id="<?= $f->id; ?>" data-bs-toggle="tooltip" data-bs-placement="top" title="Hapus"><i class='bx bxs-trash'></i></button>
              </td>
            </tr>
          <?php } ?>
        </tbody>
      </table>
    </section>
    <section id="angkut" class="tab-panel">
      <button type="button" class="btn btn-success btn-icon-split my-2" id="switch">
        <span class="icon text-white-50">
          <i class='bx bx-plus' style='color:#ffffff'></i>
        </span>
        <span class="text p-1 border-start">Tambah</span>
      </button>
      <table class="table table-striped table-bordered">
        <colgroup>
          <col style="width: 3%;">
          <col span="2">
          <col style="width: 8%;">
          <col style="width: 25%;">
          <col style="width: 9%;">
        </colgroup>
        <thead>
          <tr class="table-dark text-center">
            <th>No</th>
            <th>Nama</th>
            <th>Merk</th>
            <th>Jumlah</th>
            <th>Keterangan</th>
            <th>Aksi</th>
          </tr>
        </thead>
        <tbody>
          <?php foreach ($angkut as $key => $a) { ?>
            <tr>
              <td class="text-center"><?= $key + 1; ?></td>
              <td><?= $a->nama; ?></td>
              <td><?= $a->merk; ?></td>
              <td class="text-center"><?= $a->jumlah; ?></td>
              <td class="text-center"><?= $a->keterangan; ?></td>
              <td class="text-center">
                <button type="button" class="btn btn-primary" data-id="<?= $a->id; ?>" data-bs-toggle="tooltip" data-bs-placement="top" title="Edit"><i class='bx bxs-edit'></i></button>
                <button type="button" class="btn btn-danger" data-id="<?= $a->id; ?>" data-bs-toggle="tooltip" data-bs-placement="top" title="Hapus"><i class='bx bxs-trash'></i></button>
              </td>
            </tr>
          <?php } ?>
        </tbody>
      </table>
    </section>
    <section id="ups" class="tab-panel">
      <button type="button" class="btn btn-success btn-icon-split my-2" id="switch">
        <span class="icon text-white-50">
          <i class='bx bx-plus' style='color:#ffffff'></i>
        </span>
        <span class="text p-1 border-start">Tambah</span>
      </button>
      <table class="table table-striped table-bordered">
        <colgroup>
          <col style="width: 3%;">
          <col span="2">
          <col style="width: 8%;">
          <col style="width: 25%;">
          <col style="width: 9%;">
        </colgroup>
        <thead>
          <tr class="table-dark text-center">
            <th>No</th>
            <th>Nama</th>
            <th>Merk</th>
            <th>Jumlah</th>
            <th>Keterangan</th>
            <th>Aksi</th>
          </tr>
        </thead>
        <tbody>
          <?php foreach ($ups as $key => $u) { ?>
            <tr>
              <td class="text-center"><?= $key + 1; ?></td>
              <td><?= $u->nama; ?></td>
              <td><?= $u->merk; ?></td>
              <td class="text-center"><?= $u->jumlah; ?></td>
              <td class="text-center"><?= $u->keterangan; ?></td>
              <td class="text-center">
                <button type="button" class="btn btn-primary" data-id="<?= $u->id; ?>" data-bs-toggle="tooltip" data-bs-placement="top" title="Edit"><i class='bx bxs-edit'></i></button>
                <button type="button" class="btn btn-danger" data-id="<?= $u->id; ?>" data-bs-toggle="tooltip" data-bs-placement="top" title="Hapus"><i class='bx bxs-trash'></i></button>
              </td>
            </tr>
          <?php } ?>
        </tbody>
      </table>
    </section>
    <section id="recti" class="tab-panel">
      <button type="button" class="btn btn-success btn-icon-split my-2" id="switch">
        <span class="icon text-white-50">
          <i class='bx bx-plus' style='color:#ffffff'></i>
        </span>
        <span class="text p-1 border-start">Tambah</span>
      </button>
      <table class="table table-striped table-bordered">
        <colgroup>
          <col style="width: 3%;">
          <col span="2">
          <col style="width: 8%;">
          <col style="width: 25%;">
          <col style="width: 9%;">
        </colgroup>
        <thead>
          <tr class="table-dark text-center">
            <th>No</th>
            <th>Nama</th>
            <th>Merk</th>
            <th>Jumlah</th>
            <th>Keterangan</th>
            <th>Aksi</th>
          </tr>
        </thead>
        <tbody>
          <?php foreach ($recti as $key => $r) { ?>
            <tr>
              <td class="text-center"><?= $key + 1; ?></td>
              <td><?= $r->nama; ?></td>
              <td><?= $r->merk; ?></td>
              <td class="text-center"><?= $r->jumlah; ?></td>
              <td class="text-center"><?= $r->keterangan; ?></td>
              <td class="text-center">
                <button type="button" class="btn btn-primary" data-id="<?= $r->id; ?>" data-bs-toggle="tooltip" data-bs-placement="top" title="Edit"><i class='bx bxs-edit'></i></button>
                <button type="button" class="btn btn-danger" data-id="<?= $r->id; ?>" data-bs-toggle="tooltip" data-bs-placement="top" title="Hapus"><i class='bx bxs-trash'></i></button>
              </td>
            </tr>
          <?php } ?>
        </tbody>
      </table>
    </section>
    <section id="penerangan" class="tab-panel">
      <button type="button" class="btn btn-success btn-icon-split my-2" id="switch">
        <span class="icon text-white-50">
          <i class='bx bx-plus' style='color:#ffffff'></i>
        </span>
        <span class="text p-1 border-start">Tambah</span>
      </button>
      <table class="table table-striped table-bordered">
        <colgroup>
          <col style="width: 3%;">
          <col span="2">
          <col style="width: 8%;">
          <col style="width: 25%;">
          <col style="width: 9%;">
        </colgroup>
        <thead>
          <tr class="table-dark text-center">
            <th>No</th>
            <th>Nama</th>
            <th>Merk</th>
            <th>Jumlah</th>
            <th>Keterangan</th>
            <th>Aksi</th>
          </tr>
        </thead>
        <tbody>
          <?php foreach ($penerangan as $key => $p) { ?>
            <tr>
              <td class="text-center"><?= $key + 1; ?></td>
              <td><?= $p->nama; ?></td>
              <td><?= $p->merk; ?></td>
              <td class="text-center"><?= $p->jumlah; ?></td>
              <td class="text-center"><?= $p->keterangan; ?></td>
              <td class="text-center">
                <button type="button" class="btn btn-primary" data-id="<?= $p->id; ?>" data-bs-toggle="tooltip" data-bs-placement="top" title="Edit"><i class='bx bxs-edit'></i></button>
                <button type="button" class="btn btn-danger" data-id="<?= $p->id; ?>" data-bs-toggle="tooltip" data-bs-placement="top" title="Hapus"><i class='bx bxs-trash'></i></button>
              </td>
            </tr>
          <?php } ?>
        </tbody>
      </table>
    </section>
    <section id="warning" class="tab-panel">
      <button type="button" class="btn btn-success btn-icon-split my-2" id="switch">
        <span class="icon text-white-50">
          <i class='bx bx-plus' style='color:#ffffff'></i>
        </span>
        <span class="text p-1 border-start">Tambah</span>
      </button>
      <table class="table table-striped table-bordered">
        <colgroup>
          <col style="width: 3%;">
          <col span="2">
          <col style="width: 8%;">
          <col style="width: 25%;">
          <col style="width: 9%;">
        </colgroup>
        <thead>
          <tr class="table-dark text-center">
            <th>No</th>
            <th>Nama</th>
            <th>Merk</th>
            <th>Jumlah</th>
            <th>Keterangan</th>
            <th>Aksi</th>
          </tr>
        </thead>
        <tbody>
          <?php foreach ($warning as $key => $w) { ?>
            <tr>
              <td class="text-center"><?= $key + 1; ?></td>
              <td><?= $w->nama; ?></td>
              <td><?= $w->merk; ?></td>
              <td class="text-center"><?= $w->jumlah; ?></td>
              <td class="text-center"><?= $w->keterangan; ?></td>
              <td class="text-center">
                <button type="button" class="btn btn-primary" data-id="<?= $w->id; ?>" data-bs-toggle="tooltip" data-bs-placement="top" title="Edit"><i class='bx bxs-edit'></i></button>
                <button type="button" class="btn btn-danger" data-id="<?= $w->id; ?>" data-bs-toggle="tooltip" data-bs-placement="top" title="Hapus"><i class='bx bxs-trash'></i></button>
              </td>
            </tr>
          <?php } ?>
        </tbody>
      </table>
    </section>
    <section id="support" class="tab-panel">
      <button type="button" class="btn btn-success btn-icon-split my-2" id="switch">
        <span class="icon text-white-50">
          <i class='bx bx-plus' style='color:#ffffff'></i>
        </span>
        <span class="text p-1 border-start">Tambah</span>
      </button>
      <table class="table table-striped table-bordered">
        <colgroup>
          <col style="width: 3%;">
          <col span="2">
          <col style="width: 8%;">
          <col style="width: 25%;">
          <col style="width: 9%;">
        </colgroup>
        <thead>
          <tr class="table-dark text-center">
            <th>No</th>
            <th>Nama</th>
            <th>Merk</th>
            <th>Jumlah</th>
            <th>Keterangan</th>
            <th>Aksi</th>
          </tr>
        </thead>
        <tbody>
          <?php foreach ($support as $key => $s) { ?>
            <tr>
              <td class="text-center"><?= $key + 1; ?></td>
              <td><?= $s->nama; ?></td>
              <td><?= $s->merk; ?></td>
              <td class="text-center"><?= $s->jumlah; ?></td>
              <td class="text-center"><?= $s->keterangan; ?></td>
              <td class="text-center">
                <button type="button" class="btn btn-primary" data-id="<?= $s->id; ?>" data-bs-toggle="tooltip" data-bs-placement="top" title="Edit"><i class='bx bxs-edit'></i></button>
                <button type="button" class="btn btn-danger" data-id="<?= $s->id; ?>" data-bs-toggle="tooltip" data-bs-placement="top" title="Hapus"><i class='bx bxs-trash'></i></button>
              </td>
            </tr>
          <?php } ?>
        </tbody>
      </table>
    </section>
  </div>

  <!-- Add Modal -->
  <div class="modal fade" id="add" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="addLabel" aria-hidden="true">
    <div class="modal-dialog">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="addLabel">Modal title</h5>
          <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
        </div>
        <form action="config\inputPotensiElectric.php" method="post">
          <div class="modal-body">
            <div class="mb-3">
              <label for="inputNama" class="form-label">Nama</label>
              <input type="text" class="form-control" id="inputNama" name="nama">
            </div>
            <div class="mb-3">
              <label for="inputMerk" class="form-label">Merk</label>
              <input type="text" class="form-control" id="inputMerk" name="merk">
            </div>
            <div class="mb-3" id="change">
              <label for="inputKapasitas" class="form-label">Kapasitas</label>
              <input type="number" class="form-control" id="inputKapasitas" name="kapasitas">
            </div>
            <div class="mb-3">
              <label for="inputJumlah" class="form-label">Jumlah</label>
              <input type="number" class="form-control" id="inputJumlah" name="jumlah">
            </div>
          </div>
          <div class="modal-footer">
            <button type="submit" class="btn btn-success">Tambah</button>
          </div>
        </form>
      </div>
    </div>
  </div>

  <!-- Edit Modal  -->
  <div class="modal fade" id="edit" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="editLabel" aria-hidden="true">
    <div class="modal-dialog">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="editLabel">Modal title</h5>
          <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
        </div>
        <form action="#" method="post" id="editModal">
          <div class="modal-body">
            <div class="mb-3">
              <label for="inputNama" class="form-label">Nama</label>
              <input type="text" class="form-control" id="inputNama" name="nama">
            </div>
            <div class="mb-3">
              <label for="inputMerk" class="form-label">Merk</label>
              <input type="text" class="form-control" id="inputMerk" name="merk">
            </div>
            <div class="mb-3" id="change">
              <label for="inputKapasitas" class="form-label">Kapasitas</label>
              <input type="number" class="form-control" id="inputKapasitas" name="kapasitas">
            </div>
            <div class="mb-3">
              <label for="inputJumlah" class="form-label">Jumlah</label>
              <input type="number" class="form-control" id="inputJumlah" name="jumlah">
            </div>
          </div>
          <div class="modal-footer">
            <button type="submit" class="btn btn-success">Tambah</button>
          </div>
        </form>
      </div>
    </div>
  </div>
</div>