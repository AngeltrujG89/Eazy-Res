SET IDENTITY_INSERT dbo.GrupoClasificacion ON;
INSERT  INTO GrupoClasificacion ( IdGrupoClasificacion, Grupo )
VALUES  ( 1, 'Grupo 1' ),
        ( 4, 'Grupo 4' ),
        ( 5, 'Grupo 5' ),
        ( 6, 'Grupo 6' ),
        ( 7, 'Grupo 7' ),
        ( 8, 'Grupo 8' ),
        ( 13, 'Grupo 13' ),
        ( 14, 'Grupo 14' ),
        ( 16, 'Grupo 16' ),
        ( 18, 'Grupo 18' ),
        ( 22, 'Grupo 22' ),
        ( 30, 'Grupo 30' ),
        ( 31, 'Grupo 31' ),
        ( 32, 'Grupo 32' ),
        ( 37, 'Grupo 37' );
SET IDENTITY_INSERT dbo.GrupoClasificacion OFF;
DBCC CHECKIDENT ( 'dbo.GrupoClasificacion', RESEED, 38);

SET IDENTITY_INSERT EnumTexto ON;
INSERT  INTO EnumTexto ( IdEnumTexto, IdGrupo, Valor )
VALUES  ( 1, 2, N'No' ),
        ( 2, 2, N'Opcional' ),
        ( 3, 2, N'[0-9]{11}|[0-9]{18}' ),
        ( 4, 2, N'[0-9]{10,11}|[0-9]{15,16}|[0-9]{18}|[A-Z0-9_]{10,50}' ),
        ( 5, 2, N'[0-9]{10}|[0-9]{16}|[0-9]{18}' ),
        ( 6, 2, N'[0-9]{16}' ),
        ( 7, 2, N'[0-9]{10}' ),
        ( 8, 2, N'[0-9]{15,16}' ),
        ( 9, 2, N'Si' ),
        ( 10, 3, N'Manual' ),
        ( 11, 3, N'Automático' ),
        ( 12, 9, N'RegimenFiscal' ),
        ( 13, 9, N'Uso CFDI' ),
        ( 14, 10, N'Fisica' ),
        ( 15, 10, N'Moral' ),
        ( 16, 10, N'Fisica-Moral' ),
        ( 17, 11, N'IVA' ),
        ( 18, 11, N'IEPS' ),
        ( 19, 11, N'IVA-IEPS' ),
        ( 20, 11, N'IVA-IEPS Opcional' ),
        ( 21, 12, N'Descripcion' ),
        ( 22, 12, N'Nota' ),
        ( 23, 15, N'Traslado' ),
        ( 24, 15, N'Retencion' ),
        ( 25, 15, N'Traslado-Retencion' ),
        ( 26, 17, N'Tasa' ),
        ( 27, 17, N'Cuota' ),
        ( 28, 17, N'Exento' ),
        ( 29, 19, N'0' ),
        ( 30, 19, N'74' ),
        ( 31, 19, N'101' ),
        ( 32, 19, N'115' ),
        ( 33, 19, N'122' ),
        ( 34, 19, N'123' ),
        ( 35, 19, N'149' ),
        ( 36, 19, N'150' ),
        ( 37, 19, N'182' ),
        ( 38, 19, N'188' ),
        ( 39, 19, N'203' ),
        ( 40, 19, N'205' ),
        ( 41, 19, N'227' );
SET IDENTITY_INSERT EnumTexto OFF;
DBCC CHECKIDENT ( 'dbo.EnumTexto', RESEED, 42);



