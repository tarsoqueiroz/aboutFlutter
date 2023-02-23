# Dart: criando e manipulando variáveis e listas

> `https://cursos.alura.com.br/course/dart-variaveis-listas`

## Faça esse curso de Flutter e

- Entenda o básico, as vantagens e desvantagens da linguagem Dart
- Aprenda a instalar ferramentas e comece a programar
- Aprenda variáveis simples como: Int, Double, Bool e String
- Saiba o que são Listas e quando usá-las
- Entenda o que é Var, Const e Final
- Crie loops de repetição e Condições com: If/Else, For e While
- Descubra as boas práticas no Dart

## Ambiente e funções

### Material de apoio

- [Material de Apoio](./resources/material-de-apoio-curso-alura-dart_primeiros-passos.pdf)

### Por que aprender Dart

- Mobile: Flutter
- Games: Flame
- Backend: Jaguar

### Onde programar?

- Site do Dart: `https://dart.dev/`
- Documentação: `https://dart.dev/guides`
- Dart tools: `https://dart.dev/tools`
- Get the Dart SDK: `https://dart.dev/get-dart`
- DartPad: `https://dartpad.dev/?`

### Funções iniciais

No VSCode pressionar `ctrl` + `shift` + `p` e criar projeto Dart para console.

Linha de comando: `dart create -t console {{PATH}}/projeto-inicial`

### O que aprendemos na aula 01?

Nesta aula, aprendemos sobre:

- Por que usar Dart:

Conversamos sobre por que escolher o Dart para produção do seu código, assim como quais as vantagens e desvantagens dessa linguagem orientada a objetos. Também entendemos qual sua origem e como ela está sendo utilizado no momento.

- Ferramentas para usar o Dart:

Descobrimos duas ferramentas para poder programar em Dart no nosso computador, o IntelliJ (IDE) e o SDK do Dart. Vimos como instalá-las e usá-las em conjunto para criar nosso primeiro projeto em Dart.

- Funções Iniciais:

Em nosso primeiro projeto, nos deparamos com algumas funções já prontas: a função main(){} e a função print(). Discutimos como elas funcionam e qual a importância delas no nosso código.
Concluímos a Aula 1! Se tiver dúvidas, não deixe de aparecer lá no fórum.

Por que não ajudar a responder a uma dúvida? Explicar um assunto para alguém é uma ótima forma de aprender e consolidar o conhecimento!

## Variáveis

### Variável Int, Double, Booleans e String

Para saber mais: Type Casting

