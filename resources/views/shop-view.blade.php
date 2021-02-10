@extends('layouts.main')
@section('title',$title)
@section('content')
<main>
     <table class="table2">
        <tr>
            <th>Code</th>
            <td class="blue">::</td>
            <td class="mono">{{ $shop->code }}</td>
        </tr>
        <tr>
            <th>Name</th>
            <td class="blue">::</td>
            <td><em>{{ $shop->name }}</em></td>
        </tr>
        <tr>
            <th>Owner</th>
            <td class="blue">::</td>
            <td>{{ $shop->owner }}</td>
        </tr>
        <tr>
            <th>location</th>
            <td class="blue">::</td>
            <td class="mono">{{ number_format((double)$shop->latitude, 7) }}, {{ number_format((double)$shop->longitude, 7) }}</td>
        </tr>
        <tr>
            <th>Address</th>
            <td class="blue">::</td>
            <td><pre class="font1">{{ $shop->address }}</pre></td>
        </tr>
    </table>
</main>


@endsection