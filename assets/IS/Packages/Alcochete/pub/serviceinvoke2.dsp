<!DOCTYPE html>
<html lang="en">
<head>
    <title>dsp file invoked</title>
</head>
<body>
    <h2> Using File DSP </h2>
    %invoke httpfolder:sendnumbersparament%
    <p>Value: %value Output/salida2%</p>
    <h1>Numbers</h1>
    <p>Value: %value Input/numero1%</p>
    <p>Value: %value Input/numero2%</p>

    %end%
</body>
</html>