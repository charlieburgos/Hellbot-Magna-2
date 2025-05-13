# Hellbot-Magna-2
Compilaciones firmware, perfiles para  orca, prusa y cura. 

Definiciones de Abreviaturas 
    RN12 =  Robin Nano 1.2
    RN13 =  Robin Nano 1.3
    BLT  =  BlTouch
    BP   =  Bucket Purge 

De los archivos en carpeta Firmware 
    robin_nano35.bin  = corresponde a firmware de la placa este se debe aplicar unto con la carpeta asset 
    Asset             = Carpeta con los iconos de la pantalla debe estar en conjunto con el +.bin de main.
    mkswifi           = firmware de modulo wifi. se debe configurar desde menu su modo Sta(station) o AP(AccessPoint)

De los archivos en Carpeta Calibraciones
    Archivos de calibraciones para sus equipos una vez instalada la actualización. 

Detalle de Fimware compilado. 

    General todas las versiones 
        - se habilita dual extrusor en modo ciclope ( un hotend)
        - Habilitado calentamiento hotend con MPC (modelo Predictivo) en reemplazo de PID 
        - Se habilita boton en menu para calibrar el hotend 
        - Habilitado M600 con detector de filamento 
        - se configura distancias de cambio de filamento desde pantalla ( carga y descarga) 
        - Habilitada Junction Deviation 
        - Habilitado Arc
        - Habilitado Limite de Frecuencias ( reduce resonancias)
        - Habilitado Lineal Advance (https://marlinfw.org/docs/features/lin_advance.html)
        - Habilitado Pressure Advance
        - Habilitado SCurve para menjorar las aceleraciones en cuvas o impresiones circulares
        - Habilitado Input Shaping (gcode M595) ( Reduccion resonancias eje X e Y)
        - Habilitado Compensacion Backlash  compensa holguras de cada eje al moverse ( en impresion deformidad de piezas)
        - Habilitado Recuperacion impresion en caso de corte suministro electrico
        - Habilitado Skew Correction, ( diagonales) agrega mejora de movimientos en impresion diagonales. (https://www.thingiverse.com/thing:2563185)
        - se deshabilita M503 para liberar memoria.
        - Habilitado el conteo de impresiones.


    Para Firmware con BLT 
        - Habilitado nivelacion UBL 
        - Asistente de nivelacion con bltouch
        - Babystep
        - 

    Para Firmware con BP 
        - AUmento dimension de cama a X330 
        - 