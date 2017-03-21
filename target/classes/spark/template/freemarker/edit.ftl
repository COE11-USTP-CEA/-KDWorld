<html>

<body>

<div class="container">
  


<div class="row jumbotron">
  <div class="text-center">
    <h1>Edit an item</h1>
  </div>


<div class="col-md-4"></div>
  <div class="col-md-4">
    

  <form method = "post" action="/edit">
    <div class="form-group">
      <label for="exampleInputCode">Song Name:</label>
      <input type="name" name="name" class="form-control" id="song_name" placeholder="Enter new Name" value="${song.name}">
    </div>
    <div class="form-group">
      <label for="exampleInputName">Song Artist: ${song.artist}</label>
      <input type="hidden" name="artist" class="form-control" id="song_name" placeholder="Enter new" value="${song.artist}">
    </div>
   
    <button type="submit" class="btn btn-default">
      Submit
    </button>
  </form>

    <a href="/"> Back to Homepage </a>
  </div>
</div>
</div>

</body>
</html>