 <x-create/>
  <div class="row p-4 pt-3">
          <div class="col-12">
            <div class="card">
              <div class="card-header bg-primary">
                <h3 class="card-title d-flex align-items-center"><i class="fas fa-users fa-2x"></i>liste des utilisateurs</h3>

                <div class="card-tools d-flex align-items-center">

             <a  class="btn btn-light" data-toggle="modal" data-target="#myModal"><i class="fa fa-user-plus" aria-hidden="true" style="padding-right: 15px; margin-right: 5px;">nouvel utilisateur</i></a>
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

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
  
</div>

