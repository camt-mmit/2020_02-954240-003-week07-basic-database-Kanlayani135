@extends('layouts.main')
@section('title',$title)

@section('content')

<main>
    <table>
        <thead>
            <tr>
                <th>Code</th>
                <th>Name</th>
                <th>Owner</th>
            </tr>
        </thead>
        <tbody>
        @foreach($shops as $shop)
            <tr>
                <th>
                <a href="{{ route('shop-view',[
                'shop' => $shop->code,
                ]) }}">
                {{ $shop->code }}
                </a>
                    
                </th>
                <td>{{ $shop->name }}</td>
                <td>{{ $shop->owner }}</td>
            </tr>
        @endforeach
        </tbody>
    
    </table>
</main>

@endsection