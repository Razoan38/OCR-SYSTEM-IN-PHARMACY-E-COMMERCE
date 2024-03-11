@extends('website.master')

@section('title ')

Image Upload and OCR Results

@endsection

@section('style')

@endsection

@section('body')


<h1 class="text-center bg-red-400" style=" margin-bottom: 20px; color: red">Image Upload and OCR Results</h1>

<div class="" id="body">
    @if(isset($imagePath))
    <h3 class="" style="width: 30%; margin-top: 10px ; margin-left: 244px; color: green">Image Uploaded:</h3>
    <img src="{{ asset($imagePath) }}" alt="Uploaded Image"  style="margin-left: 30%; margin-top: 40px">

    @if(isset($text))
        <br>
        <h3 style="margin-top: 60px ; margin-bottom: 50px; margin-left: 244px; color: yellowgreen ">OCR after reading:</h3>
        <pre style="margin-left: 30%;">{{ $text }}</pre>
    @endif
@endif
</div>

@endsection
