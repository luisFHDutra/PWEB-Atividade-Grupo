<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="estilos.css" rel="stylesheet" type="text/css"/>
        <title>Smiling Face em Espiral</title>
    </head>
    <body>

        <div id="container">
            <img src="face.png" alt="Imagem" id="spiral">
        </div>

        <script>
            function animarEspiral() {
                var spiral = document.getElementById("spiral");
                var container = document.getElementById("container");

                var angle = 0;
                var centerX = container.offsetWidth / 2;
                var centerY = container.offsetHeight / 2;
                var maxRadius = Math.min(container.offsetWidth, container.offsetHeight) / 2;
                var reverse = false;

                var interval = setInterval(function () {
                    var x, y;

                    if (!reverse) {
                        x = centerX + (angle * Math.cos(angle));
                        y = centerY + (angle * Math.sin(angle));
                    } else {
                        x = centerX - (angle * Math.cos(angle));
                        y = centerY - (angle * Math.sin(angle));
                    }

                    spiral.style.left = x + "px";
                    spiral.style.top = y + "px";

                    if (!reverse) {
                        angle += 0.2;
                    } else {
                        angle -= 0.2;
                    }

                    if (angle > maxRadius || angle < minAngle) {
                        reverse = !reverse;
                        if (angle < minAngle) {
                            angle = minAngle;
                        }
                        maxRadius = Math.min(container.offsetWidth, container.offsetHeight) / 2;
                    }
                }, 50);
            }

            function trocarCorFundo() {
//                document.body.style.backgroundColor = corAleatoria();
                var container = document.getElementById("container");
                container.style.backgroundColor = corAleatoria();
            }

            function corAleatoria() {
                return '#' + Math.floor(Math.random() * 16777215).toString(16);
            }

            animarEspiral();

            setInterval(trocarCorFundo, 500);
        </script>

    </body>
</html>