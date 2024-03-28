<?php
defined('BASEPATH') or exit('No direct script access allowed');

/**
 *  @property TabelModel $TabelModel 
 */

class GetData extends CI_Controller
{

   public function __construct()
   {
      parent::__construct();

      $this->load->model('TabelModel');
   }

   public function lt4()
   {
      $data['batt4'] = $this->TabelModel->getDataSuhu('battery4');
      $data['recti4'] = $this->TabelModel->getDataSuhu('recti4');
      $data['bss'] = $this->TabelModel->getDataSuhu('bss');
      $data['inter'] = $this->TabelModel->getDataSuhu('inter');
      // $data['trans'] = $this->TabelModel->getDataSuhu('trans');

      function sum(...$numbers)
      {
         $sum = 0;
         foreach ($numbers as $n) {
            $sum += $n;
         }
         $avg = $sum / count($numbers);
         return (float)$avg;
      }

      $batt4Suhu = sum($data['batt4']['s1'], $data['batt4']['s2']);
      $batt4Kelem = sum($data['batt4']['k1'], $data['batt4']['k2']);
      $data['batt4T'] = ["st" => $batt4Suhu, "kt" => $batt4Kelem];

      $recti4Suhu = sum($data['recti4']['s1'], $data['recti4']['s2'], $data['recti4']['s3']);
      $recti4Kelem = sum($data['recti4']['k1'], $data['recti4']['k2'], $data['recti4']['k3']);
      $data['recti4T'] = ["st" => $recti4Suhu, "kt" => $recti4Kelem];

      $bssSuhu = sum($data['bss']['s1'], $data['bss']['s2'], $data['bss']['s3'], $data['bss']['s4']);
      $bssKelem = sum($data['bss']['k1'], $data['bss']['k2'], $data['bss']['k3'], $data['bss']['k4']);
      $data['bssT'] = ["st" => $bssSuhu, "kt" => $bssKelem];

      $interSuhu = sum($data['inter']['s1'], $data['inter']['s2'], $data['inter']['s3'], $data['inter']['s4']);
      $interKelem = sum($data['inter']['k1'], $data['inter']['k2'], $data['inter']['k3'], $data['inter']['k4']);
      $data['interT'] = ["st" => $interSuhu, "kt" => $interKelem];

      // $transSuhu = sum($data['trans']['s1'], $data['trans']['s2'], $data['trans']['s3'], $data['trans']['s4'], $data['trans']['s5'], $data['trans']['s6']);
      // $transKelem = sum($data['trans']['k1'], $data['trans']['k2'], $data['trans']['k3'], $data['trans']['k4'], $data['trans']['k5'], $data['trans']['k6']);
      // $data['transT'] = ["st" => $transSuhu, "kt" => $transKelem];

      echo json_encode($data);
   }

   public function tangki()
   {
      $data = $this->TabelModel->getDataFuel('tangki1');

      echo json_encode($data);
   }
}