SET IDENTITY_INSERT Clasificacion ON;
INSERT  INTO Clasificacion ( IdClasificacion, IdGrupo, Codigo, Nombre )
VALUES  ( 1, 1, N'1', N'Efectivo' ),
        ( 2, 1, N'2', N'Cheque Nominativo' ),
        ( 3, 1, N'3', N'Transferencia electrónica de fondos' ),
        ( 4, 1, N'4', N'Tarjeta de crédito' ),
        ( 5, 1, N'5', N'Monedero electrónico' ),
        ( 6, 1, N'6', N'Dinero electrónico' ),
        ( 7, 1, N'8', N'Vales de despensa' ),
        ( 8, 1, N'12', N'Dación en pago' ),
        ( 9, 1, N'13', N'Pago por subrogación' ),
        ( 10, 1, N'14', N'Pago por consignación' ),
        ( 11, 1, N'15', N'Condonación' ),
        ( 12, 1, N'17', N'Compensación' ),
        ( 13, 1, N'23', N'Novación' ),
        ( 14, 1, N'24', N'Confusión' ),
        ( 15, 1, N'25', N'Remisión de deuda' ),
        ( 16, 1, N'26', N'Prescripción o caducidad' ),
        ( 17, 1, N'27', N'A satisfacción del acreedor' ),
        ( 18, 1, N'28', N'Tarjeta de débito' ),
        ( 19, 1, N'29', N'Tarjeta de servicios' ),
        ( 20, 1, N'30', N'Aplicación de anticipos' ),
        ( 21, 1, N'31', N'Intermediario pagos' ),
        ( 22, 1, N'99', N'Por definir' ),
        ( 23, 4, N'I', N'Ingreso' ),
        ( 24, 4, N'E', N'Egreso' ),
        ( 25, 4, N'T', N'Traslado' ),
        ( 26, 4, N'N', N'Nómina' ),
        ( 27, 4, N'P', N'Pago' ),
        ( 28, 5, N'1', N'No Aplica' ),
        ( 29, 5, N'2', N'Definitva' ),
        ( 30, 5, N'3', N'Temporal' ),
        ( 31, 6, N'PUE', N'Pago en una sola exhibición' ),
        ( 32, 6, N'PPD', N'Pago en parcialidades o diferido' ),
        ( 33, 7, N'1', N'Diario' ),
        ( 34, 7, N'2', N'Semanal' ),
        ( 35, 7, N'3', N'Quincenal' ),
        ( 36, 7, N'4', N'Mensual' ),
        ( 37, 7, N'5', N'Bimestral' ),
        ( 38, 8, N'1', N'Nota de crédito de los documentos relacionados' ),
        ( 39, 8, N'2', N'Nota de débito de los documentos relacionados' ),
        ( 40, 8, N'3', N'Devolución de mercancía sobre facturas o traslados previos' ),
        ( 41, 8, N'4', N'Sustitución de los CFDI previos' ),
        ( 42, 8, N'5', N'Traslados de mercancías facturados previamente' ),
        ( 43, 8, N'6', N'Factura generada por los traslados previos' ),
        ( 44, 8, N'7', N'CFDI por aplicación de anticipo' ),
        ( 45, 13, N'64', N'Libra por pulgada cuadrada, calibre' ),
        ( 46, 13, N'66', N'Oersted' ),
        ( 47, 13, N'76', N'Gauss' ),
        ( 48, 13, N'78', N'Kilogauss' ),
        ( 49, 13, N'84', N'Kilopound-force por pulgada cuadrada' ),
        ( 50, 14, N'1', N'No objeto de impuesto.' ),
        ( 51, 14, N'2', N'Sí objeto de impuesto.' ),
        ( 52, 14, N'3', N'Sí objeto del impuesto y no obligado al desglose.' ),
        ( 53, 16, N'1', N'ISR' ),
        ( 54, 16, N'2', N'IVA' ),
        ( 55, 16, N'3', N'IEPS' ),
        ( 56, 18, N'1', N'ACAPULCO, ACAPULCO DE JUAREZ, GUERRERO.' ),
        ( 57, 18, N'2', N'AGUA PRIETA, AGUA PRIETA, SONORA.' ),
        ( 58, 18, N'5', N'SUBTENIENTE LOPEZ, SUBTENIENTE LOPEZ, QUINTANA ROO.' ),
        ( 59, 18, N'6', N'CIUDAD DEL CARMEN, CIUDAD DEL CARMEN, CAMPECHE.' ),
        ( 60, 18, N'7', N'CIUDAD JUAREZ, CIUDAD JUAREZ, CHIHUAHUA.' ),
        ( 61, 18, N'8', N'COATZACOALCOS, COATZACOALCOS, VERACRUZ.' ),
        ( 62, 18, N'11', N'ENSENADA, ENSENADA, BAJA CALIFORNIA.' ),
        ( 63, 18, N'12', N'GUAYMAS, GUAYMAS, SONORA.' ),
        ( 64, 18, N'14', N'LA PAZ, LA PAZ, BAJA CALIFORNIA SUR.' ),
        ( 65, 18, N'16', N'MANZANILLO, MANZANILLO, COLIMA.' ),
        ( 66, 18, N'17', N'MATAMOROS, MATAMOROS, TAMAULIPAS.' ),
        ( 67, 18, N'18', N'MAZATLAN, MAZATLAN, SINALOA.' ),
        ( 68, 18, N'19', N'MEXICALI, MEXICALI, BAJA CALIFORNIA.' ),
        ( 69, 18, N'20', N'MEXICO, DISTRITO FEDERAL.' ),
        ( 70, 18, N'22', N'NACO, NACO, SONORA.' ),
        ( 71, 18, N'23', N'NOGALES, NOGALES, SONORA.' ),
        ( 72, 18, N'24', N'NUEVO LAREDO, NUEVO LAREDO, TAMAULIPAS.' ),
        ( 73, 18, N'25', N'OJINAGA, OJINAGA, CHIHUAHUA.' ),
        ( 74, 18, N'26', N'PUERTO PALOMAS, PUERTO PALOMAS, CHIHUAHUA.' ),
        ( 75, 18, N'27', N'PIEDRAS NEGRAS, PIEDRAS NEGRAS, COAHUILA.' ),
        ( 76, 18, N'28', N'PROGRESO, PROGRESO, YUCATAN.' ),
        ( 77, 18, N'30', N'CIUDAD REYNOSA, CIUDAD REYNOSA, TAMAULIPAS.' ),
        ( 78, 18, N'31', N'SALINA CRUZ, SALINA CRUZ, OAXACA.' ),
        ( 79, 18, N'33', N'SAN LUIS RIO COLORADO, SAN LUIS RIO COLORADO, SONORA.' ),
        ( 80, 18, N'34', N'CIUDAD MIGUEL ALEMAN, CIUDAD MIGUEL ALEMAN, TAMAULIPAS.' ),
        ( 81, 18, N'37', N'CIUDAD HIDALGO, CIUDAD HIDALGO, CHIAPAS.' ),
        ( 82, 18, N'38', N'TAMPICO, TAMPICO, TAMAULIPAS.' ),
        ( 83, 18, N'39', N'TECATE, TECATE, BAJA CALIFORNIA.' ),
        ( 84, 18, N'40', N'TIJUANA, TIJUANA, BAJA CALIFORNIA.' ),
        ( 85, 18, N'42', N'TUXPAN, TUXPAN DE RODRIGUEZ CANO, VERACRUZ.' ),
        ( 86, 18, N'43', N'VERACRUZ, VERACRUZ, VERACRUZ.' ),
        ( 87, 18, N'44', N'CIUDAD ACUÑA, CIUDAD ACUÑA, COAHUILA.' ),
        ( 88, 18, N'46', N'TORREON, TORREON, COAHUILA.' ),
        ( 89, 18, N'47', N'AEROPUERTO INTERNACIONAL DE LA CIUDAD DE MEXICO,' ),
        ( 90, 18, N'48', N'GUADALAJARA, TLACOMULCO DE ZUÑIGA, JALISCO.' ),
        ( 91, 18, N'50', N'SONOYTA, SONOYTA, SONORA.' ),
        ( 92, 18, N'51', N'LAZARO CARDENAS, LAZARO CARDENAS, MICHOACAN.' ),
        ( 93, 18, N'52', N'MONTERREY, GENERAL MARIANO ESCOBEDO, NUEVO LEON.' ),
        ( 94, 18, N'53', N'CANCUN, CANCUN, QUINTANA ROO.' ),
        ( 95, 18, N'64', N'QUERÉTARO, EL MARQUÉS Y COLON, QUERÉTARO.' ),
        ( 96, 18, N'65', N'TOLUCA, TOLUCA, ESTADO DE MEXICO.' ),
        ( 97, 18, N'67', N'CHIHUAHUA, CHIHUAHUA, CHIHUAHUA.' ),
        ( 98, 18, N'73', N'AGUASCALIENTES, AGUASCALIENTES, AGUASCALIENTES.' ),
        ( 99, 18, N'75', N'PUEBLA, HEROICA PUEBLA DE ZARAGOZA, PUEBLA.' ),
        ( 100, 18, N'80', N'COLOMBIA, COLOMBIA, NUEVO LEON.' ),
        ( 101, 18, N'81', N'ALTAMIRA, ALTAMIRA, TAMAULIPAS.' ),
        ( 102, 18, N'82', N'CIUDAD CAMARGO, CIUDAD CAMARGO, TAMAULIPAS.' ),
        ( 103, 18, N'83', N'DOS BOCAS, PARAISO, TABASCO.' ),
        ( 104, 18, N'84', N'GUANAJUATO, SILAO, GUANAJUATO.' ),
        ( 105, 22, N'1', N'Enero' ),
        ( 106, 22, N'2', N'Febrero' ),
        ( 107, 22, N'3', N'Marzo' ),
        ( 108, 22, N'4', N'Abril' ),
        ( 109, 22, N'5', N'Mayo' ),
        ( 110, 22, N'6', N'Junio' ),
        ( 111, 22, N'7', N'Julio' ),
        ( 112, 22, N'8', N'Agosto' ),
        ( 113, 22, N'9', N'Septiembre' ),
        ( 114, 22, N'10', N'Octubre' ),
        ( 115, 22, N'11', N'Noviembre' ),
        ( 116, 22, N'12', N'Diciembre' ),
        ( 117, 30, N'C', N'Cliente' ),
        ( 118, 30, N'E', N'Emisor' ),
        ( 119, 31, N'PF', N'Persona Física' ),
        ( 120, 31, N'PM', N'Persona Moral' ),
        ( 121, 32, N'F', N'Facturación' ),
        ( 122, 37, N'1', N'Comprobante emitido con errores con relación' ),
        ( 123, 37, N'2', N'Comprobante emitido con errores sin relación' ),
        ( 124, 37, N'3', N'No se llevó acabo la operación' ),
        ( 125, 37, N'4', N'Operación nominativa relacionada en la factura' ),
        ( 126, 30, N'PAC', N'Proveedor PAC' ),
        ( 127, 13, N'H87', N'Pieza' );
