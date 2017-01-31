@extends('layouts.app')

@section('content')
<style>

</style>
<script>
  $(document).ready(function() {
    $('.datepicker').datepicker();
  });
</script>
<div class="container">
    <div class="row">
        <div class="col-md-8 col-md-offset-2">
            <div class="panel panel-default">
                <div class="panel-heading">Dashboard</div>

                <div class="panel-body">
                    Welcome!
                    <div role="tabpanel">
                        <!-- Nav tabs -->
                        <ul class="nav nav-tabs" role="tablist">
                            <li role="presentation" class="active"><a href="#tab1" aria-controls="tab1" role="tab" data-toggle="tab">Merchants</a></li>
                            <li role="presentation"><a href="#tab2" aria-controls="tab2" role="tab" data-toggle="tab">Tab 2</a></li>
                        </ul>

                        <!-- Tab panes -->
                        <div class="tab-content">
                            <div role="tabpanel" class="tab-pane active" id="tab1">
                                <div class="block">
                                    <div class="col-md-2">Merchants:</div>
                                    <div class="col-md-4"><select><option>select merchant</option></select></div>
                                    <div class="col-md-1"><button type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#add_merchant">Add Merchant</button></div>
                                </div>
                                <div class="modal fade" id="add_merchant" tabindex="-1" role="dialog" aria-labelledby="add_merchant" aria-hidden="true">
                                    <div class="modal-dialog">
                                        <div class="modal-content">
                                            <div class="modal-header">
                                                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                                                <h4 class="modal-title" align="left">Add Merchant </h4>
                                            </div> <!-- end modal-header -->
                                            <form class="form-horizontal" role="form" method="POST" action="{{ url('/createmerchant') }}">
                                            {{ csrf_field() }}
                                                <div class="panel panel-default">
                                                    <div class="panel-heading">Merchant Info</div>
                                                    <div class="panel-body">
                                                        <div class="form-group{{ $errors->has('name') ? ' has-error' : '' }}">
                                                            <label for="name" class="col-md-4 control-label">Name</label>
                                                            <div class="col-md-6">
                                                                <input id="name" type="text" class="form-control" name="name" required autofocus>
                                                                @if ($errors->has('name'))
                                                                    <span class="help-block">
                                                                        <strong>{{ $errors->first('name') }}</strong>
                                                                    </span>
                                                                @endif
                                                            </div>
                                                        </div>
                                                        <div class="form-group{{ $errors->has('Owner') ? ' has-error' : '' }}">
                                                            <label for="owner" class="col-md-4 control-label">Owner</label>
                                                            <div class="col-md-6">
                                                                <input id="owner" type="text" class="form-control" name="owner" required autofocus>
                                                                @if ($errors->has('owner'))
                                                                    <span class="help-block">
                                                                        <strong>{{ $errors->first('owner') }}</strong>
                                                                    </span>
                                                                @endif
                                                            </div>
                                                        </div>
                                                        <div class="form-group{{ $errors->has('contactdate') ? ' has-error' : '' }}">
                                                            <label for="contactdate" class="col-md-4 control-label">Contact Date</label>
                                                            <div class="col-md-6">
                                                                <input id="contactdate" type="date" class="form-control datepicker" name="contactdate" data-provide="datepicker" required autofocus>
                                                                @if ($errors->has('contactdate'))
                                                                    <span class="help-block">
                                                                        <strong>{{ $errors->first('contactdate') }}</strong>
                                                                    </span>
                                                                @endif
                                                            </div>
                                                        </div>
                                                        <div class="form-group{{ $errors->has('contractmonths') ? ' has-error' : '' }}">
                                                            <label for="contractmonths" class="col-md-4 control-label">Contract Months</label>
                                                            <div class="col-md-6">
                                                                <input id="contractmonths" type="text" class="form-control" name="contractmonths" required autofocus>
                                                                @if ($errors->has('contractmonths'))
                                                                    <span class="help-block">
                                                                        <strong>{{ $errors->first('contractmonths') }}</strong>
                                                                    </span>
                                                                @endif
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="panel panel-default">
                                                    <div class="panel-heading">Account Info</div>
                                                    <div class="panel-body">
                                                        <div class="form-group{{ $errors->has('username') ? ' has-error' : '' }}">
                                                            <label for="username" class="col-md-4 control-label">Username</label>
                                                            <div class="col-md-6">
                                                                <input id="username" type="text" class="form-control" name="username" required autofocus>
                                                                @if ($errors->has('username'))
                                                                    <span class="help-block">
                                                                        <strong>{{ $errors->first('username') }}</strong>
                                                                    </span>
                                                                @endif
                                                            </div>
                                                        </div>
                                                        <div class="form-group{{ $errors->has('password') ? ' has-error' : '' }}">
                                                            <label for="password" class="col-md-4 control-label">Password</label>
                                                            <div class="col-md-6">
                                                                <input id="password" type="text" class="form-control" name="password" required autofocus>
                                                                @if ($errors->has('password'))
                                                                    <span class="help-block">
                                                                        <strong>{{ $errors->first('password') }}</strong>
                                                                    </span>
                                                                @endif
                                                            </div>
                                                        </div>
                                                        <div class="form-group{{ $errors->has('email') ? ' has-error' : '' }}">
                                                            <label for="email" class="col-md-4 control-label">Email</label>
                                                            <div class="col-md-6">
                                                                <input id="email" type="email" class="form-control" name="email" required autofocus>
                                                                @if ($errors->has('email'))
                                                                    <span class="help-block">
                                                                        <strong>{{ $errors->first('email') }}</strong>
                                                                    </span>
                                                                @endif
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <div class="col-md-8 col-md-offset-4">
                                                        <button type="submit" class="btn btn-primary">
                                                            Add Merchant
                                                        </button>
                                                    </div>
                                                </div>
                                            </form>
                                            <div class="modal-footer">
                                                <button type="button" class="btn btn-danger btn-clean"  data-dismiss="modal">Cancel</button>
                                            </div>
                                        </div>
                                            
                                  </div>
                                </div>
                            </div>
                            <div role="tabpanel" class="tab-pane" id="tab2">...</div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

        

</div>


@endsection
