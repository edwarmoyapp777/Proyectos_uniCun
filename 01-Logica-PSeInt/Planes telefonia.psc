Algoritmo PlanTelecomunicacionesCorto
    // DEFINICIÓN DE VARIABLES
    Definir opcionMenu, opcionInterna, cantRepetidores, cantServicios Como Entero
    Definir cTotal, cInternet, cMovil, cTv, cStream, cEquipos, dcto, totalPagar Como Real
    Definir cliente, confirmacion Como Caracter
    Definir continuar Como Logico
    
    // INICIALIZACIÓN
    cTotal <- 0; cInternet <- 0; cMovil <- 0; cTv <- 0; cStream <- 0; cEquipos <- 0
    cantServicios <- 0; continuar <- Verdadero
    
    Escribir "Ingrese su nombre para iniciar:"
    Leer cliente
    
    // CICLO PRINCIPAL (Mientras)
    Mientras continuar Hacer
	 Limpiar Pantalla
        Escribir "=== SIMULADOR TELECOMUNICACIONES - CLIENTE: ", cliente, " ==="
        Escribir "Subtotal actual: $", cTotal, " COP"
        Escribir "--------------------------------------------------"
        Escribir "1. Fibra Optica | 2. Plan Movil | 3. Television | 4. Streaming"
        Escribir "5. Repetidores  | 6. Ver Factura| 7. Descuentos | 8. Salir"
        Escribir "=================================================="
        Leer opcionMenu
        
        // ESTRUCTURA SEGÚN (8 opciones)
        Segun opcionMenu Hacer
            1:
                Escribir "1. 100M ($50000) | 2. 300M ($80000) | 3. 500M ($110000)"
                Leer opcionInterna
                Si opcionInterna == 1 Entonces cInternet <- 50000
                Sino
                    Si opcionInterna == 2 Entonces cInternet <- 80000
                    Sino
                        Si opcionInterna == 3 Entonces cInternet <- 110000
                        Sino Escribir "Invalido"
                        FinSi
                    FinSi
                FinSi
            2:
                Escribir "1. Basico ($30000) | 2. Intermedio ($45000) | 3. Ilimitado ($65000)"
                Leer opcionInterna
                Si opcionInterna == 1 Entonces cMovil <- 30000
                Sino
                    Si opcionInterna == 2 Entonces cMovil <- 45000
                    Sino
                        Si opcionInterna == 3 Entonces cMovil <- 65000
                        Sino Escribir "Invalido"
                        FinSi
                    FinSi
                FinSi
            3:
                Escribir "1. Familiar ($40000) | 2. Premium ($60000)"
                Leer opcionInterna
                Si opcionInterna == 1 Entonces cTv <- 40000
                Sino
                    Si opcionInterna == 2 Entonces cTv <- 60000
                    Sino Escribir "Invalido"
                    FinSi
                FinSi
            4:
                Escribir "1. Netflix ($25000) | 2. Disney+ ($35000) | 3. Full ($50000)"
                Leer opcionInterna
                Si opcionInterna == 1 Entonces cStream <- 25000
                Sino
                    Si opcionInterna == 2 Entonces cStream <- 35000
                    Sino
                        Si opcionInterna == 3 Entonces cStream <- 50000
                        Sino Escribir "Invalido"
                        FinSi
                    FinSi
                FinSi
            5:
                // CICLO DE VALIDACIÓN (Repetir-Hasta)
                Repetir
                    Escribir "Ingrese cantidad de repetidores (0 a 3):"
                    Leer cantRepetidores
                Hasta Que cantRepetidores >= 0 Y cantRepetidores <= 3
                cEquipos <- cantRepetidores * 15000
            6:
                Escribir "--- RESUMEN ACTUAL ---"
                Escribir "Internet: $", cInternet, " | Movil: $", cMovil
                Escribir "TV: $", cTv, " | Streaming: $", cStream, " | Equipos: $", cEquipos
            7:
                cantServicios <- 0
                Si cInternet > 0 Entonces cantServicios <- cantServicios + 1; FinSi
                Si cMovil > 0    Entonces cantServicios <- cantServicios + 1; FinSi
                Si cTv > 0       Entonces cantServicios <- cantServicios + 1; FinSi
                Si cStream > 0   Entonces cantServicios <- cantServicios + 1; FinSi
                
                // CONDICIONALES ANIDADOS
                Si cantServicios == 2 Entonces
                    dcto <- cTotal * 0.05
                    Escribir "Descuento del 5% aplicado."
                Sino
                    Si cantServicios == 3 Entonces
                        dcto <- cTotal * 0.12
                        Escribir "Descuento del 12% aplicado."
                    Sino
                        Si cantServicios == 4 Entonces
                            dcto <- cTotal * 0.20
                            Escribir "Descuento del 20% aplicado!"
                        Sino
                            dcto <- 0
                            Escribir "Sin descuentos."
                        FinSi
                    FinSi
                FinSi
            8:
                Escribir "¿Desea salir del simulador? (S/N)"
                Leer confirmacion
                Si confirmacion == "S" O confirmacion == "s" Entonces
                    continuar <- Falso
                    totalPagar <- cTotal - dcto
                    Escribir "TOTAL NETO A PAGAR: $", totalPagar, " COP"
                FinSi
            De Otro Modo:
                Escribir "Opcion no valida."
		FinSegun
        
        // Mueve esta línea de suma aquí arriba, justo después de cerrar el FinSegun
        cTotal <- cInternet + cMovil + cTv + cStream + cEquipos
        
        Escribir ""
        Escribir "Presione una tecla para continuar..."
        Esperar Tecla
    FinMientras
FinAlgoritmo