SET IDENTITY_INSERT Clasificacion OFF;
DBCC CHECKIDENT ( 'dbo.Clasificacion', RESEED, 128);

SET IDENTITY_INSERT Correo ON;
INSERT  INTO dbo.Correo ( IdCorreo, Correo, IdClasificacion )
VALUES  ( 1, N'facturas@hotmail.com', 121 ),
        ( 2, N'facturacion@easy-rez.com', 121 );
SET IDENTITY_INSERT Correo OFF;
DBCC CHECKIDENT ( 'dbo.Correo', RESEED, 3);

INSERT  INTO Pais ( Pais )
VALUES  ( N'Afganistán' ),
        ( N'Albania' ),
        ( N'Alemania' ),
        ( N'Andorra' ),
        ( N'Angola' ),
        ( N'Anguila' ),
        ( N'Antártida' ),
        ( N'Antigua y Barbuda' ),
        ( N'Arabia Saudita' ),
        ( N'Argelia' ),
        ( N'Argentina' ),
        ( N'Armenia' ),
        ( N'Aruba' ),
        ( N'Australia' ),
        ( N'Austria' ),
        ( N'Azerbaiyán' ),
        ( N'Bélgica' ),
        ( N'Bahamas' ),
        ( N'Bahrein' ),
        ( N'Bangladesh' ),
        ( N'Barbados' ),
        ( N'Belice' ),
        ( N'Benín' ),
        ( N'Bhután' ),
        ( N'Bielorrusia' ),
        ( N'Birmania' ),
        ( N'Bolivia' ),
        ( N'Bosnia y Herzegovina' ),
        ( N'Botsuana' ),
        ( N'Brasil' ),
        ( N'Brunéi' ),
        ( N'Bulgaria' ),
        ( N'Burkina Faso' ),
        ( N'Burundi' ),
        ( N'Cabo Verde' ),
        ( N'Camboya' ),
        ( N'Camerún' ),
        ( N'Canadá' ),
        ( N'Chad' ),
        ( N'Chile' ),
        ( N'China' ),
        ( N'Chipre' ),
        ( N'Ciudad del Vaticano' ),
        ( N'Colombia' ),
        ( N'Comoras' ),
        ( N'República del Congo' ),
        ( N'República Democrática del Congo' ),
        ( N'Corea del Norte' ),
        ( N'Corea del Sur' ),
        ( N'Costa de Marfil' ),
        ( N'Costa Rica' ),
        ( N'Croacia' ),
        ( N'Cuba' ),
        ( N'Curazao' ),
        ( N'Dinamarca' ),
        ( N'Dominica' ),
        ( N'Ecuador' ),
        ( N'Egipto' ),
        ( N'El Salvador' ),
        ( N'Emiratos Árabes Unidos' ),
        ( N'Eritrea' ),
        ( N'Eslovaquia' ),
        ( N'Eslovenia' ),
        ( N'España' ),
        ( N'Estados Unidos de América' ),
        ( N'Estonia' ),
        ( N'Etiopía' ),
        ( N'Filipinas' ),
        ( N'Finlandia' ),
        ( N'Fiyi' ),
        ( N'Francia' ),
        ( N'Gabón' ),
        ( N'Gambia' ),
        ( N'Georgia' ),
        ( N'Ghana' ),
        ( N'Gibraltar' ),
        ( N'Granada' ),
        ( N'Grecia' ),
        ( N'Groenlandia' ),
        ( N'Guadalupe' ),
        ( N'Guam' ),
        ( N'Guatemala' ),
        ( N'Guayana Francesa' ),
        ( N'Guernsey' ),
        ( N'Guinea' ),
        ( N'Guinea Ecuatorial' ),
        ( N'Guinea-Bissau' ),
        ( N'Guyana' ),
        ( N'Haití' ),
        ( N'Honduras' ),
        ( N'Hong kong' ),
        ( N'Hungría' ),
        ( N'India' ),
        ( N'Indonesia' ),
        ( N'Irán' ),
        ( N'Irak' ),
        ( N'Irlanda' ),
        ( N'Isla Bouvet' ),
        ( N'Isla de Man' ),
        ( N'Isla de Navidad' ),
        ( N'Isla Norfolk' ),
        ( N'Islandia' ),
        ( N'Islas Bermudas' ),
        ( N'Islas Caimán' ),
        ( N'Islas Cocos (Keeling)' ),
        ( N'Islas Cook' ),
        ( N'Islas de Åland' ),
        ( N'Islas Feroe' ),
        ( N'Islas Georgias del Sur y Sandwich del Sur' ),
        ( N'Islas Heard y McDonald' ),
        ( N'Islas Maldivas' ),
        ( N'Islas Malvinas' ),
        ( N'Islas Marianas del Norte' ),
        ( N'Islas Marshall' ),
        ( N'Islas Pitcairn' ),
        ( N'Islas Salomón' ),
        ( N'Islas Turcas y Caicos' ),
        ( N'Islas Ultramarinas Menores de Estados Unidos' ),
        ( N'Islas Vírgenes Británicas' ),
        ( N'Islas Vírgenes de los Estados Unidos' ),
        ( N'Israel' ),
        ( N'Italia' ),
        ( N'Jamaica' ),
        ( N'Japón' ),
        ( N'Jersey' ),
        ( N'Jordania' ),
        ( N'Kazajistán' ),
        ( N'Kenia' ),
        ( N'Kirguistán' ),
        ( N'Kiribati' ),
        ( N'Kuwait' ),
        ( N'Líbano' ),
        ( N'Laos' ),
        ( N'Lesoto' ),
        ( N'Letonia' ),
        ( N'Liberia' ),
        ( N'Libia' ),
        ( N'Liechtenstein' ),
        ( N'Lituania' ),
        ( N'Luxemburgo' ),
        ( N'México' ),
        ( N'Mónaco' ),
        ( N'Macao' ),
        ( N'Macedônia' ),
        ( N'Madagascar' ),
        ( N'Malasia' ),
        ( N'Malawi' ),
        ( N'Mali' ),
        ( N'Malta' ),
        ( N'Marruecos' ),
        ( N'Martinica' ),
        ( N'Mauricio' ),
        ( N'Mauritania' ),
        ( N'Mayotte' ),
        ( N'Micronesia' ),
        ( N'Moldavia' ),
        ( N'Mongolia' ),
        ( N'Montenegro' ),
        ( N'Montserrat' ),
        ( N'Mozambique' ),
        ( N'Namibia' ),
        ( N'Nauru' ),
        ( N'Nepal' ),
        ( N'Nicaragua' ),
        ( N'Niger' ),
        ( N'Nigeria' ),
        ( N'Niue' ),
        ( N'Noruega' ),
        ( N'Nueva Caledonia' ),
        ( N'Nueva Zelanda' ),
        ( N'Omán' ),
        ( N'Países Bajos' ),
        ( N'Pakistán' ),
        ( N'Palau' ),
        ( N'Palestina' ),
        ( N'Panamá' ),
        ( N'Papúa Nueva Guinea' ),
        ( N'Paraguay' ),
        ( N'Perú' ),
        ( N'Polinesia Francesa' ),
        ( N'Polonia' ),
        ( N'Portugal' ),
        ( N'Puerto Rico' ),
        ( N'Qatar' ),
        ( N'Reino Unido' ),
        ( N'República Centroafricana' ),
        ( N'República Checa' ),
        ( N'República Dominicana' ),
        ( N'República de Sudán del Sur' ),
        ( N'Reunión' ),
        ( N'Ruanda' ),
        ( N'Rumanía' ),
        ( N'Rusia' ),
        ( N'Sahara Occidental' ),
        ( N'Samoa' ),
        ( N'Samoa Americana' ),
        ( N'San Bartolomé' ),
        ( N'San Cristóbal y Nieves' ),
        ( N'San Marino' ),
        ( N'San Martín (Francia)' ),
        ( N'San Pedro y Miquelón' ),
        ( N'San Vicente y las Granadinas' ),
        ( N'Santa Elena' ),
        ( N'Santa Lucía' ),
        ( N'Santo Tomé y Príncipe' ),
        ( N'Senegal' ),
        ( N'Serbia' ),
        ( N'Seychelles' ),
        ( N'Sierra Leona' ),
        ( N'Singapur' ),
        ( N'Sint Maarten' ),
        ( N'Siria' ),
        ( N'Somalia' ),
        ( N'Sri lanka' ),
        ( N'Sudáfrica' ),
        ( N'Sudán' ),
        ( N'Suecia' ),
        ( N'Suiza' ),
        ( N'Surinám' ),
        ( N'Svalbard y Jan Mayen' ),
        ( N'Swazilandia' ),
        ( N'Tayikistán' ),
        ( N'Tailandia' ),
        ( N'Taiwán' ),
        ( N'Tanzania' ),
        ( N'Territorio Británico del Océano Índico' ),
        ( N'Territorios Australes y Antárticas Franceses' ),
        ( N'Timor Oriental' ),
        ( N'Togo' ),
        ( N'Tokelau' ),
        ( N'Tonga' ),
        ( N'Trinidad y Tobago' ),
        ( N'Tunez' ),
        ( N'Turkmenistán' ),
        ( N'Turquía' ),
        ( N'Tuvalu' ),
        ( N'Ucrania' ),
        ( N'Uganda' ),
        ( N'Uruguay' ),
        ( N'Uzbekistán' ),
        ( N'Vanuatu' ),
        ( N'Venezuela' ),
        ( N'Vietnam' ),
        ( N'Wallis y Futuna' ),
        ( N'Yemen' ),
        ( N'Yibuti' ),
        ( N'Zambia' ),
        ( N'Zimbabue' );

