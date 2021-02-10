@extends('layouts.main')
@section('title',$title)
@section('content')

<main>
    <p>
        <b>Code</b><span class="blue">::</span>
        <span> {{ $product->code }}</span>
        <br />
        <b>Name</b><span class="blue">::</span>
        <em>{{ $product->name }}</em>
        <br />

        <b>Price</b><span class="blue">::</span>
        <span>{{ number_format((double)$product->price, 2) }}</span>
        <br />
        
    </p>
    <pre>{{ $product->description }}</pre>
</main>

@endsection