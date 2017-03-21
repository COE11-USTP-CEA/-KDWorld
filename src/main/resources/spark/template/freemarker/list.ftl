<!DOCTYPE html>
<html>
<head>
<style>
  body {
    background-image: url("https://images2.alphacoders.com/701/thumb-1920-70172.jpg");
  }
</style> 
  <!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
  
  <title>List of Songs</title>


</head>

<body>

<br>
<br>

<div class="row">
  <div class="col-md-2"></div>
  <div class="col-md-8">
  	
	<table class="table table-striped">
		<thead>
			<tr>
			<th>Song Name</th>
			<th>Artist</th>
			</tr>
		</thead>
		<tbody>
	 		<#list playlist as song>
				<tr>
					<td>${song.name}</td>
					<td>${song.artist}</td>
					<td>
  							<button type="button" class="btn btn-default"><a href="/show/${song.name}">
  							View Song	
  								
  							</a>
  							</button>
						</div>
					</td>
					<td>
  							<button type="button" class="btn btn-default"><a href="/delete/${song.name}">
  								
  							Delete
  							</a>
  							</button>

								<button type="button" class="btn btn-default"><a href="/edit/${song.name}">
  								
  							Edit
  							</a>
  							</button>

					</td>
				</tr>

			</#list>
		</tbody>	
	</table>

  </div>

  <div class="col-md-2"><a href="/add">Add a Song</a></div>
</div>

</body>
</html>
