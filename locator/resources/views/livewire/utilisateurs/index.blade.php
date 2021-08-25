
<div>
 @if($isBtnAddClicked)
  
<div class="row p-3 pt-3">

  <div class="col-md-6">
            
            <div class="card card-primary">
              <div class="card-header">
                <h3 class="card-title"><i class="fas fa-user-plus fa-2x"></i>formulaire creation nouvelle utilisateur</h3>
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
                  <button type="submit" class="btn btn-primary">ENREGISTRER</button>
                   <a class="btn btn-danger" href="index">Retouner a la liste des utilisateurs</a>
                </div>
              </form>
            </div>
           
            </div>
         

          </div>
</div>

@else

  <div class="row p-4 pt-3">
          <div class="col-12">
            <div class="card">
              <div class="card-header bg-primary">
                <h3 class="card-title d-flex align-items-center"><i class="fas fa-users fa-2x"></i>liste des utilisateurs</h3>

                <div class="card-tools d-flex align-items-center">

              <a class="btn btn-link text-white mr-4 d-block" wire:click.prevent="goToAddUser"><i class="fas fa-user-plus"></i> Nouvel utilisateur</a>


                  <div class="input-group input-group-md" style="width: 250px;">
                    <input type="text" name="table_search" class="form-control float-right" placeholder="Search">

                    <div class="input-group-append">
                      <button type="submit" class="btn btn-default"><i class="fas fa-search"></i></button>
                    </div>
                  </div>
                </div>
              </div>
              <!-- /.card-header -->
              <div class="card-body table-responsive p-0">
                <table class="table table-hover">
                  <thead>
                    <tr>
                      <th style="width:5%"; ></th>
                      <th style="width:25%";>Utilisateurs</th>
                      <th style="width:20%";>Role</th>
                      <th style="width:20%";>ajouté</th>
                      <th style="width:30%";>action</th>
                      
                    </tr>
                  </thead>
                  <tbody>
                    @foreach($users as $user)
                    <tr>

                      <td>

                          @if($user->sexe=="M")
                          <img src="{{asset('img/man.png')}}" width="24">
                          @else
                              <img src="{{asset('img/woman.png')}}" width="24">
                              @endif
                      </td>
                      <td>{{$user->prenom}}{{$user->nom}}</td>
                      <td>
                      <!--   @foreach($user ->roles as $role)
                          {{$role->nom}}|

                        @endforeach -->
                        {{$user->roles->implode("nom",'|')}}

                      </td>
                      <td><span class="tag tag-success">{{$user->created_at->diffForHumans()}}</span></td>
                      <td>
                        <button class="btn btn-link"><i class="far fa-edit"></i></button>
                          <button class="btn btn-link"><i class="far fa-trash alt"></i></button>


                      </td>
                    </tr>
                    @endforeach
                  
                  </tbody>

                </table>
              </div>
              <!-- /.card-body -->
               <div class="card-footer" style="float-right">{{$users->links()}}</div>
            </div>
          
              
            <!-- /.card -->
          </div>
    </div>
      @endif
</div>

