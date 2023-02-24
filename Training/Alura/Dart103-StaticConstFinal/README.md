# Qual a diferença entre Static, Const e Final no Dart

> `https://www.alura.com.br/artigos/diferenca-entre-static-const-final-no-dart`

## Resumão

Esse artigo é tanto para você que está começando a programar com Dart quanto para você que já constrói aplicações com Flutter, pois abordaremos um assunto que é comum passarmos pelo cotidiano sem percebê-lo: Afinal, qual a diferença entre **“Const”**, **“Final”** e **“Static”** no Dart?

Esse artigo está dividido nos seguintes passos:

- O que é imutabilidade e a razão de existirem coisas que não devem ser mudadas;
- O que é e quando usar o **Const**?
- **Final** ou **Const**? Qual a diferença?
- Mas e o tal do **Static**? O que é e para que serve esse modificador?

Aprender a usar essas ferramentas vai preparar você para fazer códigos mais legíveis e performáticos! Vamos lá?

## Algumas coisas não devem ser mudadas

Quando estamos programando, não é incomum nos depararmos com a situação em que temos um valor que sabemos que não vai ser mudado ou sabemos que ele não deve ser mudado, por várias razões. De maneira geral, chamamos esses valores de constantes, exatamente pela sua característica de não mudar, de ser perene, de ser imutável, de ser constante.

Imagine, por exemplo, que, para se comunicar com um Serviço na Web, você precise de uma chave única, pois através dessa chave esse serviço vai lhe autenticar e permitir que você use suas ferramentas. Essas são as famosas chaves de API. O problema é que normalmente essas chaves são algo parecido com isso:

```
eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiIxMjM0NTY3ODkwIiwibmFtZSI6IkpvaG4gRG9lIiwiaWF0IjoxNTE2MjM5MDIyfQ.SflKxwRJSMeKKF2QT4fwpMeJf36POk6yJV_adQssw5c
```

E se você mudar um caractere desse código, ele já não funcionará e sua aplicação provavelmente irá quebrar. Perigoso, né? Imagina então isso em uma variável do tipo String que está aberta para qualquer um alterar! Ainda mais se você estiver trabalhando colaborativamente? A probabilidade de alguém mudar algo é enorme! E é aí que entram os modificadores de imutabilidade para impedir esse problemão de acontecer!

Trazendo outro exemplo da vida real, o número Pi é uma constante! Nós sabemos que ele é um número próximo de 3,14159. E há alguma vantagem nisso? Sim, uma enorme!

Quando vamos calcular, por exemplo, a área do círculo ou o volume da esfera, nós simplesmente podemos usar esse valor, pois sabemos que ele nunca vai mudar e isso facilita enormemente nossa vida!

Calcular pi é algo muito mais complexo do que, por exemplo, calcular a área do círculo! Se sabemos que o valor de pi nunca muda, não faz sentido calcularmos ele todas as vezes, é um esforço a mais desnecessário. E o mesmo acontece na programação quando não usamos constantes para uma informação que sabemos que nunca muda.

Agora que entendemos que existem partes do código que devem ser imutáveis, ou seja, não devem ser modificadas e alteradas, vamos ver como fazer isso com os modificadores de imutabilidade.

## Modificadores de Imutabilidade

Na hora de trabalhar com constantes, cada linguagem vai ter sua forma de não permitir que uma variável (ou até mesmo funções, atributos de classe e métodos) sejam alterados. É como nas linguagens faladas: a palavra “flor” em português e a “flower” em inglês são formas diferentes de se referir a mesma coisa!

Para informar para o Dart que uma informação não vai mudar, podemos usar os modificadores const e final. Vamos dar uma boa olhada neles!

## Const

