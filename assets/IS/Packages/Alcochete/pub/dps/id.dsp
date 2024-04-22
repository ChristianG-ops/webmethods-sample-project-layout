<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>DSP Doc</title>
    <h1>XML Generate</h1>
    <h2>Gerar um arquivo XML segundo by ID_Empregado</h2>
</head>
<body style="align-content: center">
    <form action="http://localhost:5555/invoke/JDBC.Adapt:dspServiceInvoke">
        <table>
            <tr>
            <td>Id do empregado</td>
            <td>
                <input type="text" name="idEmpregado" style=" color: #8964ce">
                
            </td>
           </tr>
           <tr>
               <td>
                   <input type="submit" value="Generate XML">
               </td>
           </tr>
        </table>
        
    </form>
    
</body>
</html>