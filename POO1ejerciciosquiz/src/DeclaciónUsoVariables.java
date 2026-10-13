public class DeclaciónUsoVariables {
    public static void main(String[] args) {//metodo pricipal

        //Tema: Tienda Tecnologica

        /*Una tienda de tecnologias necesita registrar temporalmente la informacion
          de una compra realizada por un cliente
         */

        //Declaraión de las varibles

        String cliente = "Andres Gómez";
        String producto = "Teclado Mecánico";
        String ciudadEntrega = "Bogotá";

        int precioUnitario = 180000;
        int cantidad = 2;

        boolean tieneMembrecia = true;


        //Impresión de texto y variables

        System.out.println("============================");
        System.out.println("     TIENDA TECNOLÓGICA    ");
        System.out.println("============================");
        System.out.println("CLIENTE: " + cliente);
        System.out.println("PRODUCTO: " + producto);
        System.out.println("PRECIO UNITARIO: $" + precioUnitario);
        System.out.println("CANTIDAD: " + cantidad);
        System.out.println("CIUDAD DE ENTREGA: " + ciudadEntrega);
        System.out.println("¿TIENE MEMBRESÍA?: " + tieneMembrecia);
        System.out.println("=============================");

        // calculo requerido

        int totalpagar = precioUnitario * cantidad;

        System.out.println("=============================");

        System.out.println("TOTAL A PAGAR: $" + totalpagar);

        System.out.println("=============================");

    }

}
