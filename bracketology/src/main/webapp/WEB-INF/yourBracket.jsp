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
    <div class="tournament"></div>


    <h1>hello</h1>
    <div class="demo"></div>
    <form action="/Home/bracketData" method="POST">
        <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
        <input type="hidden" id="teams" name="teamsData" value="text">
        <input type="hidden" id="results" name="resultsData" value="text">
        <input type="submit" value="submit">  
    </form>
    

    
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
            console.log(JSON.stringify(data.teams))
            document.getElementById('teams').value = JSON.stringify(data.teams)
            document.getElementById('results').value = JSON.stringify(data.results)
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