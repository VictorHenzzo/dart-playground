# DESAFIO MASTERCLASS

Estruturar os dados importa!
Existe várias situações em que o desenvolvedor não recebe os dados da maneira necessária para exibição. Então cabe a ele ordenar os dados.


Ordene uma lista onde os próprios elementos tenham a informação sobre o elemento anterior. Naturalmente o primeiro elemento tem o valor do elemento anterior como null.

Ex:
[
   Obj(id: “jshshe”, name: “A”, parentId: “iwndmn“),
   Obj(id: “urodne”, name: “A”, parentId: “qerispf”),
   Obj(id: “oqndie”, name: “A”, parentId: null),
   Obj(id: “iwndmn”, name: “A”, parentId: “oqndie”),
   Obj(id: “qienfiw”, name: “A”, parentId: “urodne”),
   Obj(id: “qerispf”, name: “A”, parentId: “jshshe”),
];


DICA: existe uma propriedade chamada sort, mas não se prenda a isso.

# Abordagem definida

Função principal devolve uma lista de _CustomObj

### Função principal
1. Deve instanciar uma lista que sera o retorno
2. Deve chamar a função auxiliar para descobrir o index do próximo elemento a ser adicionado na lista ordenada
3. Com o index, deve adicionar ao final da lista ordenada
4. Então deve remover o item da lista principal
3. Enquanto a lista principal não estiver vazia, deve repetir os passos 2,3 e 4 

### Função auxiliar
1. OK - Essa função deve receber uma lista de _CustomObj
2. OK - Além da lista, deve existir um parâmetro nulable id
3. OK - Caso o id não seja passado, a função deve devolver o index onde parentId é nulo
4. OK - Caso o id seja passado, a função deve devolver o index onde parentId é igual ao passado
