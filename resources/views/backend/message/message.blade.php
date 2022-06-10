 
  @if (count($errors) > 0)
                           <div class="alert ">
                            
                                <ul>
                                @foreach ($errors->all() as $error)
                                    <li>{{ $error }}</li>
                                @endforeach
                                </ul>
                            </div>
                        @endif
                  @if ($message = Session::get('success'))
                    <div class="alert ">
                      <p>{{ $message }}</p>
                    </div>
                    @endif
                  @if ($message = Session::get('danger'))
                    <div class="alert _required _over_qty">
                      <p>{{ $message }}</p>
                    </div>
                    @endif