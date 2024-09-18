<?php

    $aciertos = 0;
    $pregunta1 = $_POST["pregunta1"];
    $pregunta2 = $_POST["pregunta2"];
    $pregunta3 = $_POST["pregunta3"];

    //valida pregunta 1 1. ¿Cómo se llama?
    echo "<h3> ¿Cómo se llama?</h3>";
    echo "<h5>Repuesta seleccionada ".$pregunta1." ---- Correcta = Emmanuel</h5>";
    if($pregunta1 == "Emmanuel"){
        $aciertos++;
        echo "<img src='correcta.png' width='50px'><hr>";
    } else {
        echo "<img src='incorrecta.jpg' width='50px'><hr>";
    }

    //Valido pregunta 2 s una plataforma informática de lenguaje de programación creada por Sun Microsystems en 1995.
    echo "<h3>2. Gaidy es su segundo apodo más usado por todos. </h3>";
    echo "<h5>Repuesta seleccionada ".$pregunta2." ---- Correcta = Gaidy</h5>";
    if(strtoupper($pregunta2) == "GAIDY"){
        $aciertos++;
        echo "<img src='correcta.png' width='50px'><hr>";
    } else {
        echo "<img src='incorrecta.jpg' width='50px'><hr>";
    }


    //Pregunta 3 - se deben validar 2 opciones sql y mongo
    $p3_respuestas_correctas = 0;
    echo "<h3> 3. ¿Cuáles son sus apellidos? (Selecciona 2)</h3>";
    echo "<h5>Correcta = Ruiz López</h5>";
    if(count($pregunta3) == 2){
        for($i=0; $i<count($pregunta3); $i++){
            if($pregunta3[$i] == "Ruiz" || $pregunta3[$i] == "Lopez"){
                $p3_respuestas_correctas ++;
                echo "<img src='correcta.png' width='50px'><hr>";
            }else{
                echo "<img src='incorrecta.jpg' width='50px'><hr>";
            }
        }
        if($p3_respuestas_correctas == 2){
            $aciertos++;
        }
    }
    
    echo "CALIFICACIÓN FINAl = " . ($aciertos * 10) . "%";

?>