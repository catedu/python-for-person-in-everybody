# [Listas] (# listas)



## [Una lista es una secuencia] (# a-list-is-a-sequence)

Como una cadena, una ** lista ** es una secuencia de valores. En una cadena, los valores son caracteres; En una lista, pueden ser de cualquier tipo. Los valores en la lista se denominan ** elementos ** o, a veces, ** elementos **.



Hay varias formas de crear una nueva lista; lo más simple es encerrar los elementos entre corchetes (`[` y `]`):

```[10, 20, 30, 40]
['crunchy frog', 'ram bladder', 'lark vomit']
```
El primer ejemplo es una lista de cuatro enteros. El segundo es una lista de tres cuerdas. Los elementos de una lista no tienen que ser del mismo tipo. La siguiente lista contiene una cadena, un flotador, un entero y (¡lo!) Otra lista:

```['spam', 2.0, 5, [10, 20]]
```
Una lista dentro de otra lista está ** anidada **.



Una lista que no contiene elementos se llama una lista vacía; puede crear uno con corchetes vacíos, `[]`.



Como es de esperar, puede asignar valores de lista a variables:



## [Las listas son mutables] (# lists-are-mutable)



La sintaxis para acceder a los elementos de una lista es la misma que para acceder a los caracteres de una cadena: el operador de corchete. La expresión dentro de los paréntesis especifica el índice. Recuerda que los índices comienzan en 0:

```>>> print(cheeses[0])
Cheddar
```
A diferencia de las cadenas, las listas son mutables porque puede cambiar el orden de los elementos en una lista o reasignar un elemento en una lista. Cuando el operador de corchetes aparece en el lado izquierdo de una asignación, identifica el elemento de la lista que se asignará.



El elemento one-eth de `numbers`, que solía ser 123, ahora es 5.



Puede pensar en una lista como una relación entre índices y elementos. Esta relación se llama ** mapeo **; cada índice "mapea" a uno de los elementos.



Los índices de lista funcionan de la misma manera que los índices de cadena:

- Cualquier expresión entera puede ser usada como un índice.
- Si intentas leer o escribir un elemento que no existe, obtienes un 'IndexError'.



- Si un índice tiene un valor negativo, cuenta hacia atrás desde el final de la lista.



El operador `in` también funciona en listas.

## [Atravesando una lista] (# traversing-a-list)



La forma más común de recorrer los elementos de una lista es con un bucle `for`. La sintaxis es la misma que para las cadenas:

```for cheese in cheeses:
    print(cheese)
```
Esto funciona bien si solo necesita leer los elementos de la lista. Pero si desea escribir o actualizar los elementos, necesita los índices. Una forma común de hacerlo es combinar las funciones `range` y` len`:



```for i in range(len(numbers)):
    numbers[i] = numbers[i] * 2
```
Este bucle atraviesa la lista y actualiza cada elemento. `len` devuelve el número de elementos en la lista. `range` devuelve una lista de índices de 0 a ** n ** - 1, donde ** n ** es la longitud de la lista. Cada vez que pasa por el bucle, `i` obtiene el índice del siguiente elemento. La declaración de asignación en el cuerpo usa `i` para leer el valor antiguo del elemento y para asignar el nuevo valor.



Un bucle `for` sobre una lista vacía nunca ejecuta el cuerpo:

```for x in empty:
    print('This never happens.')
```
Aunque una lista puede contener otra lista, la lista anidada todavía cuenta como un elemento único. La longitud de esta lista es cuatro:



```['spam', 1, ['Brie', 'Roquefort', 'Pol le Veq'], [1, 2, 3]]
```
## [Operaciones de lista] (# lista-operaciones)



El operador `+` concatena las listas:



Del mismo modo, el operador repite una lista un número determinado de veces:



El primer ejemplo se repite cuatro veces. El segundo ejemplo repite la lista tres veces.

## [Listar segmentos] (# list-slices)



El operador de corte también funciona en listas:

Si omite el primer índice, la división comienza al principio. Si omites el segundo, la rebanada va al final. Entonces, si omite ambos, la porción es una copia de toda la lista.



```>>> t[:]
['a', 'b', 'c', 'd', 'e', 'f']
```
Dado que las listas son mutables, a menudo es útil hacer una copia antes de realizar operaciones de plegado, huso o mutilación de listas.



Un operador de sector en el lado izquierdo de una asignación puede actualizar varios elementos:



## [Métodos de lista] (# métodos de lista)



Python proporciona métodos que operan en listas. Por ejemplo, `append` agrega un nuevo elemento al final de una lista:



`extend` toma una lista como argumento y agrega todos los elementos:



Este ejemplo deja `t2` sin modificar.

`sort` organiza los elementos de la lista de bajo a alto:


La mayoría de los métodos de lista son nulos; modifican la lista y devuelven `Ninguno`. Si accidentalmente escribe `t = t.sort ()`, quedará decepcionado con el resultado.



## [Eliminando elementos] (# eliminando elementos)



Hay varias formas de eliminar elementos de una lista. Si conoce el índice del elemento que desea, puede usar `pop`:



`pop` modifica la lista y devuelve el elemento que fue eliminado. Si no proporciona un índice, elimina y devuelve el último elemento.

Si no necesita el valor eliminado, puede usar el operador `del`:



Si conoce el elemento que desea eliminar (pero no el índice), puede usar `remove`:



El valor de retorno de `remove` es` None`.


Para eliminar más de un elemento, puedes usar `del` con un índice de división:

Como es habitual, la división selecciona todos los elementos hasta el segundo índice, pero sin incluirlo.

## [Listas y funciones] (# listas y funciones)

Hay una serie de funciones incorporadas que se pueden usar en listas que le permiten mirar rápidamente una lista sin escribir sus propios bucles:

La función `sum ()` solo funciona cuando los elementos de la lista son números. Las otras funciones (`max ()`, `len ()`, etc.) funcionan con listas de cadenas y otros tipos que pueden ser comparables.

Podríamos reescribir un programa anterior que calculó el promedio de una lista de números ingresados ​​por el usuario usando una lista.

Primero, el programa para calcular un promedio sin una lista:

En este programa, tenemos las variables `count` y` total` para mantener el número y el total acumulado de los números del usuario, ya que repetidamente pedimos al usuario un número.

Simplemente podríamos recordar cada número cuando el usuario lo ingresó y usar funciones integradas para calcular la suma y el conteo al final.

Hacemos una lista vacía antes de que comience el ciclo, y luego cada vez que tenemos un número, lo agregamos a la lista. Al final del programa, simplemente calculamos la suma de los números en la lista y la dividimos por el recuento de los números en la lista para obtener el promedio.

## [Listas y cadenas] (# listas y cadenas)



Una cadena es una secuencia de caracteres y una lista es una secuencia de valores, pero una lista de caracteres no es lo mismo que una cadena. Para convertir de una cadena a una lista de caracteres, puedes usar `list`:



Como `list` es el nombre de una función incorporada, debes evitar usarla como nombre de variable. También evito la letra `l` porque se parece demasiado al número` 1`. Así que por eso uso `t`.

La función `list` rompe una cadena en letras individuales. Si desea dividir una cadena en palabras, puede usar el método `split`:


Una vez que haya usado `split` para dividir la cadena en una lista de palabras, puede usar el operador de índice (corchete) para mirar una palabra en particular en la lista.

Puede llamar a `split` con un argumento opcional llamado ** delimitador ** que especifica qué caracteres usar como límites de palabras. El siguiente ejemplo usa un guión como delimitador:

