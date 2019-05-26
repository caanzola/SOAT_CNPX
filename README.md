# SOAT CNPX

### Descripción general

Este es un sistema que permite la generación de seguros de SOAT para un vehículo por medio de una serie de formularios. En estos formularios se captura la información del vehículo, de la persona que solicita el seguro y de la tarjeta de crédito con la que se realizará el pago del seguro.

### Despliegue de la aplicación

Esta aplicación se encuentra desplegada en el siguiente host público ofrecido por Heroku:
https://soatcnpx.herokuapp.com/

### Manual de uso

La página principal ofrece dos funcionalidades: iniciar sesión o registrarse como un usuario nuevo. El sistema tiene dos tipos de usuarios:

1. Cliente (Representa a un cliente que quiere solicitar un seguro SOAT para un vehículo)
2. Administrador (Representa a un administrador del sistema)

Cuando un usuario cliente se registra o inicia sesión, es redirigido a una vista con el formulario donde puede solicitar un seguro SOAT. Este formulario se divide en tres secciones: los datos del vehículo, los datos de la persona y los datos de la tarjeta de crédito para la transacción. Cada sección se va mostrando cuando la anterior ha sido diligenciada correctamente, de manera que para avanzar a la siguiente sección el usuario debe seleccionar la opción validar, para validar los datos ingresados. Finalmente cuando todos los datos han sido validados, el usuario debe seleccionar la opción solicitar para realizar la solicitud y luego será direccionado a una vista donde podrá ver el detalle de la solicitud hecha, adicionalmente, en esta vista será descargado un archivo PDF con el resúmen de la compra realizada. También se supone que debe enviar un correo al usuario, notificandole de la recepción de la solicitud, pero desafortunadamente en las pruebas realizadas no se recibió ningún correo, pese a que el archivo de logs registra que sí se envió, como se puede apreciar en esta imagen.

![](https://github.com/caanzola/DalgoProyect/blob/master/Captura%20de%20Pantalla%202019-05-26%20a%20la(s)%201.34.20%20a.%20m..png?raw=true)

El sistema verifica si la placa ingresada en el formulario tiene un SOAT asociado, en cuyo caso, informa al tomador que el vehículo ya está asegurado.

![](https://github.com/caanzola/DalgoProyect/blob/master/Captura%20de%20Pantalla%202019-05-26%20a%20la(s)%206.00.28%20p.%20m..png?raw=true)

En caso de que el usuario seleccione la opción aceptar, el sistema procede con la solicitud y genera un nuevo seguro asociado a la misma placa pero ahora con un nuevo periodo de vigencia que inicia en el día siguiente a la fecha de vencimiento del del seguro actual.

Por otro lado, un usuario administrador puede ver una lista con todas las solicitudes hechas por los usuarios y puede ver el detalle de cada una de estas solicitudes.

### API RESTFul

Los servicios estan expuestos a través de una API RESTFul que puede ser probada con herramientas como Postman

