<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
</head>
<body>

<form action="{{'/api/photo'}}" method="post" enctype="multipart/form-data">

    <input name="imageable_id" value="1"/>
    <input name="imageable_type" value="App\GameInfo"/>
    <input name="type" value="app_cover"/>
    <input name="width" value="100"/>
    <input name="height" value="200"/>
    <input  accept=".jpg,.jpeg,.png" type="file" class="form-control-file" id="adphoto" name="image">
    <input type="submit" value="add">

</form>

</body>
</html>