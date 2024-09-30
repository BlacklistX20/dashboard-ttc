<div class="tabset">
   <!-- Tab 1 -->
   <input type="radio" name="tabset" id="tab1" aria-controls="lantai1" checked>
   <label for="tab1">Lantai 1</label>
   <!-- Tab 2 -->
   <input type="radio" name="tabset" id="tab2" aria-controls="lantai2">
   <label for="tab2">Lantai 2</label>
   <!-- Tab 3 -->
   <input type="radio" name="tabset" id="tab3" aria-controls="lantai3">
   <label for="tab3">Lantai 3</label>
   <!-- Tab 4 -->
   <input type="radio" name="tabset" id="tab4" aria-controls="lantai4">
   <label for="tab4">Lantai 4</label>
   <!-- Tab 5 -->
   <input type="radio" name="tabset" id="tab5" aria-controls="lantai5">
   <label for="tab5">Lantai 5</label>


   <div class="tab-panels">
      <section id="lantai1" class="tab-panel">
         <div class="row">
            <div class="col-sm-3 mb-3">
               <div id="cardBatt" class="card text-bg-danger">
                  <div class="card-header">
                     <h4 class="card-title fw-bold">Ruang Genset</h4>
                  </div>
                  <div class="card-body">
                     <h2 class="display-2 fw-bold"><span id="tempGen">0</span>&deg;C</h2>
                     <p class="display-5"><span id="humGen">0</span>%</p>
                  </div>
                  <div class="card-footer">
                     <div class="row">
                        <div class="col">
                           <small class="text-light">Last updated <span id="dateGen">0</span></small>
                        </div>
                        <div class="col d-grid justify-content-end">
                           <button class="btn btn-outline-light" data-bs-toggle="modal"
                              data-bs-target="#detailGen">Detail</button>
                        </div>
                     </div>
                  </div>
               </div>
            </div>
            <div class="col-sm-3 mb-3">
               <div id="cardBatt" class="card text-bg-danger">
                  <div class="card-header">
                     <h4 class="card-title fw-bold">Ruang Trafo</h4>
                  </div>
                  <div class="card-body">
                     <h2 class="display-2 fw-bold"><span id="tempTrafo">0</span>&deg;C</h2>
                     <p class="display-5"><span id="humTrafo">0</span>%</p>
                  </div>
                  <div class="card-footer">
                     <div class="row">
                        <div class="col">
                           <small class="text-light">Last updated <span id="dateTrafo">0</span></small>
                        </div>
                        <div class="col d-grid justify-content-end">
                           <button class="btn btn-outline-light" data-bs-toggle="modal"
                              data-bs-target="#detailTrafo">Detail</button>
                        </div>
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </section>
      <section id="lantai2" class="tab-panel">
         <div class="row">
            <div class="col-sm-3 mb-3">
               <div id="cardBatt" class="card text-bg-danger">
                  <div class="card-header">
                     <h4 class="card-title fw-bold">Ruang Battery</h4>
                  </div>
                  <div class="card-body">
                     <h2 class="display-2 fw-bold"><span id="tempBatt2">0</span>&deg;C</h2>
                     <p class="display-5"><span id="humBatt2">0</span>%</p>
                  </div>
                  <div class="card-footer">
                     <div class="row">
                        <div class="col">
                           <small class="text-light">Last updated <span id="dateBatt2">0</span></small>
                        </div>
                        <div class="col d-grid justify-content-end">
                           <button class="btn btn-outline-light" data-bs-toggle="modal"
                              data-bs-target="#detailBatt2">Detail</button>
                        </div>
                     </div>
                  </div>
               </div>
            </div>
            <div class="col-sm-3 mb-3">
               <div id="cardBatt" class="card text-bg-danger">
                  <div class="card-header">
                     <h4 class="card-title fw-bold">Ruang Recti</h4>
                  </div>
                  <div class="card-body">
                     <h2 class="display-2 fw-bold"><span id="tempRecti2">0</span>&deg;C</h2>
                     <p class="display-5"><span id="humRecti2">0</span>%</p>
                  </div>
                  <div class="card-footer">
                     <div class="row">
                        <div class="col">
                           <small class="text-light">Last updated <span id="dateRecti2">0</span></small>
                        </div>
                        <div class="col d-grid justify-content-end">
                           <button class="btn btn-outline-light" data-bs-toggle="modal"
                              data-bs-target="#detailRecti2">Detail</button>
                        </div>
                     </div>
                  </div>
               </div>
            </div>
            <div class="col-sm-3 mb-3">
               <div id="cardBatt" class="card text-bg-danger">
                  <div class="card-header">
                     <h4 class="card-title fw-bold">Ruang MSC</h4>
                  </div>
                  <div class="card-body">
                     <h2 class="display-2 fw-bold"><span id="tempMsc">0</span>&deg;C</h2>
                     <p class="display-5"><span id="humMsc">0</span>%</p>
                  </div>
                  <div class="card-footer">
                     <div class="row">
                        <div class="col">
                           <small class="text-light">Last updated <span id="dateMsc">0</span></small>
                        </div>
                        <div class="col d-grid justify-content-end">
                           <button class="btn btn-outline-light" data-bs-toggle="modal"
                              data-bs-target="#detailMsc">Detail</button>
                        </div>
                     </div>
                  </div>
               </div>
            </div>
            <div class="col-sm-3 mb-3">
               <div id="cardBatt" class="card text-bg-danger">
                  <div class="card-header">
                     <h4 class="card-title fw-bold">Ruang CSPS</h4>
                  </div>
                  <div class="card-body">
                     <h2 class="display-2 fw-bold"><span id="tempCsps">0</span>&deg;C</h2>
                     <p class="display-5"><span id="humCsps">0</span>%</p>
                  </div>
                  <div class="card-footer">
                     <div class="row">
                        <div class="col">
                           <small class="text-light">Last updated <span id="dateCsps">0</span></small>
                        </div>
                        <div class="col d-grid justify-content-end">
                           <button class="btn btn-outline-light" data-bs-toggle="modal"
                              data-bs-target="#detailCsps">Detail</button>
                        </div>
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </section>
      <section id="lantai3" class="tab-panel">
         <div class="row">
            <div class="col-sm-3 mb-3">
               <div id="cardBatt" class="card text-bg-danger">
                  <div class="card-header">
                     <h4 class="card-title fw-bold">Ruang Battery</h4>
                  </div>
                  <div class="card-body">
                     <h2 class="display-2 fw-bold"><span id="tempBatt3">0</span>&deg;C</h2>
                     <p class="display-5"><span id="humBatt3">0</span>%</p>
                  </div>
                  <div class="card-footer">
                     <div class="row">
                        <div class="col">
                           <small class="text-light">Last updated <span id="dateBatt3">0</span></small>
                        </div>
                        <div class="col d-grid justify-content-end">
                           <button class="btn btn-outline-light" data-bs-toggle="modal"
                              data-bs-target="#detailBatt3">Detail</button>
                        </div>
                     </div>
                  </div>
               </div>
            </div>
            <div class="col-sm-3 mb-3">
               <div id="cardBatt" class="card text-bg-danger">
                  <div class="card-header">
                     <h4 class="card-title fw-bold">Ruang Recti</h4>
                  </div>
                  <div class="card-body">
                     <h2 class="display-2 fw-bold"><span id="tempRecti3">0</span>&deg;C</h2>
                     <p class="display-5"><span id="humRecti3">0</span>%</p>
                  </div>
                  <div class="card-footer">
                     <div class="row">
                        <div class="col">
                           <small class="text-light">Last updated <span id="dateRecti3">0</span></small>
                        </div>
                        <div class="col d-grid justify-content-end">
                           <button class="btn btn-outline-light" data-bs-toggle="modal"
                              data-bs-target="#detailRecti3">Detail</button>
                        </div>
                     </div>
                  </div>
               </div>
            </div>
            <div class="col-sm-3 mb-3">
               <div id="cardBatt" class="card text-bg-danger">
                  <div class="card-header">
                     <h4 class="card-title fw-bold">Ruang I & VAS</h4>
                  </div>
                  <div class="card-body">
                     <h2 class="display-2 fw-bold"><span id="tempInvas">0</span>&deg;C</h2>
                     <p class="display-5"><span id="humInvas">0</span>%</p>
                  </div>
                  <div class="card-footer">
                     <div class="row">
                        <div class="col">
                           <small class="text-light">Last updated <span id="dateInvas">0</span></small>
                        </div>
                        <div class="col d-grid justify-content-end">
                           <button class="btn btn-outline-light" data-bs-toggle="modal"
                              data-bs-target="#detailInvas">Detail</button>
                        </div>
                     </div>
                  </div>
               </div>
            </div>
            <div class="col-sm-3 mb-3">
               <div id="cardBatt" class="card text-bg-danger">
                  <div class="card-header">
                     <h4 class="card-title fw-bold">Ruang Core</h4>
                  </div>
                  <div class="card-body">
                     <h2 class="display-2 fw-bold"><span id="tempCore">0</span>&deg;C</h2>
                     <p class="display-5"><span id="humCore">0</span>%</p>
                  </div>
                  <div class="card-footer">
                     <div class="row">
                        <div class="col">
                           <small class="text-light">Last updated <span id="dateCore">0</span></small>
                        </div>
                        <div class="col d-grid justify-content-end">
                           <button class="btn btn-outline-light" data-bs-toggle="modal"
                              data-bs-target="#detailCore">Detail</button>
                        </div>
                     </div>
                  </div>
               </div>
            </div>
            <div class="col-sm-3 mb-3">
               <div id="cardBatt" class="card text-bg-danger">
                  <div class="card-header">
                     <h4 class="card-title fw-bold">Ruang MKios</h4>
                  </div>
                  <div class="card-body">
                     <h2 class="display-2 fw-bold"><span id="tempMkios">0</span>&deg;C</h2>
                     <p class="display-5"><span id="humMkios">0</span>%</p>
                  </div>
                  <div class="card-footer">
                     <div class="row">
                        <div class="col">
                           <small class="text-light">Last updated <span id="dateMkios">0</span></small>
                        </div>
                        <div class="col d-grid justify-content-end">
                           <button class="btn btn-outline-light" data-bs-toggle="modal"
                              data-bs-target="#detailMkios">Detail</button>
                        </div>
                     </div>
                  </div>
               </div>
            </div>
            <div class="col-sm-3 mb-3">
               <div id="cardBatt" class="card text-bg-danger">
                  <div class="card-header">
                     <h4 class="card-title fw-bold">Ruang OCS</h4>
                  </div>
                  <div class="card-body">
                     <h2 class="display-2 fw-bold"><span id="tempOcs">0</span>&deg;C</h2>
                     <p class="display-5"><span id="humOcs">0</span>%</p>
                  </div>
                  <div class="card-footer">
                     <div class="row">
                        <div class="col">
                           <small class="text-light">Last updated <span id="dateOcs">0</span></small>
                        </div>
                        <div class="col d-grid justify-content-end">
                           <button class="btn btn-outline-light" data-bs-toggle="modal"
                              data-bs-target="#detailOcs">Detail</button>
                        </div>
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </section>
      <section id="lantai4" class="tab-panel">
         <div class="row">
            <div class="col-sm-3 mb-3">
               <div id="cardBatt4" class="card text-bg-danger">
                  <div class="card-header">
                     <h4 class="card-title fw-bold">Ruang Battery</h4>
                  </div>
                  <div class="card-body">
                     <h2 class="display-2 fw-bold"><span id="tempBatt4">0</span>&deg;C</h2>
                     <p class="display-5"><span id="humBatt4">0</span>%</p>
                  </div>
                  <div class="card-footer">
                     <div class="row">
                        <div class="col">
                           <small class="text-light">Last updated <span id="dateBatt4">0</span></small>
                        </div>
                        <div class="col d-grid justify-content-end">
                           <button class="btn btn-outline-light" data-bs-toggle="modal"
                              data-bs-target="#detailBatt4">Detail</button>
                        </div>
                     </div>
                  </div>
               </div>
            </div>
            <div class="col-sm-3 mb-3">
               <div id="cardRecti4" class="card text-bg-danger">
                  <div class="card-header">
                     <h4 class="card-title fw-bold">Ruang Recti</h4>
                  </div>
                  <div class="card-body">
                     <h2 class="display-2 fw-bold"><span id="tempRecti4">0</span>&deg;C</h2>
                     <p class="display-5"><span id="humRecti4">0</span>%</p>
                  </div>
                  <div class="card-footer">
                     <div class="row">
                        <div class="col">
                           <small class="text-light">Last updated <span id="dateRecti4">0</span></small>
                        </div>
                        <div class="col d-grid justify-content-end">
                           <button class="btn btn-outline-light" data-bs-toggle="modal"
                              data-bs-target="#detailRecti4">Detail</button>
                        </div>
                     </div>
                  </div>
               </div>
            </div>
            <div class="col-sm-3 mb-3">
               <div id="cardBss" class="card text-bg-danger">
                  <div class="card-header">
                     <h4 class="card-title fw-bold">Ruang BSS</h4>
                  </div>
                  <div class="card-body">
                     <h2 class="display-2 fw-bold"><span id="tempBss">0</span>&deg;C</h2>
                     <p class="display-5"><span id="humBss">0</span>%</p>
                  </div>
                  <div class="card-footer">
                     <div class="row">
                        <div class="col">
                           <small class="text-light">Last updated <span id="dateBss">0</span></small>
                        </div>
                        <div class="col d-grid justify-content-end">
                           <button class="btn btn-outline-light" data-bs-toggle="modal"
                              data-bs-target="#detailBss">Detail</button>
                        </div>
                     </div>
                  </div>
               </div>
            </div>
            <div class="col-sm-3 mb-3">
               <div id="cardInter" class="card text-bg-danger">
                  <div class="card-header">
                     <h4 class="card-title fw-bold">Ruang Interkoneksi</h4>
                  </div>
                  <div class="card-body">
                     <h2 class="display-2 fw-bold"><span id="tempInter">0</span>&deg;C</h2>
                     <p class="display-5"><span id="humInter">0</span>%</p>
                  </div>
                  <div class="card-footer">
                     <div class="row">
                        <div class="col">
                           <small class="text-light">Last updated <span id="dateInter">0</span></small>
                        </div>
                        <div class="col d-grid justify-content-end">
                           <button class="btn btn-outline-light" data-bs-toggle="modal"
                              data-bs-target="#detailInter">Detail</button>
                        </div>
                     </div>
                  </div>
               </div>
            </div>
            <div class="col-sm-3 mb-3">
               <div id="cardTrans" class="card text-bg-danger">
                  <div class="card-header">
                     <h4 class="card-title fw-bold">Ruang Transmisi</h4>
                  </div>
                  <div class="card-body">
                     <h2 class="display-2 fw-bold"><span id="tempTrans">0</span>&deg;C</h2>
                     <p class="display-5"><span id="humTrans">0</span>%</p>
                  </div>
                  <div class="card-footer">
                     <div class="row">
                        <div class="col">
                           <small class="text-light">Last updated <span id="dateTrans">0</span></small>
                        </div>
                        <div class="col d-grid justify-content-end">
                           <button class="btn btn-outline-light" data-bs-toggle="modal"
                              data-bs-target="#detailTrans">Detail</button>
                        </div>
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </section>
      <section id="lantai5" class="tab-panel">
         <div class="row">
            <div class="col-sm-3 mb-3">
               <div id="cardBatt" class="card text-bg-danger">
                  <div class="card-header">
                     <h4 class="card-title fw-bold">Utility A</h4>
                  </div>
                  <div class="card-body">
                     <h2 class="display-2 fw-bold"><span id="tempUtilA">0</span>&deg;C</h2>
                     <p class="display-5"><span id="humUtilA">0</span>%</p>
                  </div>
                  <div class="card-footer">
                     <div class="row">
                        <div class="col">
                           <small class="text-light">Last updated <span id="dateUtilA">0</span></small>
                        </div>
                        <div class="col d-grid justify-content-end">
                           <button class="btn btn-outline-light" data-bs-toggle="modal"
                              data-bs-target="#detailUtilA">Detail</button>
                        </div>
                     </div>
                  </div>
               </div>
            </div>
            <div class="col-sm-3 mb-3">
               <div id="cardBatt" class="card text-bg-danger">
                  <div class="card-header">
                     <h4 class="card-title fw-bold">Utility B</h4>
                  </div>
                  <div class="card-body">
                     <h2 class="display-2 fw-bold"><span id="tempUtilB">0</span>&deg;C</h2>
                     <p class="display-5"><span id="humUtilB">0</span>%</p>
                  </div>
                  <div class="card-footer">
                     <div class="row">
                        <div class="col">
                           <small class="text-light">Last updated <span id="dateUtilB">0</span></small>
                        </div>
                        <div class="col d-grid justify-content-end">
                           <button class="btn btn-outline-light" data-bs-toggle="modal"
                              data-bs-target="#detailUtilB">Detail</button>
                        </div>
                     </div>
                  </div>
               </div>
            </div>
            <div class="col-sm-3 mb-3">
               <div id="cardBatt" class="card text-bg-danger">
                  <div class="card-header">
                     <h4 class="card-title fw-bold">Data Center</h4>
                  </div>
                  <div class="card-body">
                     <h2 class="display-2 fw-bold"><span id="tempDC">0</span>&deg;C</h2>
                     <p class="display-5"><span id="humDC">0</span>%</p>
                  </div>
                  <div class="card-footer">
                     <div class="row">
                        <div class="col">
                           <small class="text-light">Last updated <span id="dateDC">0</span></small>
                        </div>
                        <div class="col d-grid justify-content-end">
                           <button class="btn btn-outline-light" data-bs-toggle="modal"
                              data-bs-target="#detailDC">Detail</button>
                        </div>
                     </div>
                  </div>
               </div>
            </div>
            <div class="col-sm-3 mb-3">
               <div id="cardBatt" class="card text-bg-danger">
                  <div class="card-header">
                     <h4 class="card-title fw-bold">Containment</h4>
                  </div>
                  <div class="card-body">
                     <h2 class="display-2 fw-bold"><span id="tempCont">0</span>&deg;C</h2>
                     <p class="display-5"><span id="humCont">0</span>%</p>
                  </div>
                  <div class="card-footer">
                     <div class="row">
                        <div class="col">
                           <small class="text-light">Last updated <span id="dateCont">0</span></small>
                        </div>
                        <div class="col d-grid justify-content-end">
                           <button class="btn btn-outline-light" data-bs-toggle="modal"
                              data-bs-target="#detailCont">Detail</button>
                        </div>
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </section>
   </div>
