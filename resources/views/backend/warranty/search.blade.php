<div  >
                  <form action="" method="GET">
                    @csrf
                     @php 
                        $row_numbers = [10,20,30,40,50,100,200,300,400,500,600,1000,2000,100000,200000,500000];
                        @endphp
                        <div class="row">
                          <div class="col-md-2">
                            <select name="limit" class="form-control">
                                    @forelse($row_numbers as $row)
                                     <option @if(isset($request->limit)) @if($request->limit == $row) selected @endif  @endif value="{{ $row }}">{{$row}}</option>
                                    @empty
                                    @endforelse
                            </select>
                          </div>
                          <div class="col-md-2">
                            <input type="text" name="_name" class="form-control" placeholder="Search By Name" value="@if(isset($request->_name)) {{$request->_name ?? ''}}  @endif">
                          </div>
                          <div class="col-md-2">
                            <input type="text" name="_description" class="form-control" placeholder="Search By Code" value="@if(isset($request->_description)) {{$request->_description ?? ''}}  @endif">
                          </div>
                          <div class="col-md-2">
                            <input type="text" name="_duration" class="form-control" placeholder="Search By Code" value="@if(isset($request->_duration)) {{$request->_duration ?? ''}}  @endif">
                          </div>
                           @php
                        $periods = ['days','months','years'];
                        @endphp
                          <div class="col-md-2">
                            <select class="form-control" name="_branch_id" >
                              <option value="">--Select Period--</option>
                                  @forelse($periods as $period)
                                  <option value="{{$period}}" @if($request->_period==$period) selected @endif>{{$period}}</option>
                                  @empty
                                  @endforelse
                                  
                                </select>
                          </div>
                          
                          <div class="col-md-2">
                              <button class="form-control btn btn-warning" type="submit">Search</button>
                          </div>
                        </div><!-- end row -->
                   
                  </form>
                </div>