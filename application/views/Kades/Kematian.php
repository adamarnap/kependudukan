
<!-- Light table -->

            <!-- Card header -->
            <div class="card-header border-3">
              <center>
                <h1 class="mb-0 text-blue" style = "text-shadow: 3px 2px 5px grey;" ><b>LAPORAN DATA KEMATIAN</b></h1>
              </center>
              <center><a href="<?php echo site_url('Kades/Cetak_Laporan_Kematian');?>" class="btn btn-neutral btn-icon" >
                <span class="btn-inner--icon"><img src="<?php echo base_url();?>/assets/img/icons/common/kritik.svg"></span>
                <span class="btn-inner--text">Cetak Laporan Data Kematian</span></a>
              </center>
            </div>


   <!-- tabel --> 
<div class="table-responsive">
  <table class="table align-items-center table-flush">
    <thead class="thead-light">
      <tr>
        <th scope="col" class="sort" data-sort="">No</th>
        
        <th scope="col" class="sort" data-sort="nama">NIK</th>
        <th scope="col" class="sort" data-sort="tempat_lahir">Tempat Wafat</th>
        <th scope="col" class="sort" data-sort="tanggal_lahir">Tanggal Wafat</th>
        <th scope="col" class="sort" data-sort="gender">Usia</th>
        <th scope="col" class="sort" data-sort="nama_ayah">Sebab</th>
        <th scope="col" class="sort" data-sort="nama_ibu">Makam</th>

      </tr>
    </thead>

    <?php  $no =1; foreach($kematian as $wafat) : ?>
        
        <tbody> 
        <tr>
          <th><?php echo $no++; ?></th>

          <th><?php echo $wafat->NIK ?></th>
          <th><?php echo $wafat->tempat_meninggal ?></th>
          <th><?php echo $wafat->tanggal_meninggal ?></th>
          <th><?php echo $wafat->usia ?></th>
          <th><?php echo $wafat->sebab ?></th>
          <th><?php echo $wafat->makam ?></th>

  
         </tr>
        </tbody>
  
        
        <?php endforeach; ?>
        


  </table>
</div>


<!-- Card footer -->
<div class="card-footer py-4">
              <nav aria-label="...">
                <ul class="pagination justify-content-end mb-0">
                  <li class="page-item disabled">
                    <a class="page-link" href="#" tabindex="-1">
                      <i class="fas fa-angle-left"></i>
                      <span class="sr-only">Previous</span>
                    </a>
                  </li>
                  <li class="page-item active">
                    <a class="page-link" href="#">1</a>
                  </li>
                  <li class="page-item">
                    <a class="page-link" href="#">2 <span class="sr-only">(current)</span></a>
                  </li>
                  <li class="page-item"><a class="page-link" href="#">3</a></li>
                  <li class="page-item">
                    <a class="page-link" href="#">
                      <i class="fas fa-angle-right"></i>
                      <span class="sr-only">Next</span>
                    </a>
                  </li>
                </ul>
              </nav>
            </div>
          </div>
        </div>
      </div>
