<!DOCTYPE html>
<html>
<head>
 
  <!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
  
  <title>Add item</title>

</head>
<body>

<div class="text-center">
<h1>Add a Song</h1>
</div>


<div class="row">
  <div class="col-md-4"></div>
  <div class="col-md-4">
    

<form method = "post" action="/add">
  <div class="form-group">
    <label for="exampleInputItem1">Name of Song</label>
    <input type="nameofitem" name="song" class="form-control" id="InputItemName" placeholder="Item">
  </div>
  <div class="form-group">
    <label for="exampleInputDetails1">Name of Artist</label>
    <input type="details" name="artist" class="form-control" id="InputItemDetails" placeholder="Details">
  </div>
 
  <button type="submit" class="btn btn-default">
    Submit
  </button>
</form>

<button type="submit" class="btn btn-default">
    <a href="/index">
        Back to Homepage
      </a>
  </button>
</form>

<div class="btn-group" role="group" aria-label="...">
  

  <div class="col-md-4"></div>

</body>
</html>