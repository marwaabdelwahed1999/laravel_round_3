<!DOCTYPE html>
<html lang="en">
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>

<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="{{route('cars')}}">Cars</a>
    </div>
    <ul class="nav navbar-nav">
      <li class="active"><a href="{{route('cars')}}">Home</a></li>
      <li><a href="{{route('createCar')}}">Insert Car</a></li>
      <li><a href="{{route('trashed')}}">Trashed Cars</a></li>
      <li><a href="{{ LaravelLocalization::getLocalizedURL('en') }}">En</a></li>
      <li><a href="{{ LaravelLocalization::getLocalizedURL('ar') }}">عربي</a></li>
   
      {{-- <li><a href="/posts">Posts</a></li>
      <li><a href="{{route('createPost')}}">Insert Post</a></li>
      <li><a href="{{route('trashed_post')}}">Trashed Posts</a></li> --}}

    </ul>
  </div>
</nav>
  
<div class="container">
  <h3>Inverted Navbar</h3>
  <p>An inverted navbar is black instead of gray.</p>
</div>

</body>
</html>
