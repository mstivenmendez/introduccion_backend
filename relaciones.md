Diseñar una base de datos para una tienda de libros que gestione el inventario, ventas y clientes. La base de datos debe permitir el registro y gestión de libros, autores, clientes, pedidos y transacciones de compra. Debes crear un diagrama UML E-R que represente la estructura de la base de datos y entregar una documentación detallada que explique las decisiones de diseño, las relaciones entre las tablas y las restricciones impuestas.



Requerimientos:


### Libros:

Un libro tiene un título, uno o más autores, editorial, categoría, fecha de publicación, ISBN único, precio y cantidad en stock.
Permitir buscar libros por título, autor, categoría o ISBN.

# esta es una tabla que trae atributos propios
tenemos que crear una tabla llamada categorias para que esos datos los comparta con ella y tambien una tabla que lleva la editoria,

# esta tabla esta relacionada con una pedido_libro ya que un libro puede tener varios pedidos y un pedido puede tener varios libros entonces se crea una tabla intermedia para relacionar N:N




### Autores:

Un autor tiene un nombre, fecha de nacimiento y nacionalidad.
Un libro puede tener varios autores y un autor puede haber escrito varios libros.

autores tiene atributos propios 


### Clientes:

Los clientes se registran con nombre, correo electrónico, teléfono y dirección.
Un cliente puede realizar varios pedidos.


### Pedidos:

Un pedido puede incluir múltiples libros, con cantidades específicas.
Asociar cada pedido a un cliente y una fecha de compra.
Gestionar el estado del pedido (pendiente, procesado, completado).


### Transacciones:

Cada pedido genera una transacción con el método de pago (tarjeta de crédito, PayPal, etc.), el monto total y la fecha de la transacción.

# tiene una tabla que depende de pagos, para metodos de pago para que sea intermedia.

### trabajo 

# creacion de las tablas  para la biblioteca de sofia

# tambien se creo una tabla llamada inventario el cual nos ayuda a saber que cantidad de libros tiene la libreria  y en precio para que esta no afecte libros cuando el precio cambie