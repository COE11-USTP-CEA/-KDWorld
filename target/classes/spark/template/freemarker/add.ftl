<!DOCTYPE html>
<html>
<head>
<style>
  body {
    background-image: url("http://www.animateit.net/data/media/nov2011/7f41ca2dc0ff.gif");
  }
</style> 
  <!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
  
  <title>${forms}</title>


</head>
<body>

<div class="text-center">
<h1><font color="white">ADD SONG</h1>
</div>


<div class="row">
  <div class="col-md-4"></div>
  <div class="col-md-4">
    

<form method = "post" action="/add">
  <div class="form-group">
    <label for="exampleInputItem1">Name of Song</label><font color="white">
    <input type="name" name="name" class="form-control" id="song_name" placeholder="Song">
  </div>
  <div class="form-group">
    <label for="exampleInputDetails1">Name of Artist</label><font color="white">
    <input type="artist" name="artist" class="form-control" id="InputItemDetails" placeholder="Artist">
  </div>
 
  <button type="submit" class="btn btn-default">
    Submit
  </button>
</form>

<button type="btn-default" class="btn btn-default">
    <a href="/">
        Back to Homepage
      </a>
  </button>
</form>

<div class="btn-group" role="group" aria-label="...">
  

  <div class="col-md-4"></div>

</body>
</html>