</div>

<!-- Modal Detail Lantai 1 -->

<!-- Modal Detail Lantai 2 -->

<!-- Modal Detail Lantai 3 -->

<!-- Modal Detail Lantai 4 -->
<div class="modal fade" id="detailBatt4" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1"
   aria-labelledby="detailBatt4" aria-hidden="true">
   <div class="modal-dialog modal-dialog-centered">
      <div class="modal-content">
         <div class="modal-header">
            <h5 class="modal-title" id="detailBatt4">Detail Sensor Ruang Battery</h5>
            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
         </div>
         <div class="modal-body">
            <p>Sensor 1 : <span id="sensor1Batt4"></span> &deg;C</p>
            <p>Sensor 2 : <span id="sensor2Batt4"></span> &deg;C</p>
         </div>
         <div class="modal-footer">
            <small class="text-dark">Last updated <span id="detailDateBatt4"></span></small>
         </div>
      </div>
   </div>
</div>

<div class="modal fade" id="detailRecti4" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1"
   aria-labelledby="detailRecti4" aria-hidden="true">
   <div class="modal-dialog modal-dialog-centered">
      <div class="modal-content">
         <div class="modal-header">
            <h5 class="modal-title" id="detailRecti4">Detail Sensor Ruang Recti</h5>
            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
         </div>
         <div class="modal-body">
            <p>Sensor 1 : <span id="sensor1Recti4"></span> &deg;C</p>
            <p>Sensor 2 : <span id="sensor2Recti4"></span> &deg;C</p>
            <p>Sensor 3 : <span id="sensor3Recti4"></span> &deg;C</p>
         </div>
         <div class="modal-footer">
            <small class="text-dark">Last updated <span id="detailDateRecti4"></span></small>
         </div>
      </div>
   </div>