SET IDENTITY_INSERT dbo.Direccion ON; 
INSERT  INTO Direccion ( IdDireccion, Linea1, Linea2, Referencia, CodigoPostal, IdPais )
VALUES  ( 1, N'Linea1', N'Linea2', N'Referencia', 24810, 141 );
SET IDENTITY_INSERT dbo.Direccion OFF; 


SET IDENTITY_INSERT ArtefactoCFDI ON;
INSERT  INTO dbo.ArtefactoCFDI ( IdArtefactoCFDI, Tipo, Clave, Descripcion, ApTipoPersona )
VALUES  ( 1, 12, N'601', N'General de Ley Personas Morales', 15 ),
        ( 2, 12, N'603', N'Personas Morales con Fines no Lucrativos', 15 ),
        ( 3, 12, N'605', N'Sueldos y Salarios e Ingresos Asimilados a Salarios', 14 ),
        ( 4, 12, N'606', N'Arrendamiento', 14 ),
        ( 5, 12, N'607', N'Régimen de Enajenación o Adquisición de Bienes', 14 ),
        ( 6, 12, N'608', N'Demás ingresos', 14 ),
        ( 7, 12, N'610', N'Residentes en el Extranjero sin Establecimiento Permanente en México', 16 ),
        ( 8, 12, N'611', N'Ingresos por Dividendos (socios y accionistas)', 14 ),
        ( 9, 12, N'612', N'Personas Físicas con Actividades Empresariales y Profesionales', 14 ),
        ( 10, 12, N'614', N'Ingresos por intereses', 14 ),
        ( 11, 12, N'615', N'Régimen de los ingresos por obtención de premios', 14 ),
        ( 12, 12, N'616', N'Sin obligaciones fiscales', 14 ),
        ( 13, 12, N'620', N'Sociedades Cooperativas de Producción que optan por diferir sus ingresos', 15 ),
        ( 14, 12, N'621', N'Incorporación Fiscal', 14 ),
        ( 15, 12, N'622', N'Actividades Agrícolas, Ganaderas, Silvícolas y Pesqueras', 15 ),
        ( 16, 12, N'623', N'Opcional para Grupos de Sociedades', 15 ),
        ( 17, 12, N'624', N'Coordinados', 15 ),
        ( 18, 12, N'625', N'Régimen de las Actividades Empresariales con ingresos a través de Plataformas Tecnológicas',
          14 ),
        ( 19, 12, N'626', N'Régimen Simplificado de Confianza', 16 ),
        ( 20, 13, N'G01', N'Adquisición de mercancías.', 16 ),
        ( 21, 13, N'G02', N'Devoluciones, descuentos o bonificaciones.', 16 ),
        ( 22, 13, N'G03', N'Gastos en general.', 16 ),
        ( 23, 13, N'I01', N'Construcciones.', 16 ),
        ( 24, 13, N'I02', N'Mobiliario y equipo de oficina por inversiones.', 16 ),
        ( 25, 13, N'I03', N'Equipo de transporte.', 16 ),
        ( 26, 13, N'I04', N'Equipo de computo y accesorios.', 16 ),
        ( 27, 13, N'I05', N'Dados, troqueles, moldes, matrices y herramental.', 16 ),
        ( 28, 13, N'I06', N'Comunicaciones telefónicas.', 16 ),
        ( 29, 13, N'I07', N'Comunicaciones satelitales.', 16 ),
        ( 30, 13, N'I08', N'Otra maquinaria y equipo.', 16 ),
        ( 31, 13, N'D01', N'Honorarios médicos, dentales y gastos hospitalarios.', 14 ),
        ( 32, 13, N'D02', N'Gastos médicos por incapacidad o discapacidad.', 14 ),
        ( 33, 13, N'D03', N'Gastos funerales.', 14 ),
        ( 34, 13, N'D04', N'Donativos.', 14 ),
        ( 35, 13, N'D05', N'Intereses reales efectivamente pagados por créditos hipotecarios (casa habitación).', 14 ),
        ( 36, 13, N'D06', N'Aportaciones voluntarias al SAR.', 14 ),
        ( 37, 13, N'D07', N'Primas por seguros de gastos médicos.', 14 ),
        ( 38, 13, N'D08', N'Gastos de transportación escolar obligatoria.', 14 ),
        ( 39, 13, N'D09', N'Depósitos en cuentas para el ahorro, primas que tengan como base planes de pensiones.', 14 ),
        ( 40, 13, N'D10', N'Pagos por servicios educativos (colegiaturas).', 14 ),
        ( 41, 13, N'S01', N'Sin efectos fiscales.  ', 16 ),
        ( 42, 13, N'CP01', N'Pagos', 16 ),
        ( 43, 13, N'CN01', N'Nómina', 14 );
