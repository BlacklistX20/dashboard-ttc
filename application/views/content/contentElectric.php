<div class="tabset">
  <!-- Tab 1 -->
  <input type="radio" name="tabset" id="tab1" aria-controls="utama" checked>
  <label for="tab1">Utama</label>
  <!-- Tab 2 -->
  <input type="radio" name="tabset" id="tab2" aria-controls="recti">
  <label for="tab2">Recti</label>
  <!-- Tab 3 -->
  <input type="radio" name="tabset" id="tab3" aria-controls="ups">
  <label for="tab3">UPS</label>

  <div class="tab-panels">
    <section id="utama" class="tab-panel">
      <button type="button" class="btn btn-success btnDownload mb-3 btn-lg" data-bs-toggle="modal"
        data-bs-target="#modalDownload">Download</button>
      <div class="row">
        <div class="col-lg-3">
          <div class="card">
            <div class="card-header text-center">
              <h3 class="card-title fw-bold">PUE</h3>
            </div>
            <div class="card-body text-center">
              <h2 class="display-1 fw-bold"><span id="pueRT">0</span></h2>
            </div>
          </div>
        </div>
        <div class="col-lg-9">
          <canvas id="pueElectric"></canvas>
        </div>
      </div>
      <div class="row">
        <div class="col-lg-3"></div>
        <div class="col-lg-9">
          <div class="btn-group" role="group" aria-label="Chart Control">
            <button type="button" class="btn btn-outline-danger active" id="pueHour">1 Jam</button>
            <button type="button" class="btn btn-outline-danger" id="pueDay">1 Hari</button>
            <button type="button" class="btn btn-outline-danger" id="pueWeek">1 Minggu</button>
          </div>
        </div>
      </div>
      <div class="row">
        <div class="col-lg-3 mb-3">
          <div class="card">
            <div class="card-header">
              <h3 class="card-title fw-bold">LVMDP</h3>
            </div>
            <div class="card-body">
              <table style="width: 100%;">
                <colgroup>
                  <col style="width: 45%;">
                  <col style="width: 10%;">
                  <col style="width: 45%;">
                </colgroup>
                <tbody>
                  <tr>
                    <td style="padding-bottom: 10px; font-size: large;">Load</td>
                    <td style="padding-bottom: 10px; font-size: large;">:</td>
                    <td style="padding-bottom: 10px; font-size: large;">
                      <span id="loadLvmdp">0</span> kVA
                    </td>
                  </tr>
                  <tr>
                    <td style="padding-bottom: 10px; font-size: large;">Voltage</td>
                    <td style="padding-bottom: 10px; font-size: large;">:</td>
                    <td style="padding-bottom: 10px; font-size: large;">
                      <span id="voltageLvmdp">0</span> V
                    </td>
                  </tr>
                  <tr>
                    <td style="padding-bottom: 10px; font-size: large;">Current</td>
                    <td style="padding-bottom: 10px; font-size: large;">:</td>
                    <td style="padding-bottom: 10px; font-size: large;">
                      <span id="currentLvmdp">0</span> A
                    </td>
                  </tr>
                  <tr>
                    <td style="padding-bottom: 10px; font-size: large;">Frequency</td>
                    <td style="padding-bottom: 10px; font-size: large;">:</td>
                    <td style="padding-bottom: 10px; font-size: large;"><span id="frequencyLvmdp">0</span> Hz</td>
                  </tr>
                </tbody>
              </table>
            </div>
          </div>
        </div>
        <div class="col-lg-9">
          <canvas id="lvmdpElectric"></canvas>
        </div>
      </div>
      <div class="row">
        <div class="col-lg-3"></div>
        <div class="col-lg-9">
          <div class="btn-group" role="group" aria-label="Chart Control">
            <button type="button" class="btn btn-outline-danger active" id="lvmdpHour">1 Jam</button>
            <button type="button" class="btn btn-outline-danger" id="lvmdpDay">1 Hari</button>
            <button type="button" class="btn btn-outline-danger" id="lvmdpWeek">1 Minggu</button>
          </div>
        </div>
      </div>
      <div class="row">
        <div class="col-lg-3 mb-3">
          <div class="card">
            <div class="card-header">
              <h3 class="card-title fw-bold">IT (Recti + UPS)</h3>
            </div>
            <div class="card-body">
              <table style="width: 100%;">
                <colgroup>
                  <col style="width: 45%;">
                  <col style="width: 10%;">
                  <col style="width: 45%;">
                </colgroup>
                <tbody>
                  <tr>
                    <td style="padding-bottom: 10px; font-size: large;">Load</td>
                    <td style="padding-bottom: 10px; font-size: large;">:</td>
                    <td style="padding-bottom: 10px; font-size: large;">
                      <span id="loadIt">0</span> kVA
                    </td>
                  </tr>
                  <tr>
                    <td style="padding-bottom: 10px; font-size: large;">Voltage</td>
                    <td style="padding-bottom: 10px; font-size: large;">:</td>
                    <td style="padding-bottom: 10px; font-size: large;">
                      <span id="voltageIt">0</span> V
                    </td>
                  </tr>
                  <tr>
                    <td style="padding-bottom: 10px; font-size: large;">Current</td>
                    <td style="padding-bottom: 10px; font-size: large;">:</td>
                    <td style="padding-bottom: 10px; font-size: large;">
                      <span id="currentIt">0</span> A
                    </td>
                  </tr>
                  <tr>
                    <td style="padding-bottom: 10px; font-size: large;">Frequency</td>
                    <td style="padding-bottom: 10px; font-size: large;">:</td>
                    <td style="padding-bottom: 10px; font-size: large;"><span id="frequencyIt">0</span> Hz</td>
                  </tr>
                </tbody>
              </table>
            </div>
          </div>
        </div>
        <div class="col-lg-9">
          <canvas id="itElectric"></canvas>
        </div>
      </div>
      <div class="row">
        <div class="col-lg-3"></div>
        <div class="col-lg-9">
          <div class="btn-group" role="group" aria-label="Chart Control">
            <button type="button" class="btn btn-outline-danger active" id="itHour">1 Jam</button>
            <button type="button" class="btn btn-outline-danger" id="itDay">1 Hari</button>
            <button type="button" class="btn btn-outline-danger" id="itWeek">1 Minggu</button>
          </div>
        </div>
      </div>
    </section>
    <section id="recti" class="tab-panel">
      <div class="row mb-2">
        <div class="col-lg-3 mb-3">
          <div class="card">
            <div class="card-header">
              <h3 class="card-title fw-bold">Rectifier</h3>
            </div>
            <div class="card-body">
              <table style="width: 100%;">
                <colgroup>
                  <col style="width: 45%;">
                  <col style="width: 10%;">
                  <col style="width: 45%;">
                </colgroup>
                <tbody>
                  <tr>
                    <td style="padding-bottom: 10px; font-size: large;">Load</td>
                    <td style="padding-bottom: 10px; font-size: large;">:</td>
                    <td style="padding-bottom: 10px; font-size: large;">
                      <span id="loadRecti">0</span> kVA
                    </td>
                  </tr>
                  <tr>
                    <td style="padding-bottom: 10px; font-size: large;">Voltage</td>
                    <td style="padding-bottom: 10px; font-size: large;">:</td>
                    <td style="padding-bottom: 10px; font-size: large;">
                      <span id="voltageRecti">0</span> V
                    </td>
                  </tr>
                  <tr>
                    <td style="padding-bottom: 10px; font-size: large;">Current</td>
                    <td style="padding-bottom: 10px; font-size: large;">:</td>
                    <td style="padding-bottom: 10px; font-size: large;">
                      <span id="currentRecti">0</span> A
                    </td>
                  </tr>
                  <tr>
                    <td style="padding-bottom: 10px; font-size: large;">Frequency</td>
                    <td style="padding-bottom: 10px; font-size: large;">:</td>
                    <td style="padding-bottom: 10px; font-size: large;"><span id="frequencyRecti">0</span> Hz</td>
                  </tr>
                </tbody>
              </table>
            </div>
          </div>
        </div>
        <div class="col-lg-9">
          <canvas id="rectiElectric"></canvas>
        </div>
      </div>
      <div class="row">
        <div class="col-lg-3 mb-3">
          <div class="card">
            <div class="card-header">
              <h3 class="card-title fw-bold">Panel 2.05</h3>
            </div>
            <div class="card-body">
              <table style="width: 100%;">
                <colgroup>
                  <col style="width: 45%;">
                  <col style="width: 10%;">
                  <col style="width: 45%;">
                </colgroup>
                <tbody>
                  <tr>
                    <td style="padding-bottom: 10px; font-size: large;">Load</td>
                    <td style="padding-bottom: 10px; font-size: large;">:</td>
                    <td style="padding-bottom: 10px; font-size: large;">
                      <span id="load205">0</span> kVA
                    </td>
                  </tr>
                  <tr>
                    <td style="padding-bottom: 10px; font-size: large;">Voltage</td>
                    <td style="padding-bottom: 10px; font-size: large;">:</td>
                    <td style="padding-bottom: 10px; font-size: large;">
                      <span id="voltage205">0</span> V
                    </td>
                  </tr>
                  <tr>
                    <td style="padding-bottom: 10px; font-size: large;">Current</td>
                    <td style="padding-bottom: 10px; font-size: large;">:</td>
                    <td style="padding-bottom: 10px; font-size: large;">
                      <span id="current205">0</span> A
                    </td>
                  </tr>
                  <tr>
                    <td style="padding-bottom: 10px; font-size: large;">Frequency</td>
                    <td style="padding-bottom: 10px; font-size: large;">:</td>
                    <td style="padding-bottom: 10px; font-size: large;"><span id="frequency205">0</span> Hz</td>
                  </tr>
                </tbody>
              </table>
            </div>
          </div>
        </div>
        <div class="col-lg-9">
          <canvas id="panelRecti"></canvas>
        </div>
        <div class="col-lg-3 mb-3">
          <div class="card">
            <div class="card-header">
              <h3 class="card-title fw-bold">Panel 2.36</h3>
            </div>
            <div class="card-body">
              <table style="width: 100%;">
                <colgroup>
                  <col style="width: 45%;">
                  <col style="width: 10%;">
                  <col style="width: 45%;">
                </colgroup>
                <tbody>
                  <tr>
                    <td style="padding-bottom: 10px; font-size: large;">Load</td>
                    <td style="padding-bottom: 10px; font-size: large;">:</td>
                    <td style="padding-bottom: 10px; font-size: large;">
                      <span id="load236">0</span> kVA
                    </td>
                  </tr>
                  <tr>
                    <td style="padding-bottom: 10px; font-size: large;">Voltage</td>
                    <td style="padding-bottom: 10px; font-size: large;">:</td>
                    <td style="padding-bottom: 10px; font-size: large;">
                      <span id="voltage236">0</span> V
                    </td>
                  </tr>
                  <tr>
                    <td style="padding-bottom: 10px; font-size: large;">Current</td>
                    <td style="padding-bottom: 10px; font-size: large;">:</td>
                    <td style="padding-bottom: 10px; font-size: large;">
                      <span id="current236">0</span> A
                    </td>
                  </tr>
                  <tr>
                    <td style="padding-bottom: 10px; font-size: large;">Frequency</td>
                    <td style="padding-bottom: 10px; font-size: large;">:</td>
                    <td style="padding-bottom: 10px; font-size: large;"><span id="frequency236">0</span> Hz</td>
                  </tr>
                </tbody>
              </table>
            </div>
          </div>
        </div>
        <div class="col-lg-3 mb-3">
          <div class="card">
            <div class="card-header">
              <h3 class="card-title fw-bold">Panel 3.05</h3>
            </div>
            <div class="card-body">
              <table style="width: 100%;">
                <colgroup>
                  <col style="width: 45%;">
                  <col style="width: 10%;">
                  <col style="width: 45%;">
                </colgroup>
                <tbody>
                  <tr>
                    <td style="padding-bottom: 10px; font-size: large;">Load</td>
                    <td style="padding-bottom: 10px; font-size: large;">:</td>
                    <td style="padding-bottom: 10px; font-size: large;">
                      <span id="load305">0</span> kVA
                    </td>
                  </tr>
                  <tr>
                    <td style="padding-bottom: 10px; font-size: large;">Voltage</td>
                    <td style="padding-bottom: 10px; font-size: large;">:</td>
                    <td style="padding-bottom: 10px; font-size: large;">
                      <span id="voltage305">0</span> V
                    </td>
                  </tr>
                  <tr>
                    <td style="padding-bottom: 10px; font-size: large;">Current</td>
                    <td style="padding-bottom: 10px; font-size: large;">:</td>
                    <td style="padding-bottom: 10px; font-size: large;">
                      <span id="current305">0</span> A
                    </td>
                  </tr>
                  <tr>
                    <td style="padding-bottom: 10px; font-size: large;">Frequency</td>
                    <td style="padding-bottom: 10px; font-size: large;">:</td>
                    <td style="padding-bottom: 10px; font-size: large;"><span id="frequency305">0</span> Hz</td>
                  </tr>
                </tbody>
              </table>
            </div>
          </div>
        </div>
        <div class="col-lg-3 mb-3">
          <div class="card">
            <div class="card-header">
              <h3 class="card-title fw-bold">Panel 3.10</h3>
            </div>
            <div class="card-body">
              <table style="width: 100%;">
                <colgroup>
                  <col style="width: 45%;">
                  <col style="width: 10%;">
                  <col style="width: 45%;">
                </colgroup>
                <tbody>
                  <tr>
                    <td style="padding-bottom: 10px; font-size: large;">Load</td>
                    <td style="padding-bottom: 10px; font-size: large;">:</td>
                    <td style="padding-bottom: 10px; font-size: large;">
                      <span id="load310">0</span> kVA
                    </td>
                  </tr>
                  <tr>
                    <td style="padding-bottom: 10px; font-size: large;">Voltage</td>
                    <td style="padding-bottom: 10px; font-size: large;">:</td>
                    <td style="padding-bottom: 10px; font-size: large;">
                      <span id="voltage310">0</span> V
                    </td>
                  </tr>
                  <tr>
                    <td style="padding-bottom: 10px; font-size: large;">Current</td>
                    <td style="padding-bottom: 10px; font-size: large;">:</td>
                    <td style="padding-bottom: 10px; font-size: large;">
                      <span id="current310">0</span> A
                    </td>
                  </tr>
                  <tr>
                    <td style="padding-bottom: 10px; font-size: large;">Frequency</td>
                    <td style="padding-bottom: 10px; font-size: large;">:</td>
                    <td style="padding-bottom: 10px; font-size: large;"><span id="frequency310">0</span> Hz</td>
                  </tr>
                </tbody>
              </table>
            </div>
          </div>
        </div>
        <div class="col-lg-3 mb-3">
          <div class="card">
            <div class="card-header">
              <h3 class="card-title fw-bold">Panel 4.29</h3>
            </div>
            <div class="card-body">
              <table style="width: 100%;">
                <colgroup>
                  <col style="width: 45%;">
                  <col style="width: 10%;">
                  <col style="width: 45%;">
                </colgroup>
                <tbody>
                  <tr>
                    <td style="padding-bottom: 10px; font-size: large;">Load</td>
                    <td style="padding-bottom: 10px; font-size: large;">:</td>
                    <td style="padding-bottom: 10px; font-size: large;">
                      <span id="load429">0</span> kVA
                    </td>
                  </tr>
                  <tr>
                    <td style="padding-bottom: 10px; font-size: large;">Voltage</td>
                    <td style="padding-bottom: 10px; font-size: large;">:</td>
                    <td style="padding-bottom: 10px; font-size: large;">
                      <span id="voltage429">0</span> V
                    </td>
                  </tr>
                  <tr>
                    <td style="padding-bottom: 10px; font-size: large;">Current</td>
                    <td style="padding-bottom: 10px; font-size: large;">:</td>
                    <td style="padding-bottom: 10px; font-size: large;">
                      <span id="current429">0</span> A
                    </td>
                  </tr>
                  <tr>
                    <td style="padding-bottom: 10px; font-size: large;">Frequency</td>
                    <td style="padding-bottom: 10px; font-size: large;">:</td>
                    <td style="padding-bottom: 10px; font-size: large;"><span id="frequency429">0</span> Hz</td>
                  </tr>
                </tbody>
              </table>
            </div>
          </div>
        </div>
      </div>
    </section>
    <section id="ups" class="tab-panel">
      <div class="row mb-2">
        <div class="col-lg-3 mb-3">
          <div class="card">
            <div class="card-header">
              <h3 class="card-title fw-bold">UPS</h3>
            </div>
            <div class="card-body">
              <table style="width: 100%;">
                <colgroup>
                  <col style="width: 45%;">
                  <col style="width: 10%;">
                  <col style="width: 45%;">
                </colgroup>
                <tbody>
                  <tr>
                    <td style="padding-bottom: 10px; font-size: large;">Load</td>
                    <td style="padding-bottom: 10px; font-size: large;">:</td>
                    <td style="padding-bottom: 10px; font-size: large;">
                      <span id="loadUps">0</span> kVA
                    </td>
                  </tr>
                  <tr>
                    <td style="padding-bottom: 10px; font-size: large;">Voltage</td>
                    <td style="padding-bottom: 10px; font-size: large;">:</td>
                    <td style="padding-bottom: 10px; font-size: large;">
                      <span id="voltageUps">0</span> V
                    </td>
                  </tr>
                  <tr>
                    <td style="padding-bottom: 10px; font-size: large;">Current</td>
                    <td style="padding-bottom: 10px; font-size: large;">:</td>
                    <td style="padding-bottom: 10px; font-size: large;">
                      <span id="currentUps">0</span> A
                    </td>
                  </tr>
                  <tr>
                    <td style="padding-bottom: 10px; font-size: large;">Frequency</td>
                    <td style="padding-bottom: 10px; font-size: large;">:</td>
                    <td style="padding-bottom: 10px; font-size: large;"><span id="frequencyUps">0</span> Hz</td>
                  </tr>
                </tbody>
              </table>
            </div>
          </div>
        </div>
        <div class="col-lg-9">
          <canvas id="upsElectric"></canvas>
        </div>
      </div>
      <div class="row">
        <div class="col-lg-3 mb-3">
          <div class="card">
            <div class="card-header">
              <h3 class="card-title fw-bold">UPS 2.02</h3>
            </div>
            <div class="card-body">
              <table style="width: 100%;">
                <colgroup>
                  <col style="width: 45%;">
                  <col style="width: 10%;">
                  <col style="width: 45%;">
                </colgroup>
                <tbody>
                  <tr>
                    <td style="padding-bottom: 10px; font-size: large;">Load</td>
                    <td style="padding-bottom: 10px; font-size: large;">:</td>
                    <td style="padding-bottom: 10px; font-size: large;">
                      <span id="load202">0</span> kVA
                    </td>
                  </tr>
                  <tr>
                    <td style="padding-bottom: 10px; font-size: large;">Voltage</td>
                    <td style="padding-bottom: 10px; font-size: large;">:</td>
                    <td style="padding-bottom: 10px; font-size: large;">
                      <span id="voltage202">0</span> V
                    </td>
                  </tr>
                  <tr>
                    <td style="padding-bottom: 10px; font-size: large;">Current</td>
                    <td style="padding-bottom: 10px; font-size: large;">:</td>
                    <td style="padding-bottom: 10px; font-size: large;">
                      <span id="current202">0</span> A
                    </td>
                  </tr>
                  <tr>
                    <td style="padding-bottom: 10px; font-size: large;">Frequency</td>
                    <td style="padding-bottom: 10px; font-size: large;">:</td>
                    <td style="padding-bottom: 10px; font-size: large;">
                      <span id="frequency202">0</span> Hz
                    </td>
                  </tr>
                </tbody>
              </table>
            </div>
          </div>
        </div>
        <div class="col-lg-9">
          <canvas id="panelUps"></canvas>
        </div>
        <div class="col-lg-3 mb-3">
          <div class="card">
            <div class="card-header">
              <h3 class="card-title fw-bold">UPS 2.03</h3>
            </div>
            <div class="card-body">
              <table style="width: 100%;">
                <colgroup>
                  <col style="width: 45%;">
                  <col style="width: 10%;">
                  <col style="width: 45%;">
                </colgroup>
                <tbody>
                  <tr>
                    <td style="padding-bottom: 10px; font-size: large;">Load</td>
                    <td style="padding-bottom: 10px; font-size: large;">:</td>
                    <td style="padding-bottom: 10px; font-size: large;">
                      <span id="load203">0</span> kVA
                    </td>
                  </tr>
                  <tr>
                    <td style="padding-bottom: 10px; font-size: large;">Voltage</td>
                    <td style="padding-bottom: 10px; font-size: large;">:</td>
                    <td style="padding-bottom: 10px; font-size: large;">
                      <span id="voltage203">0</span> V
                    </td>
                  </tr>
                  <tr>
                    <td style="padding-bottom: 10px; font-size: large;">Current</td>
                    <td style="padding-bottom: 10px; font-size: large;">:</td>
                    <td style="padding-bottom: 10px; font-size: large;">
                      <span id="current203">0</span> A
                    </td>
                  </tr>
                  <tr>
                    <td style="padding-bottom: 10px; font-size: large;">Frequency</td>
                    <td style="padding-bottom: 10px; font-size: large;">:</td>
                    <td style="padding-bottom: 10px; font-size: large;">
                      <span id="frequency203">0</span> Hz
                    </td>
                  </tr>
                </tbody>
              </table>
            </div>
          </div>
        </div>
        <div class="col-lg-3 mb-3">
          <div class="card">
            <div class="card-header">
              <h3 class="card-title fw-bold">UPS 3.01</h3>
            </div>
            <div class="card-body">
              <table style="width: 100%;">
                <colgroup>
                  <col style="width: 45%;">
                  <col style="width: 10%;">
                  <col style="width: 45%;">
                </colgroup>
                <tbody>
                  <tr>
                    <td style="padding-bottom: 10px; font-size: large;">Load</td>
                    <td style="padding-bottom: 10px; font-size: large;">:</td>
                    <td style="padding-bottom: 10px; font-size: large;">
                      <span id="load301">0</span> kVA
                    </td>
                  </tr>
                  <tr>
                    <td style="padding-bottom: 10px; font-size: large;">Voltage</td>
                    <td style="padding-bottom: 10px; font-size: large;">:</td>
                    <td style="padding-bottom: 10px; font-size: large;">
                      <span id="voltage301">0</span> V
                    </td>
                  </tr>
                  <tr>
                    <td style="padding-bottom: 10px; font-size: large;">Current</td>
                    <td style="padding-bottom: 10px; font-size: large;">:</td>
                    <td style="padding-bottom: 10px; font-size: large;">
                      <span id="current301">0</span> A
                    </td>
                  </tr>
                  <tr>
                    <td style="padding-bottom: 10px; font-size: large;">Frequency</td>
                    <td style="padding-bottom: 10px; font-size: large;">:</td>
                    <td style="padding-bottom: 10px; font-size: large;">
                      <span id="frequency301">0</span> Hz
                    </td>
                  </tr>
                </tbody>
              </table>
            </div>
          </div>
        </div>
        <div class="col-lg-3 mb-3">
          <div class="card">
            <div class="card-header">
              <h3 class="card-title fw-bold">UPS 3.02</h3>
            </div>
            <div class="card-body">
              <table style="width: 100%;">
                <colgroup>
                  <col style="width: 45%;">
                  <col style="width: 10%;">
                  <col style="width: 45%;">
                </colgroup>
                <tbody>
                  <tr>
                    <td style="padding-bottom: 10px; font-size: large;">Load</td>
                    <td style="padding-bottom: 10px; font-size: large;">:</td>
                    <td style="padding-bottom: 10px; font-size: large;">
                      <span id="load302">0</span> kVA
                    </td>
                  </tr>
                  <tr>
                    <td style="padding-bottom: 10px; font-size: large;">Voltage</td>
                    <td style="padding-bottom: 10px; font-size: large;">:</td>
                    <td style="padding-bottom: 10px; font-size: large;">
                      <span id="voltage302">0</span> V
                    </td>
                  </tr>
                  <tr>
                    <td style="padding-bottom: 10px; font-size: large;">Current</td>
                    <td style="padding-bottom: 10px; font-size: large;">:</td>
                    <td style="padding-bottom: 10px; font-size: large;">
                      <span id="current302">0</span> A
                    </td>
                  </tr>
                  <tr>
                    <td style="padding-bottom: 10px; font-size: large;">Frequency</td>
                    <td style="padding-bottom: 10px; font-size: large;">:</td>
                    <td style="padding-bottom: 10px; font-size: large;">
                      <span id="frequency302">0</span> Hz
                    </td>
                  </tr>
                </tbody>
              </table>
            </div>
          </div>
        </div>
        <div class="col-lg-3 mb-3">
          <div class="card">
            <div class="card-header">
              <h3 class="card-title fw-bold">UPS 5A</h3>
            </div>
            <div class="card-body">
              <table style="width: 100%;">
                <colgroup>
                  <col style="width: 45%;">
                  <col style="width: 10%;">
                  <col style="width: 45%;">
                </colgroup>
                <tbody>
                  <tr>
                    <td style="padding-bottom: 10px; font-size: large;">Load</td>
                    <td style="padding-bottom: 10px; font-size: large;">:</td>
                    <td style="padding-bottom: 10px; font-size: large;">
                      <span id="load501">0</span> kVA
                    </td>
                  </tr>
                  <tr>
                    <td style="padding-bottom: 10px; font-size: large;">Voltage</td>
                    <td style="padding-bottom: 10px; font-size: large;">:</td>
                    <td style="padding-bottom: 10px; font-size: large;">
                      <span id="voltage501">0</span> V
                    </td>
                  </tr>
                  <tr>
                    <td style="padding-bottom: 10px; font-size: large;">Current</td>
                    <td style="padding-bottom: 10px; font-size: large;">:</td>
                    <td style="padding-bottom: 10px; font-size: large;">
                      <span id="current501">0</span> A
                    </td>
                  </tr>
                  <tr>
                    <td style="padding-bottom: 10px; font-size: large;">Frequency</td>
                    <td style="padding-bottom: 10px; font-size: large;">:</td>
                    <td style="padding-bottom: 10px; font-size: large;">
                      <span id="frequency501">0</span> Hz
                    </td>
                  </tr>
                </tbody>
              </table>
            </div>
          </div>
        </div>
        <div class="col-lg-3 mb-3">
          <div class="card">
            <div class="card-header">
              <h3 class="card-title fw-bold">UPS 5B</h3>
            </div>
            <div class="card-body">
              <table style="width: 100%;">
                <colgroup>
                  <col style="width: 45%;">
                  <col style="width: 10%;">
                  <col style="width: 45%;">
                </colgroup>
                <tbody>
                  <tr>
                    <td style="padding-bottom: 10px; font-size: large;">Load</td>
                    <td style="padding-bottom: 10px; font-size: large;">:</td>
                    <td style="padding-bottom: 10px; font-size: large;">
                      <span id="load502">0</span> kVA
                    </td>
                  </tr>
                  <tr>
                    <td style="padding-bottom: 10px; font-size: large;">Voltage</td>
                    <td style="padding-bottom: 10px; font-size: large;">:</td>
                    <td style="padding-bottom: 10px; font-size: large;">
                      <span id="voltage502">0</span> V
                    </td>
                  </tr>
                  <tr>
                    <td style="padding-bottom: 10px; font-size: large;">Current</td>
                    <td style="padding-bottom: 10px; font-size: large;">:</td>
                    <td style="padding-bottom: 10px; font-size: large;">
                      <span id="current502">0</span> A
                    </td>
                  </tr>
                  <tr>
                    <td style="padding-bottom: 10px; font-size: large;">Frequency</td>
                    <td style="padding-bottom: 10px; font-size: large;">:</td>
                    <td style="padding-bottom: 10px; font-size: large;">
                      <span id="frequency502">0</span> Hz
                    </td>
                  </tr>
                </tbody>
              </table>
            </div>
          </div>
        </div>
      </div>
    </section>
  </div>

  <div class="modal fade" id="modalDownload" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1"
    aria-labelledby="deleteLabel" aria-hidden="true">
    <div class="modal-dialog">
      <div class="modal-content">
        <form action="<?= base_url() ?>getdata/export_excel" method="post" class="needs-validation" novalidate>
          <div class="modal-header">
            <h5 class="modal-title">Download Data</h5>
          </div>
          <div class="modal-body">
            <select class="form-select" id="validationCustom01" name="table" required>
              <option selected disabled value="">Pilih Tabel</option>
              <option value="pue">PUE</option>
              <option value="lvmdp">LVMDP</option>
              <option value="it">IT</option>
              <option value="recti">Rectifier</option>
              <option value="ups">UPS</option>
            </select>
            <div class="row">
              <div class="col">
                <label for="validationCustom02" class="form-label">Enter Start Date:</label>
                <input type="date" id="validationCustom02" name="datemin" min="2024-07-09" class="form-control"
                  required>
              </div>
              <div class="col">
                <label for="validationCustom03" class="form-label">Enter End Date:</label>
                <input type="date" id="validationCustom03" name="datemax" class="form-control" required>
              </div>
            </div>
          </div>
          <div class="modal-footer">
            <input class="btn btn-success" type="submit" value="Download">
            <button type="button" class="btn btn-success" data-bs-dismiss="modal">Kembali</button>
          </div>
        </form>
      </div>
    </div>
  </div>

</div>