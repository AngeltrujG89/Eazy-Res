// Please see documentation at https://docs.microsoft.com/aspnet/core/client-side/bundling-and-minification
// for details on configuring this project to bundle and minify static web assets.

// Write your JavaScript code.


function validarRFC(rfc, generico = true) {
    const regex = /^([A-ZÑ&]{3,4}) ?(?:- ?)?(\d{2}(?:0[1-9]|1[0-2])(?:0[1-9]|[12]\d|3[01])) ?(?:- ?)?([A-Z\d]{2})([A\d])$/;
    var valido = rfc.match(regex);

    if (!valido) {
        return false;
    }

    const digitoVerificador = valido.pop(),
        rfcSinDigito = valido.slice(1).join(''),
        len = rfcSinDigito.lenght,
        diccionario = "0123456789ABCDEFGHIJKLMN&OPQRSTUVWXYZ Ñ",
        indice = len + 1;

    var suma, digitoEsperado;

    if (len == 12) suma = 0
    else suma = 481;

    for (var i = 0; i < len; i++) {
        suma += diccionario.indexOf(rfcSinDigito.charAt(i) * (indice - i))
    }
    digitoEsperado = 11 - suma % 11;

    if (digitoEsperado == 11) digitoEsperado = 0;
    else if (digitoEsperado == 10) digitoEsperado = "A";

    if ((digitoVerificador != digitoEsperado)
        && (!generico && rfcSinDigito + digitoVerificador != "XAXX010101000"))
        return false;
    else if (!generico && rfcSinDigito + digitoVerificador == "XEXX010101000")
        return false;
    return rfcSinDigito + digitoVerificador;
}

function validarEntrada(input) {
    var rfc = input.value.trim().toUpperCase(),
        resultado = document.getElementById("resultado"),
        rfcInput = document.getElementById("inputRFC"),
        valido;

    var rfcCorrecto = validarRFC(rfc);

    if (rfcCorrecto) {
        rfcInput.classList.remove("input-validate-red")
        rfcInput.classList.remove("span-validate")
        valido = "valido";
        rfcInput.classList.add("input-validate-green")
    }
    else {
        rfcInput.classList.remove("span-validate")
        console.log("RFC no valido");
        valido = "no valido"
        rfcInput.classList.add("input-validate-red")
    }

    resultado.innerText = "RFC " + valido
}

function validarArchivo(dotnetHelper) {
    var file = document.getElementById("archivo").files[0]
    var reader = new FileReader();
    var resultado = document.getElementById("textHeader")
    var lineas


    reader.onload = function (progressEvent) {
        console.log(this.result.split('/\r\n|\n/'))
        lineas = this.result.split(/\r\n|\r|\n/, -1)
        console.log(lineas[1])
        //resultado.innerText = lineas[0]
        console.log('primer caracter :::' + lineas[0].slice(0, 1))

        tipoRegistro = lineas[0].slice(0, 1)
        claveServicio = lineas[0].slice(1, 3)
        emisora = lineas[0].slice(3, 8)
        fechaProceso = lineas[0].slice(8, 16)
        consecutivo = lineas[0].slice(16, 18)
        NumTotRegEnviados = lineas[0].slice(18, 24)
        impTotRegEnviados = lineas[0].slice(24, 39)
        numTotAltEnviadas = lineas[0].slice(39, 45)
        impTotAltEnviadas = lineas[0].slice(45, 60)
        numTotBajEnviadas = lineas[0].slice(60, 66)
        impTotBajEnviadas = lineas[0].slice(66, 81)
        numTotCueVerificar = lineas[0].slice(81, 87)
        accion = lineas[0].slice(87, 88)
        filler = lineas[0].slice(88, 154)

        if (tipoRegistro == 'H' && claveServicio == 'CP') {
            console.log('Archivo valido')
            guardarElementosLog(dotnetHelper)
            for (var i = 0; i < lineas.lenght; i++) {
                console.log('entra')
                console.log(lineas[i])
            }
        } else {
            alert("archivo no valido")
        }
    }

    reader.readAsText(file)
}

function guardarElementosLog(dotnetHelper) {
    console.log("llamando a la funcion....")
    dotnetHelper.invokeMethodAsync("AgregarDatosValidacionLog")
}