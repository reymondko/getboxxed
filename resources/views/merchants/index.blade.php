@extends('layouts.app')

@section('content')

<h1>Merchants</h1>

	@foreach ($merchants as $merchant)
		<h4>{{$merchant->name}}</h4>
	@endforeach
@stop