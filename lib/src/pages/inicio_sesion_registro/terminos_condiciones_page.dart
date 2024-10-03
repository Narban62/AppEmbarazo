import 'package:app_embarazo/src/widgets/button_widget.dart';
import 'package:app_embarazo/src/widgets/header_widget.dart';
import 'package:app_embarazo/src/widgets/image_widget.dart';
import 'package:app_embarazo/src/widgets/text_widget.dart';
import 'package:flutter/material.dart';

class TerminosCondicionesPaget extends StatefulWidget {
  const TerminosCondicionesPaget({super.key});

  @override
  State<TerminosCondicionesPaget> createState() =>
      _TerminosCondicionesPagetState();
}

class _TerminosCondicionesPagetState extends State<TerminosCondicionesPaget> {
  bool _isChecked = false;

  @override
  Widget build(BuildContext context) {
    Color color = Color(0xffAEDAFE);
    Color colorButton = Color(0xff226EAD);

    return Scaffold(
      backgroundColor: color,
      body: SingleChildScrollView(
        child: Column(children: [
          HeaderWidget(
            color: color,
            text: 'TÉRMINOS Y CONDICIONES DE USO ',
            isSubtitle: true,
            showButton: false,
          ),
          TextWidget(
              text: 'Bienvenida a nuestra aplicación de salud para adolescentes embarazadas. Antes de utilizar nuestra aplicación, por favor, lee detenidamente los siguientes Términos y Condiciones, puesto que cualquier uso de esta plataforma o de App “……” constituye aceptación inequívoca de los mismos.' +
                  'Condiciones Generales y aceptación del usuario' +
                  '\n\t1. Estos Términos y Condiciones de Uso regulan las reglas a que se sujeta la utilización de la APP “….”, que puede descargarse para dispositivos Android e IOS. La descarga o utilización de la APP atribuye la condición de Usuario a quien lo haga e implica la aceptación de todas las condiciones incluidas en este documento y en la Política de Privacidad y el Aviso Legal de dicha página Web. Te recomendamos leer estas condiciones cada vez que utilices la APP, ya que podrían existir modificaciones en lo sucesivo.' +
                  '\t\n2. Únicamente las Usuarias expresamente autorizadas por las investigadoras, podrán acceder a la descarga y uso de la APP. Las Usuarias que no dispongan de autorización, no podrán acceder a dicho contenido.' +
                  '\t\n3. Cargos: durante el desarrollo de la investigación la aplicación “…………”será gratuita, para las participantes de dicho estudio, si posterior a ellos, eres responsable del pago de todos los costes o gastos en los que incurras como resultado de descargar y usar la Aplicación “…….”, incluido cualquier cargo de red de operador o itinerancia. Consulta con tu proveedor de servicios los detalles al respecto.' +
                  '\n\t4. Estadísticas anónimas: Las investigadoras se reservan el derecho a realizar un seguimiento de tu actividad en la Aplicación “……” y así poder realizar un estudio estadístico de la estabilidad y usabilidad de la aplicación. Todo ello de forma anónima a nuestras usuarias. ' +
                  '\n\t5. Protección de tu información personal: queremos ayudarte a llevar a cabo todos los pasos necesarios para proteger tu privacidad e información. Consulta la Política de privacidad de las investigadoras del estudio y los avisos sobre privacidad de la Aplicación “……..” para conocer qué tipo de información recopilamos y las medidas que tomamos para proteger tu información personal.' +
                  '\n\t6. Queda prohibido alterar o modificar ninguna parte de la APP “……..” o de los contenidos de la misma, eludir, desactivar o manipular de cualquier otra forma (o tratar de eludir, desactivar o manipular) las funciones de seguridad u otras funciones del programa y utilizar la APP o sus contenidos para un fin comercial o publicitario. Queda prohibido el uso de la APP “……” con la finalidad de lesionar bienes, derechos o intereses de las investigadoras o de terceros. Queda igualmente prohibido realizar cualquier otro uso que altere, dañe o inutilice las redes, servidores, equipos, productos y programas informáticos de las investigadoras o de terceros.' +
                  '\n7.       La APP y sus contenidos (textos, fotografías, gráficos, imágenes, tecnología, software, links, contenidos, diseño gráfico, código fuente, etc.), así como las marcas y demás signos distintivos son propiedad de las investigadoras o de terceros, no adquiriendo la Usuaria ningún derecho sobre ellos por el mero uso de la APP. La Usuaria, deberá abstenerse de:' +
                  '\na)   	Reproducir, copiar, distribuir, poner a disposición de terceros, comunicar públicamente, transformar o modificar la APP o sus contenidos, salvo en los casos contemplados en la ley o expresamente autorizados por las investigadoras. ' +
                  '\nb)       Reproducir o copiar para uso privado la APP “…..” o sus contenidos, así como comunicarlos públicamente o ponerlos a disposición de terceros cuando ello conlleve su reproducción.' +
                  '\nc)    Extraer o reutilizar todo o parte sustancial de los contenidos integrantes de la APP “…….”.' +
                  '\n8.       Con sujeción a las condiciones establecidas en el apartado anterior, las investigadoras, conceden a la Usuaria una licencia de uso de la APP, no exclusiva, gratuita, para uso personal, circunscrita al territorio nacional y con carácter indefinido. Dicha licencia se concede también en los mismos términos con respecto a las actualizaciones y mejoras que se realizasen en la aplicación. Dichas licencias de uso podrán ser revocadas por las investigadoras, unilateralmente en cualquier momento, mediante la mera notificación a la Usuaria.' +
                  '\n9.       Corresponde a la Usuaria, en todo caso, disponer de herramientas adecuadas para la detección y desinfección de programas maliciosos o cualquier otro elemento informático dañino. Las investigadoras, no se responsabilizan de los daños producidos a equipos informáticos durante el uso de la APP “….”. Igualmente, las investigadoras no será responsable de los daños producidos a las Usuarias cuando dichos daños tengan su origen en fallos o desconexiones en las redes de telecomunicaciones que interrumpan el servicio.' +
                  '\n10.    IMPORTANTE: Podemos, sin que esto suponga ninguna obligación contigo, modificar estas Condiciones de uso sin avisar en cualquier momento. Si continúas utilizando la aplicación una vez realizada cualquier modificación en estas Condiciones de uso, esa utilización continuada constituirá la aceptación por tu parte de tales modificaciones. Si no aceptas estas condiciones de uso ni aceptas quedar sujeto a ellas, no debes utilizar la aplicación. El uso que hagas de la aplicación queda bajo tu única responsabilidad. No tenemos responsabilidad alguna por la eliminación o la incapacidad de almacenar o trasmitir cualquier contenido u otra información mantenida o trasmitida por la aplicación. No somos responsables de la precisión o la fiabilidad de cualquier información o consejo trasmitidos a través de la aplicación. Podemos, en cualquier momento, limitar o interrumpir tu uso a nuestra única discreción, en ningún caso seremos responsables por cualquier pérdida o daño relacionados.' +
                  '\n11.    La Usuaria se compromete a hacer un uso correcto de la APP “……”, de conformidad con la Ley del territorio nacional en el que se encuentre, con los presentes Términos y Condiciones de Uso y con las demás reglamentos e instrucciones que, en su caso, pudieran ser de aplicación. La  Usuaria responderá frente las investigadoras y frente a terceros de cualquier daño o perjuicios que pudieran causarse por incumplimiento de estas obligaciones. ' +
                  '\n12.    Estos Términos y Condiciones de Uso se rigen íntegramente por la legislación correspondiente a Ecuador. Para la resolución de cualquier conflicto relativo a su interpretación o aplicación, la  Usuaria se somete expresamente a la jurisdicción del tribunal antes mencionados.'),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Checkbox(
                semanticLabel: 'test',
                value: _isChecked,
                onChanged: (bool? value) {
                  setState(() {
                    _isChecked = value ?? false;
                  });
                },
              ),
              Text('Acepto los términos y condiciones')
            ],
          ),
          Button(
              buttonName: 'Siguiente',
              buttonColor: colorButton,
              isEnabled: _isChecked,
              onPressed: () {
                Navigator.pushNamed(context, '/registro');
              }),
        ]),
      ),
    );
  }
}