Quem programa em Flutter há mais tempo pode ter notado que depois da atualização em que o Linter (Linter, é uma ferramenta de automatização de boas práticas e produtividade código) foi padronizado, apareceram avisos (os famosos warnings) para todo lado pedindo para você colocar consts! Se quiser saber mais sobre isso, assista esse [Alura+](https://www.youtube.com/watch?v=grOQZcBlrBg)!

O propósito de uso do const é bem simples: Tornar um objeto uma constante. Quando você define um objeto como constante, esse não poderá ter seu valor de estado alterado após sua inicialização, ou seja, as propriedades dos objetos! Então, se você nunca pretende alterar uma variável, use `final` ou `const`.

Usar o `const` também é simples: basta inserir `const` antes da especificação do tipo durante a declaração da variável. Assim, o valor inicializado nunca mais poderá ser mudado.

Exemplo:

```dart
void main(){
  const String constName = "Ricarth";
  constName = "Kako";  // Erro! O valor "Ricarth" não pode ser mudado!
}
```

Na linha de código `const String constName = Ricarth;`, em primeiro lugar, a String constName é definida, declarada e inicializada com o valor “Ricarth”. Depois, não é possível alterar a String constName para “Kako”. Até aqui tudo bem, certo?

Outra característica interessante do const é que ele deve ser inicializado no momento da sua declaração, e isso é algo que o diferencia do final.

```dart
void main() {
  const String constName = "Ricarth"; // Funciona!
  const String otherName; // Erro! A constante deve ser inicializada!
}
```

Na segunda linha, a String constName (modificada pelo `const`) foi inicializada com o valor “Ricarth”, então está tudo certo. Na terceira linha, temos um erro, pois a String `otherName` foi modificada pelo `const`, **porém não foi inicializada**, está vazia.

## Final

Já o final significa atribuição única para variáveis: uma variável ou atributo final pode ser inicializada em algum momento após a sua declaração, porém uma vez atribuído um valor, este não poderá mais ser alterado. Veja com atenção o exemplo de código abaixo:

```dart
void main() {
  final String finalName = "Ricarth"; // Funciona!
  final String otherFinalName; // Também funciona, diferente do const!

  otherFinalName = "Kako"; // Funciona! Um valor foi atribuído!
  otherFinalName = "Caio"; // Erro! A variável otherFinalName não pode mais ser alterada!
}
```

O `final` é útil em situações onde você não sabe, ou não quer, passar um valor para variável assim que ela é criada.

## As diferenças entre Const x Final

Por debaixo dos panos, todo `const` é um `final`, mas nem todo `final` é um `const`. O propósito é sempre o mesmo: não permitir alterações após a inicialização do código. Porém, como vimos, o `final` permite que inicializemos o objeto fora da linha da declaração, e o `const` não.

Em outras palavras, `consts` são constantes de tempo de compilação, ou seja, aquele valor já está gravado no código e não irá se alterar. Já os `finals` serão definidos durante a execução do código e mesmo que durante aquela execução o valor armazenado não mude mais, entre uma execução e outra, os valores podem ser diferentes.

Outra diferença interessante é que o `final` **não transmite sua imutabilidade**, o const sim! Imagine o caso de uma lista, com o modificador final os elementos da lista ainda podem ser mudados por acesso direto, já com o const, não.

```dart
void main() {
  final List<String> names = ["Ricarth", "Lima"];
  const List<String> constNames = ["Ricarth", "Lima"];

  names[0] = "Kako"; // Funciona!
  constNames[0] = "Kako"; // Erro em tempo de execução!
}
```

É por essa característica que o Dart não permite que você use modificadores `const` dentro de outros objetos que já possuem modificadores `const` de forma redundante! Para mais detalhes sobre Redundância de Consts, recomendamos a [leitura na documentação do Dart (em inglês)](https://dart.dev/guides/language/effective-dart/usage#dont-use-const-redundantly).

## Mas e o “Static”? O que é e para que serve esse modificador?

Agora entramos em uma parte mais avançada. É comum a dúvida sobre o modificador `static` e suas diferenças em relação ao `const` e `final`.

Diferente do `final` e do `const`, o `static` não é um simples modificador de imutabilidade, mas sim um modificador que indica que uma propriedade ou método de uma **classe** é **estático**, e essa informação é usada para o gerenciamento do uso de memória.

> *Se você é iniciante, provavelmente desconhece o que são os termos “propriedade”, “método”, “classe”, “instância” ou “uso da memória” e está tudo bem! Veremos tudo isso com mais atenção em outro momento.*

Quando definimos uma propriedade ou um método como estático em uma classe, estamos informando para o Dart que eles não dependem de uma instância para serem acessados, pois são inicializados durante a execução da aplicação e acessados pela própria referência da classe.

Vamos analisar com atenção o código da classe a seguir:

```dart
class MathCircle {
  static const double pi = 3.1415;
  double myRadius;

  MathCircle(this.myRadius);

  double circleArea() {
    return pi * (myRadius * myRadius);
  }

  static double staticCircleArea(double radius) {
    return pi * (radius * radius);
  }

  static double staticCircleAreaWrong() {
    return pi * (myRadius * myRadius); // Erro! myRadius só existe depois em instâncias da classe, então não pode ser usado em um método estático!
  }
}
```

Primeiro, se queremos usar o `const` em uma propriedade da nossa classe, devemos usar o `static` junto, afinal uma informação pré-definida e que não muda não depende de uma instância para existir e, por isso, o Dart exige que você insira o `static`. É o que acontece na primeira linha: `static const double pi = 3.1415;`.

Depois, vemos uma propriedade comum, e um construtor que inicializa a propriedade. Ou seja, `myRadius` pode mudar para cada instância dessa classe.

Por fim, temos 3 métodos que calculam o raio do círculo, os dois primeiros estão certos, e o último não funciona!

```dart
double circleArea() {
    return pi * (myRadius * myRadius);
  }
```

No método `double circleArea(){..}`, nós usamos a propriedade da instância (`myRadius`) para calcular a área do círculo. Esse método não é estático por isso pode usar uma propriedade que só vai existir nas instâncias dessa classe.

```dart
static double staticCircleArea(double radius) {
    return pi * (radius * radius);
  }
```

Em `static double staticCircleArea(double radius){...}`, temos um método estático. Por ser estático ele não poderá depender da classe ser instanciada para poder funcionar, logo, recebemos a informação do raio do círculo por parâmetro e conseguimos fazer o cálculo.

```dart
static double staticCircleAreaWrong() {
    return pi * (myRadius * myRadius); // Erro! myRadius só existe depois em instâncias da classe, então não pode ser usado em um método estático!
  }
```

Já em `static double staticCircleAreaWrong(){...}`, tentamos acessar uma propriedade de instância (`myRadius`) em um método estático, porém essa informação não existe na referência da classe e esse código gera um erro. Não conseguimos acessar propriedades de instâncias em métodos estáticos.

Para finalizar podemos visualizar a diferença no uso dos membros comuns e membros estáticos:

```dart
main() {
  double myPi = MathCircle.pi; // Funciona!
 double myRadius = MathCircle.myRadius; // Erro! Pois myRadius é uma informação de instância.

  // Usando método comum para calcular Área do Circulo
  MathCircle myCircle = MathCircle(3); //Depende de uma instância
  double myArea = myCircle.circleArea();
  myRadius = myCircle.myRadius;

  // Usando método estático para calcular a Área do Círculo
  myArea = MathCircle.staticCircleArea(3); // Método chamado na referência da classe, e não na instância.
}
```

A linha `double myPi = MathCircle.pi;` funciona porque pi é uma propriedade estática de MathCircle, portanto, não depende da inicialização de uma instância para existir (como dissemos, as informações estáticas são carregadas no começo da aplicação).

Já a linha `double myRadius = MathCircle.myRadius;` não funciona, e, na verdade, nem faz sentido, pois é como tentar descobrir o raio de um círculo que ainda não existe!

Em seguida, inicializamos a variável `myCircle` com uma instância de MathCircle que recebe pelo construtor um raio de valor 3. Agora sim, é como se estivéssemos criando um círculo.

Logo depois, na linha `double myArea = myCircle.circleArea();`, usamos a informação guardada da instância para calcular a área do círculo específica para aquela instância (para aquele círculo). Depois, em `myRadius = myCircle.myRadius`, agora sim, podemos acessar a informação do raio, pois estamos lidando com um círculo que existe.

Por fim, na linha `myArea = MathCircle.staticCircleArea(3);` calculamos que área teria um hipotético círculo de raio 3, sendo essa informação do raio passada por argumento, pois esse método é estático é chamado diretamente na referência do MathCircle e não em nenhuma instância dessa classe.

## Conclusões

É importante relembrar as razões para usarmos esses modificadores:

- **Legibilidade e Produtividade:** É extremamente útil se comunicar com outros programadores e programadoras que vão usar seu código no futuro. As pessoas vão entender que não é recomendável mexer nos trechos que possuem um `const`, `final` e `static`;
- **Segurança:** Há informações que não devem ser alteradas e/ou acessadas, por exemplo, a chave de API de um Sistema Web;
- **Desempenho:** Ao indicar membros, variáveis ou valores imutáveis, você permite que o Dart e/ou o Flutter façam otimizações que vão aumentar o desempenho da sua aplicação. Por exemplo, quando você estiver lidando com processamento paralelo (multithread), os valores imutáveis poderão ser acessados simultaneamente por todas as threads.

## Para saber mais

Espero que tenha gostado da leitura e tenha sentido aquela ansiedade boa de colocar a mão no código! Como recomendação, deixo esses dois trechos da documentação do Dart (em inglês):

- [Const x Final | Dart Documentation (em inglês)](https://dart.dev/guides/language/language-tour#final-and-const)
- [Class variables and methods | Dart Documentation (em inglês)](https://dart.dev/guides/language/language-tour#class-variables-and-methods)
- [Dart “Static” Keyword (em inglês) | GeeksForGeeks](https://www.geeksforgeeks.org/dart-static-keyword/)
