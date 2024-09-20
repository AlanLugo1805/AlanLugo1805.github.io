<?php

    $aciertos = 0;
    $pregunta1 = $_POST["pregunta1"];
    $pregunta2 = $_POST["pregunta2"];
    $pregunta3 = $_POST["pregunta3"];
    $pregunta4 = $_POST["pregunta4"];
    $pregunta5 = $_POST["pregunta5"];
    $pregunta6 = $_POST["pregunta6"];
    $pregunta7 = $_POST["pregunta7"];
    $pregunta8 = $_POST["pregunta8"];
    $pregunta9 = $_POST["pregunta9"];
    $pregunta10 = $_POST["pregunta10"];


    //valida pregunta 1 1. ¿Cómo se llama?
    echo "<h3>1. ¿Cómo se llama? </h3>";
    echo "<h5>Repuesta seleccionada ".$pregunta1." ---- Correcta = Emmanuel</h5>";
    if($pregunta1 == "Emmanuel"){
        $aciertos++;
        echo "<img src='correcta.png' width='50px'><hr>";
    } else {
        echo "<img src='incorrecta.jpg' width='50px'><hr>";
    }
    //------FIN de la pregunta 1 ------------------

    //Valido pregunta 2 es su apodo más utilizado por sus amigos.
    echo "<h3>2. _____________ es su apodo más utilizado por sus amigos.</h3>";
    echo "<h5>Repuesta seleccionada ".$pregunta2." ---- Correcta = Gaidy</h5>";
    if(strtoupper($pregunta2) == "GAIDY"){
        $aciertos++;
        echo "<img src='correcta.png' width='50px'><hr>";
    } else {
        echo "<img src='incorrecta.jpg' width='50px'><hr>";
    }
    //Fin de la pregunta 2 -----------------------------

    //Pregunta 3 -  3. ¿Cuáles son sus apellidos? (Selecciona 2)
    echo "<h3> 3. ¿Cuáles son sus apellidos? (Selecciona 2)</h3>";
    echo "<h5>Repuesta seleccionada ".implode(" ", $pregunta3)." ---- Correcta = Ruiz Lopez</h5>";
    $p3_respuestas_correctas = 0;

    if(count($pregunta3) == 2){
        for($i=0; $i<count($pregunta3); $i++){
            if($pregunta3[$i] == "Ruiz" || $pregunta3[$i] == "Lopez"){
                $p3_respuestas_correctas ++;
            }
        }
        if($p3_respuestas_correctas == 2){
            $aciertos++;
            echo "<img src='correcta.png' width='50px'><hr>";
        } else {
            echo "<img src='incorrecta.jpg' width='50px'><hr>";
        }
    } else {
        echo "<img src='incorrecta.jpg' width='50px'><hr>";
    }
    //----------FIN pregunta 3 ------------------------------------

    //valida pregunta 4. ¿Qué rango es en Valorant?

        echo "<h3>4. ¿Qué rango es en Valorant?</h3>";
        echo "<h5>Repuesta seleccionada ".$pregunta4." ---- Correcta = Oro 2</h5>";
        if($pregunta4 == "Oro"){
            $aciertos++;
            echo "<img src='correcta.png' width='50px'><hr>";
        } else {
            echo "<img src='incorrecta.jpg' width='50px'><hr>";
        }
    //------FIN de la pregunta 4 ------------------

    //Valido pregunta 5 es su amada novia.
        echo "<h3>5. _____________ es su amada novia.</h3>";
        echo "<h5>Repuesta seleccionada ".$pregunta5." ---- Correcta = Merry</h5>";
        if(strtoupper($pregunta5) == "MERRY"){
            $aciertos++;
            echo "<img src='correcta.png' width='50px'><hr>";
        } else {
            echo "<img src='incorrecta.jpg' width='50px'><hr>";
        }
    //Fin de la pregunta 5 -----------------------------
    
        //valida pregunta 6 6. ¿Quién es su dúo?
        echo "<h3>1. 6. ¿Quién es su dúo? </h3>";
        echo "<h5>Repuesta seleccionada ".$pregunta6." ---- Correcta = Vixy</h5>";
        if($pregunta6 == "Vixy"){
            $aciertos++;
            echo "<img src='correcta.png' width='50px'><hr>";
        } else {
            echo "<img src='incorrecta.jpg' width='50px'><hr>";
        }
        //------FIN de la pregunta 6 ------------------

        //Valido pregunta 7 es la creadora del apodo gaidy.
        echo "<h3>7. _____________ es la creadora del apodo gaidy.</h3>";
        echo "<h5>Repuesta seleccionada ".$pregunta7." ---- Correcta = Mango</h5>";
        if(strtoupper($pregunta7) == "MANGO"){
            $aciertos++;
            echo "<img src='correcta.png' width='50px'><hr>";
        } else {
            echo "<img src='incorrecta.jpg' width='50px'><hr>";
        }
        //Fin de la pregunta 7 -----------------------------
        
        //Valido pregunta 8 8. ¿Cuál es su skin de vandal favorita? 
        echo "<h3>8. ¿Cuál es su skin de vandal favorita?</h3>";
        echo "<h5>Repuesta seleccionada ".$pregunta8." ---- Correcta = Origin</h5>";
        if(strtoupper($pregunta8) == "ORIGIN"){
            $aciertos++;
            echo "<img src='correcta.png' width='50px'><hr>";
        } else {
            echo "<img src='incorrecta.jpg' width='50px'><hr>";
        }
        //Fin de la pregunta 8 -----------------------------

        //Valido pregunta 9 9. ¿Qué amigo del Emma se parece a Dios?
        echo "<h3>9. ¿Qué amigo del Emma se parece a Dios?</h3>";
        echo "<h5>Repuesta seleccionada ".$pregunta9." ---- Correcta = Eithan</h5>";
        if(strtoupper($pregunta9) == "EITHAN"){
            $aciertos++;
            echo "<img src='correcta.png' width='50px'><hr>";
        } else {
            echo "<img src='incorrecta.jpg' width='50px'><hr>";
        }
        //Fin de la pregunta 9 -----------------------------

        //Valido pregunta 10 10. ¿Cuál es el resultado de la f(x)=x2 por defecto?
        echo "<h3>10. ¿Cuál es el resultado de la f(x)=x2 por defecto?</h3>";
        echo "<h5>Repuesta seleccionada ".$pregunta10." ---- Correcta = El emma esta tonto</h5>";
        if(strtoupper($pregunta10) == "EMMA"){
            $aciertos++;
            echo "<img src='correcta.png' width='50px'><hr>";
        } else {
            echo "<img src='incorrecta.jpg' width='50px'><hr>";
        }
        //Fin de la pregunta 10 -----------------------------

    echo "CALIFICACIÓN FINAl = " . ($aciertos * 10) . "%";

?>