Um [artigo do Kumar Anurag](https://medium.com/dart-school-by-kmranrg/chapter-3-type-casting-in-dart-76837475772a) (em inglês) que mostra de forma simples e fácil as conversões iniciais de variáveis.

### O que aprendemos?

- **Quais são os tipos primitivos de variáveis do Dart**

Quando começamos a explorar o Dart, pegamos alguns objetos e estudamos eles um a um. Vimos sobre números e as suas duas formas distintas : int e double , assim como vimos sobre variáveis que indicam o verdadeiro e falso: bool e, por fim, entendemos melhor a utilização de variáveis que aceitam frases escritas: String.

- **O que são Inteiros (int)**

Os números Inteiros são chamados no Dart de int (do inglês, Integer). Sua principal característica é o fato de aceitar apenas números completos (1,2…70000…), sem nenhuma casa decimal após vírgula. Com uma precisão de 2^53 (Lê-se: 2 elevado a 53) números, podemos contar até a casa dos zilhões e isso inclui os números negativos também (-1,-2…-70000…).

- **O que é o double**

Quando falamos de double, temos de incluir os números fracionados (0.5,2.8,...70000.75…). Os double tem uma precisão magnífica e podem estender suas casas decimais em até 53 dígitos (0.1234567…), permitindo a precisão de valores com erro mínimo. Vimos também a importância de escrever um número fracionado com . (ponto) ao invés da , (vírgula) devido ao programa seguir o formato inglês de escrita matemática.

- **O que é o bool**

O tipo booleano é necessário para definir valores simples de Sim ou Não, indicados pela nomenclatura true ou false. Esse tipo de variável foi criada para facilitar a criação de condições na lógica do nosso programa (veremos mais sobre condições na Aula 4).

- **O que é uma String**

A variável do tipo String é responsável por alocar/armazenar frases inteiras e complexas, com espaço e símbolos que normalmente o programa não identificaria. Para usá-la, devemos envolver entre aspas o conteúdo escrito desejado (‘frase desejada’). Vimos duas grandes ações que podemos fazer com nossas Strings: Concatenação (‘frase 1’ + ‘frase 2’) e Referenciação (‘ quantos anos ela tem? $idade’). Uma curiosidade: Você pode usar tanto aspas simples ’ quanto aspas duplas” para identificar uma String!

## Listas

### Listas de tipo único, dinâmicas, Var, Const e Final

- Para saber mais: funções da lista

São mais de 30 funções, e para conhecer algumas delas, recomendamos a leitura do artigo [Conhecendo as funções da lista em Dart](https://codeburst.io/top-10-array-utility-methods-you-should-know-dart-feb2648ee3a2).

### Lista da justiça

### O que aprendemos em Listas?

- **O que é e quando usar uma Lista em Dart**

Depois de ter aprendido os tipos de variáveis em Dart, vimos como colecionar esses objetos de forma prática, legível e eficiente. Afinal, haverá situações em que você precisará armazenar várias informações similares (como vários nomes) e criar uma variável para cada uma delas, torna nossa programação menos eficiente.

Uma das formas de colecionar esses objetos é através das Listas (List<>)! As listas são objetos que guardam vários objetos do mesmo tipo, e podem ser acessados por um índice numérico! Então, para criar uma lista de Strings vazia, aprendemos que usaremos um List<String> lista = [], e para acessar o primeiro objeto dessa lista fazemos lista[0].

- **O que é o tipo dynamic e quando usar ele com uma Lista**

Vimos também que é possível fazer uma lista que não está presa a apenas um tipo de objeto, mas podendo receber objetos de todo tipo como Strings, Binários, Inteiros e Doubles. Para isso, usamos a especificação de tipo como dynamic. Assim temos, por exemplo: List<dynamic> listaDinamica = [“Mulher Maravilha”, True, “Batman”, False].

Porém, é importante relembrar que quando se souber que uma lista só precisará conter um tipo de objeto (por exemplo, uma lista de nomes só vai precisar ter objetos do tipo String) é extremamente recomendado que se especifique o tipoao invés de usar o dynamic, pois isso torna o código mais legível e eficiente.

Análogo ao dynamic das listas, também podemos usar var na hora de criar variáveis (e não coleções), por exemplo, var idade = 25;, e usando o valor passado, o Dart reconhecerá o tipo da variável. Mas, assim como o dynamic, essa operação é mais custosa para o Dart e menos legível para outras pessoas desenvolvedoras que podem usar o seu código, por isso, deve ser usada apenas quando for necessário.

- **A diferença entre os modificadores de imutabilidade const e final**

E, por último, vimos que há situações em que não queremos permitir que o valor de uma variável seja alterado. Para fazer isso, adicionamos o modificador const antes da especificação do tipo na linha da criação da variável, por exemplo, const String nome = “Caio Couto”;

Como o const modifica um trecho do código, tornando esse trecho imutável, constante, algo que não muda, chamamos o const de modificador de imutabilidade. Esses modificadores são como uma etiqueta que diz: “não mexa aqui, tô de boa assim”.

Outro modificador de imutabilidade é o final que tem o mesmo papel de proibir alterações na variável, porém permite que a inicialização da variável ocorra fora da linha de declaração. Em resumo, o const exige que a variável seja inicializada na declaração, e o final permite que essa inicialização ocorra posteriormente.

Recomendamos a leitura do artigo [Static x Const x Final](https://news.dartlang.org/2012/06/const-static-final-oh-my.html) em Dart para melhor entendimento do assunto de modificadores de imutabilidade.

## Laços de repetição

### If / Else, For, While

Para saber mais: Break & Continue, Switch & Case

Aprendemos algumas formas distintas de criar e controlar o fluxo de um loop. Mas não vimos tudo que há no Dart sobre e loops e controle de fluxo.

Para sanar sua curiosidade, separamos alguns artigos incríveis para que você possa entender mais dessas outras formas de manipular repetições e condições no seu programa:

- O breake continue são comandos para controlar o fluxo do loop. Você pode ler mais sobre isso neste [artigo incrível do geekForGeeks](https://www.geeksforgeeks.org/dart-loop-control-statements-break-and-continue/) (em inglês) .
- O switch e case são novos formatos de controle de fluxo que permitem um controle mais refinado e delicado de condições/estados distintos, e você pode entender mais neste [artigo do Jay Tillu](https://medium.com/jay-tillu/switch-case-in-dart-136793092e6e) (em inglês).

### O que aprendemos em Laços?

- **Condições com: If/Else**

Quando queremos uma condição no nosso código, podemos usar o if(){} e o else{}. Dentro da estrutura do nosso código, temos 3 partes:if/else () {}.

O if/else é necessário para inicializar a lógica de comparação.

Já o () é onde adicionamos nossa condição, que deve sempre ser um resultado verdadeiro ou falso (booleano).

Por fim, o {} é onde escrevemos nossas ações que só ocorrerão se a condição tiver sido verdadeira.

- **Repetições com: For**

Aprendemos que, em alguns momentos, é interessante criar repetições dentro do nosso código, e podemos controlar essas repetições usando o for(){}, que é composto por 3 partes principais:

O for é o comando usado para iniciar o loop.

O () é onde vamos definir nossas condições, e é dividido em 3 sub-partes: inicialização, condição, pós-loop.

Onde a inicialização é responsável pela criação da variável condicional inicial (int i = 0)

A condição é responsável por comparar a variável inicial com a nossa lógica desejada (i < 10)

O pós-loop é a ação que será tomada no final da repetição, normalmente é usada para incrementar a variável inicial (i++)

- **Repetições com: While**

Quando precisamos criar repetições, mas não temos certezas das quantidades de repetições necessárias, usamos o while(){}, que consiste em 3 partes:

while que é o comando para começar a lógica de repetição;

()que é onde vamos colocar a condição booleana;

{} local designado para as ações que serão repetidas.

Porém, o while tem um bônus que é poder escolher se a condição será analisada antes ou depois da repetição, usando o comando opcional do{}while() que é composto por 4 partes:

do que é o comando para começar a lógica de repetição;

{} local designado para as ações que serão repetidas;

while que é o comando para começar a lógica de condição;

()que é onde vamos colocar a condição booleana.

## Boas práticas

### Comentários

- `Ctrl` + `Alt` + `L` - arruma o código
- `//` or `/*` and `*/` - comentário

### Para saber mais: Null Safety

> [Flutter - Null Safety in Dart](https://www.alura.com.br/artigos/flutter-null-safety)

### Documentação

- [Seção de documentação do site oficial do Dart](https://dart.dev/guides)
- [Seção Exemplos da linguagem](https://dart.dev/samples)
- [Built-in types](https://dart.dev/guides/language/language-tour#built-in-types)

### Projeto final do curso

> [GitHub o projeto deste curso](https://github.com/alura-cursos/dart-primeiros-passos)

### O que aprendemos?

- **Adicionar Comentários**
  - Usar comentários é muito importante para manter seu código organizado, além de melhorar o entendimento para qualquer um que deseje estudá-lo no futuro. Aprendemos a usar comentários de linhas simples com `//` e comentários de linhas múltiplas com `/* */`. Vimos também um segundo tipo de comentário muito usado para documentação de códigos, pois tem uma cor distinta (verde), nesse caso, usamos `///` para linhas simples e `/****/` para múltiplas linhas.
- **Usar a Documentação Oficial**
  - Iniciamos nossa jornada de explorar o Dart usando a documentação oficial disponível no site do Dart. Nosso primeiro contato foi importante para começarmos a perder o medo de usar a documentação. No futuro, ela será nossa melhor amiga para entender conceitos e problemas mais complexos.

### Conclusão

Parabéns! Vocês concluíram o curso de Dart: primeiros passos. Agora eu estou aqui para revisar com vocês tudo o que aprendemos, para notarem o quanto evoluíram do começo do curso até este momento.

Nós aprendemos porque usar o Dart e onde programar. Descobrimos o que são as IDEs e SDKs. Começamos a explorar as ferramentas e conhecemos a função main(){}, que é a função principal, onde escrevemos o nosso código para o Dart conseguir ler.

Estudamos sobre a função print(), que imprime no Console as respostas que queremos. Em seguida, exploramos os objetos em Dart, que são as variáveis.

Vimos que existem vários tipos de variáveis. Elas podem ser números inteiros (int), como a idade, ou doubles, como a altura. Variáveis também podem ser booleanas (bool), que são de verdadeiro ou falso, como definimos para o nosso geek.

Depois começamos a testar as strings, que permitem a criação e a concatenação de frases. Além disso, vimos que é possível colocar informações de objetos dentro das frases do tipo string, como fizemos na frase.

Em seguida, começamos a ver listas únicas, que recebem dados com o mesmo tipo de valor, e listas dinâmicas, que aceitam vários tipos de objetos.

Analisamos os objetos que podem e não podem mudar. Conhecemos os objetos constantes (const), que é o caso da string nome, e os objetos finais (final), como a string apelido.

Exploramos também os laços de repetição, começando pelo if/else, que nos ajuda a escolher em que parte do nosso código a ação será executada. Aprendemos também o for, para criarmos loops com uma quantidade limitada de repetições.

Além disso, estudamos o while, para quando não sabemos previamente a quantidade de loops, mas ainda é precisamos criar uma repetição. Aproveitamos para conhecer o do/while, que deixamos em cinza por não estarmos usando no nosso código. A diferença é que ele executa primeiro e analisa depois.

Depois estudamos um pouco sobre boas práticas no Dart. Começamos a aprender sobre comentários. Temos os comentários cinza para as pessoas que lerem nosso código entenderem com facilidade o que estamos fazendo.

É muito importante usar as boas práticas para conseguirmos trabalhar com outras pessoas no futuro, porque não é bom nem para nós, nem para as outras pessoas, termos um código muito bagunçado.

Descobrimos também os comentários de documentação, que têm uma coloração em um tom de verde.

Analisamos a documentação do Dart para entendemos como consultá-la, caso tenhamos alguma dúvida simples ou queiramos relembrar algo. Descobrimos que a documentação deve funcionar como a nossa fonte de informação primária, e que vamos usá-la cada vez mais.

Posteriormente, mostrei para vocês uma aplicação de vida real para perceberem que conseguimos analisá-la com os conhecimentos do curso. Sabemos que cada nome no aplicativo é um item da lista de pessoa, porque aprendemos sobre Listas.

Quando eu clico no meu nome, temos várias informações sobre mim, que são: "Nome", "Altura", que é um valor double, "Apelido", "Idade", que é um valor inteiro, "Geek", que é um booleano" e "Energia", que é consumida ao apertar o botão "Fazer Exercício!". Isso acontece devido a uma repetição que eu criei, assim como ensinei a vocês.

Eu não mostrei para vocês como criar um aplicativo como esse, porque este não é um curso de Flutter. Ainda estamos entendendo a linguagem do Dart.

Este curso permite que, ao navegarem no celular de vocês, consigam abrir o WhatsApp e reconhecer as strings. Vocês conseguem imaginar o que seria um booleano no Instagram. Assim, cada vez mais, vocês conseguem explorar a linguagem do Dart para, no futuro, criar aplicações incríveis.

Então eu estou muito orgulhoso do quanto vocês conseguiram aprender. Espero que tenham gostado deste curso, porque eu amei fazê-lo para vocês.

Vou pedir para deixarem um comentário quando concluírem e darem uma nota justa. Contem para nós o que fez vocês se encantarem ou se algo deixou vocês desconfortável. Estamos sempre buscando melhorar os nossos cursos e os comentários de vocês sempre ajudam.
