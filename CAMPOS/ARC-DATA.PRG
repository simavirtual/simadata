/*                       SIMA - CARTERA ACADEMICA
		     DECLARACION DE ARCHIVOS DEL SISTEMA

**************************************************************************
* NOMBRE DEL PROGRAMA......: ARC-CART.PRG                                *
* TITULO DEL PROGRAMA......: DECLARACION DE ARCHIVOS DEL SISTEMAS        *
* PROGRAMAS QUE LO INVOCAN.: La mayoria de funciones del sistema         *
* PROGRAMAS QUE INVOCA.....: Ninguno                                     *
**************************************************************************

AUTOR: Nelson Fern�ndez G�mez       FECHA DE CREACION: FEB 15/96 JUE A
       Colombia, Bucaramanga        INICIO: 03:00 PM   FEB 15/96 JUE

REQUERIMIENTOS:

1- Para que el programa funcione se debe invocar utilizando la clausula
   #INCLUDE dentro de la funcion que lo va a utilizar.

OBJETIVOS:

1- Declara todas las variables que contiene la declaraci�n de todos los
   archivos que conforma el sistema.

2- El objetivo principal de esta declaraci�n es estandarizar el modo
   de acceso a los archivos.

*------------------------------------------------------------------------*
*                              PROGRAMA                                  *
*------------------------------------------------------------------------*/

*>>>>DECLARACION DE ARCHIVOS GENERALES
       LOCAL PathSys := 'SIMADATA'          // Path del Sistema
       LOCAL PathSis := 'BASES'             // Path General del sistema
       LOCAL ExtFile := '.DAT'              // Extension para las bases
       LOCAL cExtNtx := '.NEL'              // Extension para indices
       LOCAL aUseDbf := {}                  // Vector para Apertura de Varias Dbfs
       LOCAL lSiRed  := .T.                 // .T. Apertura de Archivos MultiUsuario
       LOCAL lNoRed  := .F.                 // .F. Apertura de Archivo MonoUsuario

       LOCAL PathPrn := 'PRINTER'           // Path para impresiones
       LOCAL PathDoc := 'c:\misdoc'         // Path de Documentos del sima
       LOCAL FileTem := 'TEMPO'             // Archivo datos temporal
       LOCAL fNtxTem := 'TEMPO'             // Archivo Indice temporal
       LOCAL cExtTem := '.TEM'              // Extension indice temporal
     *�Archivo Temporal

       LOCAL nHanXml := 0                   // Manejador del Archivo
       LOCAL FileXml := ''                  // Archivo Xml
     *�Archivos espec�ficos

       LOCAL FileAaa := 'TEMP'+ExtFile
     *�Archivo de Usuarios

       LOCAL fErrSys := 'ERRORSYS'+ExtFile
     *�Archivo de Errores

       LOCAL FileClr := 'CFGCOLOR'+ExtFile
     *�Archivo de Configuraci�n del Color

       LOCAL FilePrn := 'DRIVERS'+ExtFile
     *�Archivo de Configuraci�n de Impresoras

       LOCAL FileDat := 'DATO0107'+ExtFile
     *�Archivo de Datos del Sistema
*>>>>FIN DECLARACION DE ARCHIVOS GENERALES

*>>>>DECLARACION DE ARCHIVOS DEL SISTEMA
       LOCAL fSimDat := 'SIMADATA'+ExtFile
     *�Archivo de Configuraci�n del sistema

       LOCAL FileEmp := 'EMPRESA'+ExtFile
     *�Archivo de Empresas.

       LOCAL fDatAno := 'DATA'              // Ej: DATA1996.DAT
     *�Archivo de Configuraci�n del a�o

       LOCAL FileRep := 'REP'               // Ej: REPBGA01.DAT
     *�Archivo de Individual Reporte Mensual

       LOCAL FileTxt := 'REPORT'            // Ej: REPORT02.DAT
     *�Archivo General del Reporte Mensual
*>>>>DECLARACION DE ARCHIVOS DEL SISTEMA

*>>>>DECLARACION DE ARCHIVOS COMPARTIDOS
       LOCAL fSimaCo := 'SIMACONT'+ExtFile
     *�Archivo de Configuraci�n del sistema

       LOCAL FilePer := 'PERSONAS'+ExtFile
       LOCAL fNtxPer := 'PERSONAS'+cExtNtx
       LOCAL Ntx1Per := 'PERSONIT'+cExtNtx
     *�Archivo de Personas

       LOCAL FileAlu := 'MAE'                         // Ej: MAEBTO02.DAT
       LOCAL fNtxAlu := 'MAE'
     *�Archivo de Alumnos

       LOCAL FileGru := 'GRU'                         // Ej: GRUBTO02.DAT
     *�Archivo de Grupos

       LOCAL FileNiv := 'NIVELS'                      // Ej: NIVELS95.DAT
     *�Archivo de Nivels

       LOCAL fSimCar := 'SIMACART'+ExtFile
     *�Archivo Configuraci�n Generale

       LOCAL fCarAno := 'CART'                        // Ej: CART1996.DAT
     *�Archivo Configuraci�n del A�o

       LOCAL FileCon := 'CONCEPTO'+ExtFile
     *�Archivo de Conceptos

       LOCAL FileTar := 'TARIFAS'+ExtFile
      *Archivo de Tarifas

       LOCAL FileCli := ''                            // Ej: CLI110102.DAT
     *�Archivo de Clientes

       LOCAL FilePag := 'PAGOS'+ExtFile               // Ej: PAG110102.DAT
     *�Archivo de Pagos

       LOCAL FileDes := 'DESCUENT'+ExtFile
       LOCAL fNtxDes := 'DESCUENT'+cExtNtx

       LOCAL FileFia := 'FIADORES'+ExtFile            // Ej: FIADORES.DAT
     *�Archivo de Fiadores

       LOCAL FileCnt := 'CONTRATA'+ExtFile
      *Archivo de Contratantes
*>>>>FIN DECLARACION DE ARCHIVOS COMPARTIDOS