SET IDENTITY_INSERT ArtefactoCFDI OFF;
DBCC CHECKIDENT ( 'dbo.ArtefactoCFDI', RESEED, 44);

SET IDENTITY_INSERT DatosFacturacion ON;
INSERT  INTO DatosFacturacion ( IdDatoFacturacion, TipoPersona, RFC, RazonSocial, MetodoPago, UsoCFDI, RegimenFiscal,
                                IdDireccion, EsSucursal )
VALUES  ( 1, 119, N'XAXX010101000', N'Público en general', 6, 22, 9, 1, 0 ),
        ( 2, 119, N'XEXX010101000', N'Público en general extranjero', 6, 22, 9, 1, 0 ),
        ( 3, 120, N'ESO091210GK6‎', N'EZ SOLUTIONS S DE RL DE CV', 6, 22, 13, 1, 0 ),
        ( 4, 120, N'RCH020621SP2', N'REACHCORE', 6, 22, 13, 1, 0 );
SET IDENTITY_INSERT DatosFacturacion OFF;
DBCC CHECKIDENT ( 'dbo.DatosFacturacion', RESEED, 5);

SET IDENTITY_INSERT RelDatosFacturacion_Correos ON;
INSERT  INTO RelDatosFacturacion_Correos ( IdRelDF_C, IdDatoFacturacion, IdCorreo )
VALUES  ( 1, 1, 1 ),
        ( 2, 2, 1 ),
        ( 3, 3, 2 ),
        ( 4, 4, 2 );
SET IDENTITY_INSERT RelDatosFacturacion_Correos OFF;
DBCC CHECKIDENT ( 'dbo.RelDatosFacturacion_Correos', RESEED, 5);


SET IDENTITY_INSERT EntidadTributaria ON;
INSERT  INTO EntidadTributaria ( IdEntidadTributaria, IdClasificacion )
VALUES  ( 1, 118 ),
        ( 2, 117 ),
        ( 3, 126 );	
SET IDENTITY_INSERT EntidadTributaria OFF;
DBCC CHECKIDENT ( 'dbo.EntidadTributaria', RESEED, 4);


SET IDENTITY_INSERT dbo.RelEntidadTriburaria_DatosFacturacion ON;
INSERT  INTO RelEntidadTriburaria_DatosFacturacion ( IdRelET_DF, IdEntidadTributaria, IdDatoFacturacion )
VALUES  ( 1, 2, 3 ),
        ( 2, 2, 1 ),
        ( 3, 1, 4 ),
        ( 4, 3, 2 );
SET IDENTITY_INSERT dbo.RelEntidadTriburaria_DatosFacturacion OFF;
DBCC CHECKIDENT ( 'dbo.RelEntidadTriburaria_DatosFacturacion', RESEED, 5);

