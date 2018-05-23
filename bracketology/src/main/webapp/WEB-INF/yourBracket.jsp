<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>2018 FIFA WORLD CUP</title>
    <link rel="stylesheet" type="text/css" href="css/bracket/jquery.bracket.min.css" />
</head>
<body>
    <h1>2018 FIFA WORLD CUP</h1>
    <h2>Russia</h2>
    <div class="tournament"></div>


    <h1>2018 FIFA World Cup</h1>
    <div class="demo"></div>
    <input type="text" id="fifa" value="text">
    <button id="saveOutput">submit</button>

    
<!--  -->
    <script type="text/javascript" src="js/bracket/jquery-1.6.2.min.js"></script>
    <script type="text/javascript" src="js/bracket/jquery.bracket.min.js"></script>
    <script>

       var minimalData = {
            teams: [
               ["Russia", "Saudi Arabia"],
               ["Portugal", "Spain"],
               ["France", "Australia"],
               ["Argentina", "Iceland"],
               ["Brazil", "Switzerland"],
               ["Germany", "Mexico"],
               ["Belgium", "Panama"],
               ["Poland", "Senegal"]
           ],
           results: [
               [[1, 0], [null, null], [null, null], [null, null], [1, 0], [null, null], [null, null], [null, null]],
               [[null, null], [null, null], [null, null], [null, null]],
               [[null, null], [null, null]],
               [[null, null], [null, null]]
           ]
        };
        
        function saveFn(data, userData) {
            console.log(JSON.stringify(data))
            document.getElementById('fifa').value = JSON.stringify(data)
        }

        $(function () {
            var container = $(' .demo')
            container.bracket({
                init: minimalData,
                save: saveFn,
                userData: "http://myapi"
            })

            /* You can also inquiry the current data */
            var data = container.bracket('data')
            // $('.demo').text(jQuery.toJSON(data))
        })


    </script>
   
</body>
</html>