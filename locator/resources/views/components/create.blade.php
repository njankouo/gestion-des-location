<div class="modal fade" id="myModal" role="dialog">
    <div class="modal-dialog modal-sm">
      <div class="modal-content" style="width:190%; padding-left: 0%;" >
        <div class="row">
     
  <div class="col-md-12">
            
            <div class="card card-primary">
              <div class="card-header" >
                <h3 class="card-title"><i class="fas fa-user-plus fa-2x"></i>formulaire creation nouvelle utilisateur</h3>
               <i class="fas fa-angle-double-right" style="float:right; cursor: pointer;"data-dismiss="modal"></i>
              </div>
              <!-- /.card-header -->
              <!-- form start -->
              <form role="form" wire:submit.prevent="addUser()">
                <div class="card-body">
                  <div class="row">
                    <div class="col-md-6">
                        <div class="form-group">
                    <label>nom</label>
        <input type="text" class="form-control" wire:model="mewUser.nom" >
                  </div>
                    </div>
                     <div class="col-md-6">
                        <div class="form-group">
                    <label>prenom</label>
                    <input type="text" class="form-control " wire:model="newUser.prenom" >
                  </div>
                    </div>

                  </div>
                
                   <div class="form-group">
                    <label>sexe</label>
                    <select class="form-control" wire:model="newUser.sexe" >
                      <option>--------</option>
                      <option value="H">Homme</option>
                      <option value="F">Femme</option>
                    </select>
                      </div>


                   <div class="form-group">
                    <label>adresse e-mail</label>
                    <input type="email" class="form-control" wire:model="newUser.email">
                  </div>

                    <div class="row">
                    <div class="col-md-6">
                        <div class="form-group">
                    <label>telephone 1</label>
                    <input type="text" class="form-control" wire:model="newUser.telephone1">
                  </div>
                    </div>
                     <div class="col-md-6">
                        <div class="form-group">
                    <label>telephone 2</label>
                    <input type="text" class="form-control" wire:model="newUser.telephone2">
                  </div>
                    </div>

                  </div>
                
                     <div class="form-group">
                    <label>piece d'identite</label>
                    <select class="form-control" wire:model="mewUser.pieceidentite">
                      <option>--------</option>
                      <option value="CNI">CNI</option>
                      <option value="Password">PASSPORT</option>
                      <option value="PERMIS DE CONDUIRE">PERMIS DE CONDUIRE</option>
                    </select>
                      </div>
                           <div class="form-group">
                    <label>NUMERO DE PIECE D'iDENTITE</label>
                    <input type="text" class="form-control" wire:model="mewUser.numeropieceidentite">
                  </div>
                  <div class="form-group">
                    <label for="exampleInputPassword1">MOT DE PASSE</label>
                    <input type="password" class="form-control" id="exampleInputPassword1" placeholder="Password" disabled="" wire:model="mewUser.password">
                  </div>
                 
                 
                </div>
                <!-- /.card-body -->
              <div class="card-footer">
                 <button type="submit" class="btn btn-primary" style="float:right;">ENREGISTRER</button>
              
   
                  </div>
              </form>
            </div>
           
            </div>
         

          </div>
</div>
</div>
</div>
</div>
</div>


