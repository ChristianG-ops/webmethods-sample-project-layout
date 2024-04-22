<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>dsp file invoked</title>
</head>
<body>
    <h2> Using File DSP </h2>
    %invoke httpfolder:sendSomething%
    <p>Number 1: %value Entradas/numero1%</p>
    <p>Number 2: %value Entradas/numero2%</p>
    <p>Result: </p>
    <p>Add: %value Salidas/salida1%</p>
    <p>Multiply: %value Salidas/salida2%</p>
    
    %end%
</body>
</html>