</div>

<div class="modal fade" id="detailBss" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1"
   aria-labelledby="detailBss" aria-hidden="true">
   <div class="modal-dialog modal-dialog-centered">
      <div class="modal-content">
         <div class="modal-header">
            <h5 class="modal-title" id="detailBss">Detail Sensor Ruang BSS</h5>
            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
         </div>
         <div class="modal-body">
            <p>Sensor 1 : <span id="sensor1Bss"></span> &deg;C</p>
            <p>Sensor 2 : <span id="sensor2Bss"></span> &deg;C</p>
            <p>Sensor 3 : <span id="sensor3Bss"></span> &deg;C</p>
            <p>Sensor 4 : <span id="sensor4Bss"></span> &deg;C</p>
         </div>
         <div class="modal-footer">
            <small class="text-dark">Last updated <span id="detailDateBss"></span></small>
         </div>
      </div>
   </div>
</div>

<div class="modal fade" id="detailInter" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1"
   aria-labelledby="detailInter" aria-hidden="true">
   <div class="modal-dialog modal-dialog-centered">
      <div class="modal-content">
         <div class="modal-header">
            <h5 class="modal-title" id="detailInter">Detail Sensor Ruang Interkoneksi</h5>
            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
         </div>
         <div class="modal-body">
            <p>Sensor 1 : <span id="sensor1Inter"></span> &deg;C</p>
            <p>Sensor 2 : <span id="sensor2Inter"></span> &deg;C</p>
            <p>Sensor 3 : <span id="sensor3Inter"></span> &deg;C</p>
            <p>Sensor 4 : <span id="sensor4Inter"></span> &deg;C</p>
         </div>
         <div class="modal-footer">
            <small class="text-dark">Last updated <span id="detailDateInter"></span></small>
         </div>
      </div>
   </div>
</div>

<div class="modal fade" id="detailTrans" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1"
   aria-labelledby="detailTrans" aria-hidden="true">
   <div class="modal-dialog modal-dialog-centered">
      <div class="modal-content">
         <div class="modal-header">
            <h5 class="modal-title" id="detailTrans">Detail Sensor Ruang Transmisi</h5>
            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
         </div>
         <div class="modal-body">
            <p>Sensor 1 : <span id="sensor1Trans"></span> &deg;C</p>
            <p>Sensor 2 : <span id="sensor2Trans"></span> &deg;C</p>
            <p>Sensor 3 : <span id="sensor3Trans"></span> &deg;C</p>
            <p>Sensor 4 : <span id="sensor4Trans"></span> &deg;C</p>
            <p>Sensor 5 : <span id="sensor5Trans"></span> &deg;C</p>
            <p>Sensor 6 : <span id="sensor6Trans"></span> &deg;C</p>
         </div>
         <div class="modal-footer">
            <small class="text-dark">Last updated <span id="detailDateInter"></span></small>
         </div>
      </div>
   </div>
</div>

<!-- Modal Detail Lantai 5 -->