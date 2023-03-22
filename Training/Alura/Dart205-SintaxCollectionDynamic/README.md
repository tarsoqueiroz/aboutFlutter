# Dart: sintaxe, coleções e dinamismo

> `https://cursos.alura.com.br/course/dart-sintaxe-colecoes-dinamismo`

## Faça esse curso de Flutter e

- Entenda os conceitos de sintaxe e semântica e sua aplicação na área de programação
- Conheça a ferramenta Enum para tornar as comparações mais legíveis e eficientes
- Utilize a estrutura Switch para gerar comparações mais eficientes no código
- Saiba o que são coleções, iterable, set e map e sua importância no desenvolvimento mobile
- Entenda os conceitos de público e privado em Dart e como aplicá-los no código
- Aplique Setter e Getter para fazer operações com informações privadas no código
- Aumente o nível dos seus códigos com conceitos teóricos essenciais para seu dia a dia de trabalho

## Sintaxe

### Orientações iniciais

- Pré-requisito

Neste curso, assumimos que você conheça o conteúdo apresentado nos cursos a seguir:

- [Dart: criando e manipulando variáveis e listas](https://cursos.alura.com.br/course/dart-variaveis-listas); e
- [Dart: entendendo a Orientação a Objetos](https://cursos.alura.com.br/course/dart-entendendo-orientacao-objetos).

Caso você não tenha feito os cursos, mas acredita que possa começar a partir daqui, fique à vontade para continuar. Porém, se tiver algum conteúdo que não foi explicado com tanta atenção, muito provavelmente esse conteúdo já foi explicado em um desses cursos.

De qualquer forma, você pode entrar em contato conosco por meio do fórum.

- Projeto

Não usaremos um projeto de base nesse curso. O progresso de cada aula será disponibilizado no começo da aula seguinte, e o projeto final será disponibilizado no final do curso.

- Como o curso está organizado

Cada aula vai ter vídeos e exercícios, sendo que cada vídeo vai manter, pelo menos, um exercício. As aulas estão divididas pelos temas de Sintaxe, Coleções, Dinamismo e Encapsulamento.

### Definindo sintaxe

Vimos que tanto nas linguagens naturais quanto nas linguagens de programação, a sintaxe é essencial para a boa comunicação.

Pensando nisso, dentre as definições abaixo, quais melhor caracterizam a definição vista de “Sintaxe”?

- Sintaxe é uma definição arbitrária da ordem de aparição dos termos em uma linguagem.
- Sintaxe é um modelo de estrutura que toda linguagem de programação deve seguir para comunicar-se umas com as outras.
- **Sintaxe é um conjunto de normas que coordenam e estruturam a construção das ferramentas da linguagem, como variáveis, funções, classes, operadores, condicionais e todo o resto.**
  - *Perfeito! Sem esse conjunto de normas, não seria possível comunicar, com a máquina, nossos objetivos ao programar.*
- **Sintaxe é um conjunto de regras que estuda e define a relação e a ordem entre os termos em uma linguagem.**
  - *Perfeito! Essa é uma definição mais genérica, que abrange tanto as linguagens naturais, quanto as linguagens de programação!*
- Sintaxe é um conjunto de boas práticas que facilitam a legibilidade e manutenção do código.

### Sintaxe no Dart

- [Introduction to Dart](https://dart.dev/language)

### Sintaxe no Dart II

Vimos em vídeo que o computador consegue rodar nossos comandos apenas se digitarmos a sintaxe correta da linguagem.

Quais dos seguintes códigos não possuem erros de Sintaxe para o Dart?

- print(“A pessoa cliente”, nome, “possui saldo de”, saldo);
- print(A pessoa cliente + nome + possui saldo de + saldo.toString());
- **print(“A pessoa cliente $nome possui saldo de $saldo”);**
  - *Perfeito! Usamos a chamada de função, a passagem de argumento e a interpolação de forma perfeita!*
- print => “A pessoa cliente $nome possui saldo de $saldo”;
- **print(“A pessoa cliente ” + nome + “ possui saldo de ” + saldo.toString());**
  - *Perfeito! Usamos a chamada de função, a passagem de argumento e a concatenação de Strings de forma perfeita!*

### Enums

### Switch

### Usando o Switch com Enums

Agora que aprendemos que podemos usar a combinação da estrutura Switch com os Enumeradores para fazer comparações mais eficientemente, analise bem atentamente a seguinte estrutura:

```dart
switch(contaTipo){
  case TiposConta.salario:
    print(“Essa é uma conta do tipo salário.”);
    break;
  case TiposConta.poupanca:
    print(“Essa é uma conta do tipo poupança”);
    break;
  case TiposConta.corrente:
    print(“Essa é uma conta do tipo Conta Corrente”);
    break;
  case TiposConta.investimentos:
    print(“Essa é uma conta para Investimentos”);
    break;
  default:
    print(“Tipo de conta inválido ou desconhecido”);
    break;
}
```

Agora você deve implementar o Enum que seja mínimo para que o trecho de código acima funcione corretamente. Como você implementaria?

- Alternativa errada

```dart
class EnumTiposConta{
  bool salario;
  bool poupanca;
  bool corrente;
  bool investimentos;
}
```
￼
- - **Alternativa coerrada

```dart

```dart
enum TiposConta{
  salario,
  poupanca,
  corrente,
  investimentos
}
```
￼
  - *Perfeito! Seguindo a sintaxe correta da criação de enums e seguindo os termos utilizados no switch, esse código vai funcionar perfeitamente.*

- Alternativa errada

```dart
enum TiposConta{
  salario,
  poupanca,
  premium,
  black
}
```
￼
- Alternativa errada

```dart
enum TiposConta{
  salario,
  poupanca
}
```

- Alternativa errada

```dart
enum MeuEnumComTiposDeConta{
  salario,
  poupanca,
  corrente,
  investimentos
}
```

### Para saber mais: melhorias no Enums pós-Flutter 3.0

> **Nota:** *Esse é um Para Saber Mais avançado no assunto de Enums, se você não entender todos os termos usados aqui, tudo bem, veremos cada um deles com mais calma mais para frente*.

A atualização no Flutter 3.0 trouxe algumas melhorias no Enum. Agora, ao definir um tipo de Enum, você pode fornecer campos adicionais: métodos, getters, setters e até operadores. Além disso, agora Enums podem implementar interfaces e aplicar Mixins.

Em resumo, quase tudo que é possível fazer com uma classe agora pode também ser feito na declaração de um enum. Vamos ver na prática? Analise com atenção o código abaixo:

```dart
void main() {
  TiposConta.tiposContasAtivos();
}

enum TiposConta{
  salario,
  popanca,
  corrente,
  investimentos;

  static void tiposContasAtivos(){
    print("Conta Salário, Conta Poupança, Conta Corrente e Conta Investimentos.");
  }
}
```

No exemplo acima, criamos um método estático que pode ser chamado diretamente de um enum (como enums são estruturas estáticas no Dart, e por tal, não podem ser inicializadas, o método também deve ser). Esse método imprime na tela os tipos de conta ativos.

Se você desejar saber mais sobre o aprimoramento dos enums, recomedamos a leitura da [documentação referente](https://dart.dev/guides/language/language-tour#enumerated-types).

### O que aprendemos na aula 1?

Finalizamos nossa primeira aula!

Os conceitos vistos nessa aula são muito importantes para que sua programação com Dart evolua para um próximo passo! Vamos revisar o que aprendemos?

- **O que é Sintaxe:**
  - Vimos que toda linguagem, seja ela natural ou de programação, possui uma sintaxe, afinal, sintaxe é um conjunto de regras que definem quais são os termos dessa linguagem, como eles se relacionam e em que ordem são esperados.
- **O que é Sintaxe no Dart:**
  - Notamos que todas as estruturas que usamos no Dart até agora seguem uma sintaxe, e que, quando essa sintaxe não é respeitada, vários erros serão gerados, já que o Dart não compreenderá o que estamos tentando construir.
- **O que são Enums:**
  - Aprendemos que Enums (Enumeradores) são tipos de dados cujo os valores são exatamente um conjunto finito de identificadores que escolhemos no momento em que estamos construindo o Enum. Vimos que eles podem ser usados para tornar nossas comparações mais legíveis e eficientes.
- **O que são Switchs:**
  - Por fim, conhecemos a Estrutura Condicional Switch-Case-Default, que, assim como a If-Else, serve para direcionarmos nosso código a depender do resultado de uma operação booleana - no caso do Switch, sempre uma comparação feita usando como base um elemento definido no começo da estrutura.

## Coleções

### Projeto da aula 1

Caso queira, você pode baixar o [projeto do curso](./resources/dart-sintaxe-aula01.zip) no ponto em que paramos na aula anterior.

### Quando usar o Set?

Agora que aprendemos como usar o Set, em quais das situações abaixo seria interessante usarmos esse tipo de coleção?

- **Estou recebendo do teclado vários CPFs, e preciso montar uma coleção onde eles não se repitam.**
  - *Boa! Você poderia fazer uma verificação manual para cada novo CPF inserido (para verificar se ele já consta em uma lista, por exemplo), mas, usando Sets, você tem a garantia que essa repetição não acontecerá.*
- Tenho uma lista de tarefas e preciso separar as feitas das ainda não concluídas.
- Preciso armazenar informações de um grupo de pessoas que estão se cadastrando na minha plataforma.
- **Tenho uma imensa lista de códigos identificadores, e preciso remover todas as duplicatas.**
  - *Isso! Usando o método .toSet() de uma List, você pode fazer a conversão de Lista para Set automaticamente e, assim, se livrar das duplicatas.*
- Há uma operação no meu modelo de negócios que está aparecendo várias vezes no meu código e, sempre que algo muda, eu preciso mudar em todos os trechos recorrentes.

### Para saber mais: lidando com Iterables

> **Nota:** *Esse Para Saber Mais lida com um assunto específico e avançado do uso de Iterables, se você não entender de primeira o que estamos conversando, não tem problema, volte quando se sentir confortável.*

É importante saber que existirão situações nas quais você vai lidar com Iterables mesmo não tendo explicitamente instanciado um; ou seja, você não vai escrever um Iterable no código, mas vai utilizar um quando escrever uma List ou um Set. Exemplos bem comuns são os vários métodos de Set e de List para fazer alguma manipulação na coleção. Eles podem tanto receber algum Iterable como argumento, ou devolver Iterables no retorno. Vamos ver alguns exemplos:

- **A) Iterable como Argumento**

Vamos começar com um método que, na documentação, diz receber um Iterable como argumento: o addAll. Esse método serve para adicionar todos os elementos de uma coleção em outra coleção. Por exemplo, você pode usar o addAll para adicionar os elementos da lista [4,5,6] na lista [1,2,3], que vai passar a ser [1,2,3,4,5,6].

O addAll está presente tanto nas Listas quanto nos Sets (afinal, ele é um método herdado de Iterable). Na sua documentação, você vai encontrar a seguinte descrição:

```dart
addAll(Iterable<E> iterable) → void
```

Vemos que, pela sintaxe de documentação, esse método espera um Iterable como argumento, e retorna void. Para casos como esse, basta passar como argumento uma subclasse de Iterable, ou seja, uma Lista ou um Set. Ambos serão aceitos, já que são subclasses de Iterable. Analise com atenção o exemplo abaixo:

```dart
void main() {
  List<int> numeros = [1,2,3];
  print(numeros); // [1,2,3]

  numeros.addAll([4,5,6]);
  print(numeros); // [1,2,3,4,5,6]
}
```

Primeiramente, inicializamos uma Lista com os números 1, 2, 3. Depois, usamos o método addAll para adicionar todos os elementos no Iterable (que no exemplo é uma lista, mas poderia ser um Set) que passamos por argumento. No fim, nossa lista fica com os valores 1,2,3,4,5,6.

- **B) Iterable como Retorno**

Alguns métodos podem retornar Iterables, ou subtipos que também herdam de Iterable.

Para exemplificar usaremos o método .getRange() que, na documentação, possui a seguinte descrição:

```dart
getRange(int start, int end) → Iterable<E>
```

Analisando a documentação do método, vimos que ele vai receber, por argumento, dois índices - um de começo e outro de fim - e deve devolver uma sublista dessa lista. Essa sublista será um Iterable.

Por ser um Iterable, essa sublista terá apenas os métodos de Iterable e, caso você queira convertê-la de volta para List, basta usar o método .toList(). Vamos analisar com cuidado no trecho de código abaixo:

```dart
void main() {
  List<int> numeros = [1,2,3,3,2,1];
  var subLista = numeros.getRange(1,4);
  print(subLista); // (2,3,3)
  print(subLista.runtimeType); //SubListIterable<int>

  List<int> listaSubLista = subLista.toList();
  print(listaSubLista); //[2, 3, 3]
  print(listaSubLista.runtimeType); //List<int>
}
```

No código acima, começamos iniciando uma lista de números com alguns números.

Na linha var subLista = numeros.getRange(1,4);, usamos a função getRange para criar uma sublista que vai do índice 1 ao índice 4, e usamos o termo var para definir nossa variável como sendo do tipo equivalente ao retorno de getRange().

Depois, printamos tanto a sublista, que foi mostrada com parênteses, quanto tipo dessa variável, que foi SubListIterable, uma especialização do Iterable.

Por fim, usamos o método .toList() para converter a sublista que era um Iterable para um List, e testamos a efetividade da conversão nas duas linhas seguintes.

### Sobre Iterable

Aprendemos sobre os Iterable, um conceito importante para quem busca programar em Dart.

Quais das alternativas abaixo não descrevem a Classe Iterable?

- Um Iterable é uma coleção de valores, ou elementos, que podem ser acessados sequencialmente.
- **Podemos criar um objeto instância da classe Iterable e depois convertê-lo para List ou Set.**
  - *Exatamente, isso não é verdade! Por ser uma Classe Abstrata, o Iterable não pode ser instanciado.*
- Não devemos instanciar Iterables, pois eles devem ser usados apenas durante a manipulação de Lists e Sets.
- A classe Iterable é superclasse de List e Set, por isso elas compartilham propriedades e métodos similares.
- **Devemos usar Iterable sempre que quisermos criar uma coleção não específica de dados, ou seja, quando ainda não sei se se quero criar uma Lista ou um Set.**
  - *Perfeito, essa alternativa é falsa e não descreve a Iterable! A verdade é que não devemos usar o Iterable diretamente nos nossos códigos, mas é importante conhecer a classe para entender como List e Set funcionam. Além disso, haverão situações onde alguns métodos retornarão valores do tipo Iterable, e nesses casos é importante saber lidar com ele.*

### Representando com Maps

Como vimos, o Map é uma estrutura mais simples que uma classe, porém bastante poderosa e que também pode nos ajudar a representar conceitos reais.

Apesar de não comportar os métodos de uma classe, um Map pode armazenar tanto qual é o dado como o que ele representa, comportamento esse que é semelhante a propriedades da classe. Imagine, por exemplo, que a String “Dandara” pode não querer dizer nada isoladamente, mas se sabemos que ela representa um nome (e podemos saber isso seja pelo nome da propriedade, ou pela chave do Map), agora temos uma informação completa.

É comum que, em algumas aplicações, façamos a conversão de uma informação armazenada nas propriedades em uma Classe para um Map com o objetivo de, por exemplo, transmitir essa informação pela internet (como em um cadastro de um usuário feito localmente e enviado para um banco de dados online), e o método toMap() é responsável por fazer essa conversão.

Leia com atenção o código abaixo:

Pessoa pessoaDandara = Pessoa(nome: “Dandara”, idade: 25, estaAutenticada: true);
Map<String, dynamic> mapDandara = pessoaDandara.toMap();COPIAR CÓDIGO
Quais dos códigos a seguir representam bem o Map que se espera que seja gerado no código acima?

- - Alternativa errada

```dart

```dart
[“Dandara”, 25, true]
```

- - Alternativa errada

```dart

```dart
{
  "pessoa": pessoaDandara
}
```

- - **Alternativa coerrada

```dart

```dart
{
  "nome": "Dandara",
  "idade": 25,
  "estaAutenticada": true
}
```

- *Perfeito! Estamos seguindo corretamente a sintaxe da construção do Map, replicando com fidelidade as propriedades como chaves, e passando os valores corretos*.

- Alternativa errada

```dart
{
  "nome": "Dandara",
}
```

### Desafio: criando o Método toMap()

Na Atividade de Múltipla Escolha anterior, vimos qual o resultado esperado para a conversão das propriedades de uma Classe para um Map. Agora, vamos implementar esse método.

Em primeiro lugar, observe o código abaixo:

```dart
class Pessoa{
  String nome;
  int idade;
  bool estaAutenticada;

  Pessoa(this.nome, this.idade, this.estaAutenticada);

  Map<String,dynamic> toMap(){
    // TODO: Construa o método aqui
  }
}
```

Usando de base o código acima, implemente o método toMap() que converta as propriedades da classe Pessoa em um Map.

#### Opinião do instrutor

Existem várias formas de implementar o método toMap(), e uma das mais lúdicas seria a do código a seguir:

```dart
Map<String,dynamic> toMap(){
    Map<String, dynamic> resultado = {};
    resultado["nome"] = this.nome;
    resultado["idade"] = this.idade;
    resultado["estaAutenticada"] = this.estaAutenticada;
    return resultado;
  }
```

Primeiro, inicializamos um Map que usaremos para retornar o resultado ao final:

```dart
Map<String, dynamic> resultado = {};
```

Depois, adicionamos cada chave com o valor correspondente a uma propriedade da classe Pessoa:

```dart
resultado["nome"] = this.nome;
resultado["idade"] = this.idade;
resultado["estaAutenticada"] = this.estaAutenticada;
```

Por fim, retornamos o resultado:

```dart
return resultado;
```

Esse código pode ser feito com apenas uma linha, inicializando um Map diretamente na linha do return. Daí, para cada uma das chaves, será passado o valor da propriedade correspondente.

```dart
Map<String,dynamic> toMap(){
    return {
      "nome": this.nome,
      "idade": this.idade,
      "estaAutenticada": this.estaAutenticada
    };
  }
```

### O que aprendemos na aula 2?

Nessa aula, aprendemos conceitos importantes para você continuar nessa trilha de conhecimento. Os conceitos trabalhados aqui serão revistos de forma bem mais prática nas próximas aulas, por isso é importante dominá-los bem. Vamos fazer um resumo?

- **O que são Sets:**
  - Vimos que, em Dart, Sets são coleções que herdam de Iterable, assim como as Lists e, para fins práticos, podem ser considerados um caso especial de List onde todas as entradas são únicas, ou seja, não contêm entradas repetidas. Essa estrutura é útil quando queremos armazenar valores únicos em uma única variável sem considerar a ordem das entradas.
- **O que são Iterables:**
  - Vimos também que Iterable é uma coleção de valores ou elementos que podem ser acessados sequencialmente. Vimos que essa classe é abstrata, ou seja, não podemos instanciar objetos do tipo Iterable, mas essa classe é usada como base para as outras estruturas de coleção: List e Sets.
- **O que são Maps:**
  - Por fim, estudamos os Maps, um tipo de coleção extremamente útil em aplicações reais como quando acessamos bancos de dados e trocamos informações com APIs. Nessa estrutura, sempre teremos um par contendo uma chave e um valor, onde essa chave dá acesso à leitura e modificação desse valor. É por esse motivo que, em algumas linguagens, ela recebe o nome de “Dicionário”.

## Dinâmico e estático

### Projeto da aula 2

Caso queira, você pode baixar o [projeto do curso](./resources/dart-sintaxe-aula02.zip) no ponto em que paramos na aula anterior.

### Procurando o erro

Agora que entendemos a diferença entre os termos var e dynamic no Dart, vamos praticar!

Qual das opções a seguir não gerará erro ao ser executada?

- - **Alternativa coerrada

```dart

```dart
dynamic id = "1700";
id = 1700;
```
￼
- *Perfeito! Quando usamos o termo dynamic, dizemos que nossa variável é dinâmica, ou seja, que ela pode mudar de tipo durante a execução do código.*

- Alternativa errada

```dart
var dynamic id = "ALR1700";
```
￼
- - **Alternativa coerrada

```dart

```dart
  dynamic id;
  var nome;
```
￼
- *Perfeito! Tanto o termo var quanto o dynamic não exigem inicialização na declaração.*

- Alternativa errada

```dart
var id = "1700";
id = 1700;
```
￼
- Alternativa errada

```dart
dynamic id = "1700";
  id = 1700;
  String prefixo = "ALR";  
  String codigo = prefixo + id;
```

### Usando propriedades estáticas

Agora que aprendemos que como o termo static funciona, analise atentamente o código da Classe abaixo:

```dart
class Circulo{
  static double pi = 3.1415;
  double raio;

  Circulo(this.raio);

  double Area(){
    return pi * raio * raio;
  }
}
```

Em relação às propriedades dessa classe Circulo, quais dos códigos a seguir gerarão erros se executados?

- Alternativa errada

```dart
print(Circulo.pi);
```

- Alternativa errada

```dart
Circulo circulo = Circulo(2);
print(circulo.raio);
```

- Alternativa errada

```dart
Circulo circulo = Circulo(2);  
print(Circulo.pi);
```

- - **Alternativa coerrada

```dart

```dart
print(Circulo.raio);
```

- *Perfeito, esse código não funciona! Como a propriedade raio não é estática, ela não pode ser acessada diretamente pela classe Circulo, deve-se criar uma instância de classe para acessar essa informação.*

- - **Alternativa coerrada

```dart

```dart
Circulo circulo = Circulo(2);
print(circulo.pi);
```

- *Perfeito, esse código não funciona! Como a informação de pi é estática, ela não pode ser acessada via uma instância de Circulo.*

### Para saber mais: métodos estáticos

Além de propriedades, é importante notar que também podemos criar métodos estáticos, também chamados métodos de classe! Os métodos estáticos não operam em uma instância, portanto, não têm acesso a ela. No entanto, eles têm acesso a variáveis ​​estáticas. Como mostra o exemplo a seguir, você invoca métodos estáticos diretamente em uma classe:

```dart
class Circulo{
  static double pi = 3.1415;
  double raio;

  Circulo(this.raio);

  double Area(){
    return pi * raio * raio;
  }

  static double AreaStatic(double raioParam){
    return pi * raioParam * raioParam;
  }
}
```

O método AreaStatic não consegue acessar a informação this.raio, pois ela é uma propriedade de instância da classe Circulo, mas consegue acessar a informação pi que é uma propriedade estática. Portanto, para fazer o cálculo da área, precisamos pedir a informação do raio como parâmetro do método!

Se desejar ler mais sobre static no Dart, recomendamos a leitura da [documentação](https://dart.dev/guides/language/language-tour#class-variables-and-methods).

### Linguagem estática ou dinâmica?

[00:00] Vamos consolidar tudo o que falamos sobre linguagem estática e dinâmica conversando muito bem sobre as diferenças, vantagens e desvantagens de cada tipo de linguagem. Primeiro vamos revisar o que são tipos nas linguagens de programação. Podemos explicar um tipo como um conjunto de regras, propriedades e operações que definem como um dado que será manipulado pelo programa.

[00:29] Então se quero lidar com algo numérico, vou ter um tipo numérico que pode ser float, pode ser int e double. Esse tipo vai ter regras, propriedades e operações que vão me permitir manipular da forma que faça mais sentido. Isso é um tipo. Em programação orientada a objeto, que é o caso do Dart, podemos chamar também de tipo a classe à qual um objeto pertence.

[00:59] Digamos que fiz uma classe Pessoa e fiz um objeto Ricarth. Posso dizer que Ricarth é do tipo pessoa. Essa é uma revisão do que é um tipo. Só para relembrar, a maioria das linguagens de programação vem com os seguintes tipos primitivos ou coisas similares a esses, um inteiro, um integer ou um int que são os valores numéricos inteiros. O double e float pode variar de linguagem para linguagem, e em como ela lida, mas queremos falar de valores numéricos fracionários, ou seja, que não são inteiros.

[01:35] Os booleanos que são verdadeiros e falsos, muito importantes na computação. E as Strings e texts que são sequências ou cadeias de caracteres. Revisamos o que é tipo. Precisamos revisar o que é tipo para poder falar de tipagem, e falaremos primeiro da tipagem dinâmica. A tipagem dinâmica são as linguagens de programação que permitem alterar diretamente o tipo do objeto.

[02:02] Um exemplo é o Python. Então deixa eu pegar o apontador e veremos um gif do Python. Fiz um número, 33, e perguntei qual é o tipo desse número. É inteiro. Essa própria variável number posso mudar para "33", que seria String, e ele muda o tipo para String. Então consigo mudar diretamente o tipo da nossa variável até em tempo de execução.

[02:34] Isso é bem interessante e um bom exemplo é justamente o Python. A tipagem dinâmica tem as seguintes vantagens, a velocidade na codificação. Claro, temos que escrever menos termos, já que não temos que declarar explicitamente os tipos. Teoricamente, se tem menos coisa para escrever fica mais rápido para codificar. Também disse que as linguagens de tipagem dinâmica são a porta de entrada mais tranquila para pessoas iniciantes.

[03:06] Ou seja, pessoas que nunca tiveram contado com programação terão menos termos para lidar no seu primeiro contato. As desvantagens da tipagem dinâmica é que são mais suscetíveis a erros em tempo de execução e podem ser interpretadas como menos legíveis. Afinal, se não estamos declarando algo explicitamente em um código muito longo, pode ficar difícil de interpretar, quando executar aquele código ou qual vai ser o tipo daquela variável naquele trecho que estou analisando.

[03:44] Vamos falar sobre isso, erros em tempo de execução. Um erro em tempo de execução não é um erro que acontece quando estamos escrevendo o código, quando, por exemplo, chamamos um método que não existe em uma classe. Esse erro conseguimos notar que vai acontecer. Já o erro em tempo de execução é algo que não vai gerar um alarde no momento em que está codificando, mas quando executarmos o código, pode gerar um erro.

[04:19] Os erros em tempo de execução são muito temidos, porque eles vão quebrar a aplicação bem na cara dos seus usuários. Então é o pior tipo de erro, porque não conseguimos lidar com ele na hora que, por exemplo, você fez um aplicativo em Flutter. Ele já está na mão da pessoa que está usando e gera um erro lá, como você vai mudar o código daquela pessoa? É difícil, tem que mandar uma atualização e por aí vai.

[04:48] Então esses são os erros em tempo de execução. Coisas que acontecem quando estamos executando. Aqui está um exemplo em Python. Criei uma variável que é numérica e criando, uma variável que é numérica, por exemplo, 37, consigo somar 10 com 37 porque posso usar o símbolo mais com números, 37 + 10. Porém, se mudo isso em tempo de execução, mudo para um texto e tento gerar aquela mesma operação que é a soma com 10.

[05:22] Não posso mais fazer isso, não posso somar uma String com o número 10, porque estoura um erro. Vamos falar agora da tipagem estática que é o caso do Dart. Linguagens que são estaticamente tipadas, a pessoa programadora define explicitamente o tipo de cada dado.

[05:40] Então você vai criar uma variável, vai dizer explicitamente qual é o tipo dela, inclusive no caso que falamos do var, no Dart, onde não escrevemos de fato qual é o tipo da variável. Colocamos só var, mas como precisamos inicializar ela, e ela já recebe aquele tipo na hora da inicialização. Mesmo que não escrevemos, é definido pelo tipo do dado que é inicializado, e uma vez que o tipo é definido ele fica restrito. Não pode mudar mais. Não mudamos mais esse tipo.

[06:17] Então esses dados serão submetidos a uma coisa chamada type checking, ou seja, checagem de tipos e evitam aqueles temidos erros em tempo de execução. Erros relacionados, por exemplo, a conversão de tipos, operações entre tipos que não podem fazer operações entre si. Então, evita-se isso nas linguagens estaticamente tipada, porque já sabemos qual é o tipo de antemão, antes de rodar o código. Isso é muito bom.

[06:47] Dart é estaticamente tipado como sabemos. Então se faço uma linha double amount, criei um amount, uma quantidade, que é do tipo double, ela vai ser igual a 37.2, que é um double. Se fizer aquela mesma operação de somar com 10 vai funcionar. Se eu sequer tentar mudar esse amount, que é uma quantidade, para um texto, ele já não vai funcionar.

[07:18] Então, todo aquele resto que estava dando problema no Python, já não funciona aqui, porque ele vai dar um erro no próprio código, dizendo "Erro de Atribuição Inválida". Não posso colocar String onde defini como double. Vantagens de ser estaticamente tipadas. Como falamos, previne muitos erros envolvendo tipos, permite a verificação em tempo de compilação, caso a linguagem seja compilada. A diferença de linguagem compilada para interpretada, vamos colocar no Para Saber Mais. Então confere aí.

[07:55] E pode ser interpretado como mais legível. Por quê? Se estamos explicitamente dizendo quais são os tipos das nossas variáveis, garantimos que ele não vai mudar no meio do caminho na execução, e consigo ler e dar melhor manutenção no código. As desvantagens são principalmente a verbosidade.

[08:13] Verbosidade é um termo que usamos para quando uma linguagem tem muitas palavras. Por ter muitas palavras, em teoria, vai ter uma agilidade menor de codificação, porque precisa escrever mais coisas e será mais difícil para que o iniciante entre, já que terá mais termos para ele ter que aprender. Vamos resumir? As linguagens que são de tipagem estática definimos os tipos em tempo de compilação, enquanto estamos escrevendo de forma explícita.

[08:50] Já as linguagens dinâmicas, ou seja, de tipagem dinâmica, é um tipo definido em tempo de execução, mesmo que você consiga colocar uma inicialização com tipo, ele pode mudar no tempo de execução. Não temos uma certeza de qual tipo é aquela variável ao longo do código.

### O que aprendemos na aula 3?

Muito bom! Você chegou ao final de mais uma aula e o que aprendemos?

- **Qual a diferença entre os termos Var e Dynamic:**
  - Aprendemos que dynamic é um termo que indica quando um objeto pode alterar de tipagem em tempo de execução, ou seja, quando a aplicação já estiver rodando. Isso é uma característica um tanto quanto interessante e até perigosa, logo, é necessário saber trabalhar com ela para não cometermos erros que podem quebrar nosso código.
- **Qual a diferença entre um dado Estático e um Dinâmico:**
  - Static é um termo que indica quando um objeto deve manter seu valor independente da instância que atua sobre ela. Uma propriedade estática faz parte de uma classe, ou seja, não pode ser criada/instanciada por si só.
- **O que são Linguagens Estática e Dinamicamente Tipadas:**
  - Vimos que algumas linguagens de programação são dinâmicas, o que significa que podemos alterar facilmente o tipo de um objeto sem problemas, mas isso faz com que o compilador/interpretador não note quando um possível erro pode ocorrer. Um exemplo de linguagem dinâmica é… Linguagens estáticas, ou seja, que geralmente não permitem a alteração de tipos de objetos, têm a vantagem de verificarem se o código apresenta algum erro antes de compilar/rodar o projeto. O Dart é um exemplo de linguagem estática!

## Encapsulamento

### Projeto da aula 3

Caso queira, você pode baixar o [projeto do curso](./resources/dart-sintaxe-aula03.zip) no ponto em que paramos na aula anterior.

### Conceituando encapsulamento

Agora que entendemos os conceitos de público e privado em programação, escolha dentre as opções abaixo quais situações seria pertinente controlar o acesso a uma informação presente em uma classe:

- Registro uma quantidade de produtos em estoque que pode ser acessada e alterada livremente durante um dia de trabalho.
- Registro uma propriedade de cor de um objeto a ser mostrado na tela. Essa cor deve está sempre disponível para acesso e pode ser alterada diretamente a qualquer momento.
- **Registro uma informação de nome que pode ser consultada diretamente, mas só deve ser alterada se estiver acompanhada da senha do usuário.**
  - *Perfeito! Como a propriedade não pode ser alterada diretamente, e necessita de um validador da alteração, ela deve ser controlada.*
- **Registro um valor de saldo em reais, mas ele deve sempre ser mostrado em dólar, portanto, se precisa de um cálculo prévio ao acesso.**
  - *Perfeito! Como a propriedade não pode ser acessada diretamente, e sim que precisa passar por um tratamento, ela deve ser controlada.*
- Registro uma quantidade de pontos de vida de uma personagem de um jogo. Essa quantidade muda de forma não padronizada várias vezes por segundo durante a execução do jogo.

### Para saber mais: underline no encapsulamento

Se você já estudou algumas outras linguagens de programação, deve se lembrar que muitas delas usam termos específicos para determinar se uma propriedade ou variável vai ser pública (public), ou privada (private, protected). Porém, como vimos no vídeo, o Dart usa apenas um underline. Por que essa decisão?

Essa curiosidade é muito bem-vinda, e muitas pessoas programadoras de Dart já tiveram ela, tanto que usaram ferramentas de comunidade (como as Issues no GitHub público do Dart Core) para solicitar a mudança. Você pode acompanhar a discussão nesse [link](https://github.com/dart-lang/sdk/issues/33383). A postagem começa com uma proposta do Dart aceitar tanto a sintaxe com underline quanto com as keywords (palavras-chave), e depois várias pessoas programadoras argumentam a favor ou contra a mudança proposta.

Então, uma pessoa que desenvolve o Dart vem para dar uma explicação: Ela diz que os termos não são usados, pois o Dart não usa privacidade baseada em classe, e sim em arquivo/biblioteca, e por uma série de razões técnicas, essas palavras-chave não seriam condizentes. Após dar a explicação, ele arquiva o tópico.

Mesmo com o tópico arquivado, a discussão continua e há pessoas a favor e contra a adição dos termos. Esse exemplo é muito interessante para mostrar que Dart, como uma linguagem de código aberto e com uma comunidade aquecida, dá a possibilidade de discussão e entendimento de certas nuances diretamente na fonte. Recomendamos bastante a leitura (em inglês) na discussão citada.

### Getters and Setters

Agora que aprendemos o conceito de encapsulamento e como usar Getters e Setters para controlar o acesso às propriedades da nossa classe, considere com atenção o código a seguir:

```dart
class Conta{
  String id = Uuid().v1; // Gera um id aleatório
  String nome;
  double _saldoReal = 0;

  Conta(this.nome);
}
```

Por uma questão legal, os dados monetários de seus clientes devem ser armazenados em real, mas, por uma questão de modelo de negócios, todas as operações em sua aplicação usam esse dado em dólar. Por causa dessa divergência, é necessário aplicar o gerenciamento de acesso a essa propriedade.

Escolha, nas opções abaixo, os Getters e Setters apropriados para essa situação:

- Alternativa errada

```dart
void get getSaldo{
    return _saldoReal * cambioHoje();
  }
```

- Alternativa errada

```dart
void setSaldo(double saldoDolar){
    _saldoReal = saldoDolar / cambioHoje();
  }
```

- **Alternativa certa**

```dart
double get getSaldo{
    return _saldoReal * cambioHoje();
  }
```

- *Perfeito! Essa seria uma forma ideal de fazer o Getter dessa propriedade, já que, ao usar o método, os dados já passarão pela conversão antes de irem para o resto do código da aplicação.*

- Alternativa errada

```dart
double get getSaldo(){
    return _saldoReal * cambioHoje();
  }
```

- **Alternativa certa**

```dart
void set setSaldo(double saldoDolar){
    _saldoReal = saldoDolar / cambioHoje();
  }
```

- *Perfeito! Essa seria uma forma ideal de implementar o Setter dessa propriedade. O dado chega em dólar por parâmetro, e passa por um tratamento antes de ser armazenado na propriedade.*

### Projeto de final do curso

Caso queira, você pode [baixar aqui](./resources/dart-sintaxe-aula04.zip) o projeto completo implementado neste curso. Se preferir, você também pode acessar o repositório completo no [GitHub](https://github.com/alura-cursos/dart-sintaxe).

### O que aprendemos na aula 4?

Chegamos ao final de mais uma aula, e aprendemos sobre:

- **O que é Encapsulamento:**
  - É notável que existirão situações, tanto no mundo real, quanto na programação, em que precisamos gerenciar acessos, isto é, precisamos organizar quais pessoas podem ver ou alterar cada arquivo, ou trecho de código. É para isso que serve o conceito de encapsulamento e os conceitos de “público” e “privado” na programação.
- **O que são Getters e Setters:**
  - Vimos que tornamos uma propriedade privada usando o underline antes do nome dela, por exemplo: _nome. E, uma vez que essa propriedade se torna privada, usuários da classe (e de instâncias da classe) não podem acessá-la e modificá-la diretamente. Para fazer isso, precisamos criar métodos especiais. Os getters (em português, “pegadores”) vão conter o termo get e são usados para leitura do valor, já os setters (em português, ”definidores”) vão conter o termo set e são usados para alteração do valor.
