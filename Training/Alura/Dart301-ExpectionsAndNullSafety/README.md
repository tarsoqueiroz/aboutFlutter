# Dart: lidando com Exceptions e Null Safety

## Faça esse curso de Flutter e

- Identifique a diferença entre erro e exceção
- Compreenda o que é a pilha de execução
- Aprenda a capturar e lidar com Exceções
- Crie suas próprias exceções personalizadas
- Identifique o que são nulos
- Aprenda a lidar com o Null Safety

## Erros, Exceções e Pilha de Execução

### Orientações iniciais e organização do curso

- **Pré requisito**

Neste curso, assumimos que você conheça o conteúdo apresentado nos cursos a seguir:

- [Dart: criando e manipulando variáveis e listas](https://cursos.alura.com.br/course/dart-variaveis-listas);
- [Dart: entendendo a Orientação a Objetos](https://cursos.alura.com.br/course/dart-entendendo-orientacao-objetos);
- [Dart: sintaxe, coleções e dinamismo](https://cursos.alura.com.br/course/dart-sintaxe-colecoes-dinamismo).

Caso você não tenha feito os cursos, mas acredita que possa começar a partir daqui, fique à vontade para continuar. Porém, se tiver algum conteúdo que não foi explicado com tanta atenção, muito provavelmente esse conteúdo já foi explicado em um desses cursos.

De qualquer forma, você pode entrar em contato conosco por meio do fórum ou do Discord.

- **Projeto**

Neste curso usaremos um Projeto Base que será apresentado na atividade “Preparando o Ambiente”, então é muito importante que você leia com atenção essa atividade. O progresso de cada aula será disponibilizado no começo da aula seguinte, e o projeto final será disponibilizado no final do curso.

- **Como o curso está organizado**

Cada aula será composta por vídeos, exercícios e alguns materiais extra para leitura. O curso está dividido pelos temas de Erros, Exceções e Pilha de Execução; Tratamento de Exceções; Criando Exceções Personalizadas; e Segurança de Nulos (Null Safety). Clicando [aqui](https://caelum-online-public.s3.amazonaws.com/2549-dart-lidando-exceptions-null-safety/01/Dart-Lidando-com-Exceptions-e-Null-Safety.jpg) você terá acesso a sua trilha formativa.

Recomendamos sempre que você assista os vídeos com atenção, e depois pratique com os exercícios!

### Preparando o ambiente e projeto base

Agora que conhecemos o propósito do curso e o projeto que será o resultado final, é importante conhecermos o código que servirá como base para esse curso: é a partir dele que seguiremos as próximas aulas!

Antes de tudo, para conseguir executar o código você precisa ter instalado na sua máquina:

- [Kit de Desenvolvimento (SDK) do Dart](https://dart.dev/get-dart)
- Um Ambiente de Desenvolvimento (IDE) de sua preferência:
  - [IntelliJ Community](https://www.jetbrains.com/pt-br/idea/download/)
  - [Visual Studio Code](https://code.visualstudio.com/download)

> **Nota:** *Se você ainda não tiver alguma dessas ferramentas instaladas e configuradas na sua máquina, recomendamos seguir os passos do Preparando o Ambiente do Curso [Dart: Criando e Manipulando Variáveis e Listas](https://cursos.alura.com.br/course/dart-variaveis-listas/task/102252).*

O código do projeto base está disponível para download clicando [aqui](https://github.com/alura-cursos/dart_exceptions/archive/86d2deb91f75d01f8532983a0f7eb93b231b5238.zip). Após extrair a pasta compactada, basta abrir o projeto com o Ambiente de Desenvolvimento de sua preferência (IntelliJ Community, VSCode, Xcode ou outros).

É importante mencionar que esse projeto será todo em inglês (exceto as saídas para o usuário) seguindo o seguinte argumento: A leitura de código em dois idiomas (por exemplo, o inglês como língua base do Dart, e o português para nossas variáveis, classes e funções) torna a leitura do código mais confusa e menos universal. Para isso o ideal é usar termos próprios (como variáveis, funções e classes) também em inglês.

O nosso projeto base consiste em três arquivos:

- **models/account.dart:** classe responsável por representar uma conta de banco dos clientes;
- **controllers/bank_controller:** classe responsável por gerenciar conta e fazer as transações entre elas;
- **dart_exceptions.dart:** arquivo que contém a função main que rodará nosso código.

`models/account.dart`

```dart
class Account {
 String name;
 double balance;
 bool isAuthenticated;

 Account(
     {required this.name,
     required this.balance,
     required this.isAuthenticated});

 editBalance({required value}) {
   balance = balance + value;
 }
}
```

O nosso modelo de Conta tem, por enquanto, três propriedades:

- “Name”, representando o nome;
- “Balance”, representando o saldo em conta;
- e “isAuthenticated” que representa se o usuário está ou não autenticado.

Além disso, há um construtor que inicializa essas propriedades, e um método editBalance usado para editar o saldo.

`controllers/bank_controller.dart`

```dart
import '../models/account.dart';

class BankController {
 final Map<String, Account> _database = {};

 addAccount({required String id, required Account account}) {
   _database[id] = account;
 }

 bool makeTransfer(
     {required String idSender,
     required String idReceiver,
     required double amount}) {
   // Verificar se ID de remetente é válido
   if (!verifyId(idSender)) {
     return false;
   }

   // Verificar se ID de destinatário é válido
   if (!verifyId(idReceiver)) {
     return false;
   }

   Account accountSender = _database[idSender]!;
   Account accountReceiver = _database[idReceiver]!;

   // Verificar se o remetente está autenticado
   if (!accountSender.isAuthenticated) {
     return false;
   }

   // Verificar se o remetente possui saldo suficiente
   if (accountSender.balance < amount) {
     return false;
   }

   // Se tudo estiver certo, efetivar transação
   accountSender.balance -= amount;
   accountReceiver.balance += amount;

   return true;
 }

 bool verifyId(String id) {
   return _database.containsKey(id);
 }
}
```

A classe BankController tem duas principais funções:

- Armazenar a instância do “banco de dados” que gerencia as contas cadastradas no nosso Banco. Esse banco de dados, no nosso caso, será um Map onde a chave será uma String representando um ID e o valor será uma instância de Account;
- Fazer uma transação bancária entre duas contas através do método makeTransfer. Esse método passa por várias verificações (validade de IDs, autenticação dos usuários, saldo disponível etc), e essas verificações vão servir de base motivadora para nosso curso, pois atualmente ao falharem elas apenas retornam false, de forma que não é possível transmitir uma informação a respeito do que causou a falha.

`dart_exceptions.dart`

```dart
import 'controllers/bank_controller.dart';
import 'models/account.dart';

void main() {
 // Criando o banco
 BankController bankController = BankController();

 // Adicionando contas
 bankController.addAccount(
     id: "Ricarth",
     account:
         Account(name: "Ricarth Lima", balance: 400, isAuthenticated: true));

 bankController.addAccount(
     id: "Kako",
     account:
         Account(name: "Caio Couto", balance: 600, isAuthenticated: true));

 // Fazendo transferência
 bool result = bankController.makeTransfer(
     idSender: "Kako", idReceiver: "Ricarth", amount: 700);

 // Observando resultado
 print(result);
}
```

No arquivo dart_exceptions.dart teremos nossa função main. Nela executaremos os códigos de nosso projeto. Por enquanto, apenas os seguintes passos estão sendo feitos:

- É criada uma instância de BankController;
- Usamos a instância de BankController para registrar duas novas Accounts, representando contas de “Ricarth” e de “Kako”;
- Tentamos fazer uma transferência de “Kako” para “Ricarth” e anotamos o resultado;
- Printamos o resultado na tela.

Vamos notar nesse processo que a transação não vai ser bem sucedida e não saberemos o porquê, já que nosso código em BankController não está preparado para lidar corretamente com situações excepcionais!

Espero que esse projeto seja útil e didático para você, e caso surja qualquer dúvida, não hesite em falar conosco no fórum e no Discord da Alura!

### Caminho feliz

No começo da nossa jornada de aprendizado na programação, é comum nos acostumarmos a codificar nossas aplicações sempre acreditando que tudo dará sempre certo, e que nossa pessoa usuária sempre experimentará o “caminho feliz”. Mas nós sabemos que, na vida real, imprevistos podem acontecer e nosso programa deve estar preparado para isso.

Sabendo desse contexto, quais das situações a seguir podem se aplicar nessas “situações excepcionais”?

- Estamos assistindo uma aula na Alura e a reprodução do vídeo acontece sem travamentos.
- **Estamos fazendo um PIX para outra pessoa e perdemos conexão com a internet nesse momento.**
  - *Perfeitamente! O PIX não foi concluído com sucesso, pois o acesso à internet foi perdido e, nesse caso, o aplicativo do banco deve estar preparado para notar isso e avisar do problema para a pessoa usuária.*
- Estamos conversando com alguém via texto no Discord e as mensagens chegam em tempo real como esperado.
- **Estamos tentando instalar um novo jogo no nosso computador, mas não há espaço suficiente no disco.**
  - *Perfeito! O resultado esperado é a instalação do jogo no computador, mas sem espaço suficiente no disco isso é impossível. O instalador do jogo deve estar preparado para notar essa situação excepcional e avisar a pessoa usuária.*
- Tentamos fazer um cadastro em uma base de dados governamental, e o cadastro é feito com sucesso.

### Sobre a Pilha de Execução

Agora que aprendemos tanto na teoria quanto na prática (com uso do depurador) que a Pilha de Execução é uma representação de como o computador armazena informações e ordena nossas sub-rotinas (funções) a serem executadas, leia com atenção as afirmações abaixo e marque as alternativas corretas:

- Se meu programa não possuir funções, ele não possuirá uma Pilha de Execução.
- **O programa é finalizado após a Pilha de Execução ser esvaziada.**
  - *Exato! A pilha de execução indica se o programa precisa executar alguma coisa, portanto, quando vazia indica que não existe mais nada a ser executado.*
- **A Pilha de Execução indica a ordem em que as funções serão executadas.**
  - *Exatamente! A partir dela podemos verificar quais funções foram chamadas e quais serão executadas.*
- O depurador é uma ferramenta opcional, dado que eu poderia colocar prints ao longo do meu código para fazer a análise linha a linha que o depurador se propõe.
- Conseguimos ativar a Pilha de Execução ao rodar o programa pelo depurador.

### Para saber mais: conhecendo mais do Depurador

Se você se interessou por essa completíssima ferramenta que é o Depurador das IDEs, recomendamos as seguintes leituras para complementar seu aprendizado:

- **IntelliJ IDEA Community:**
  - (Em inglês) [Debug Code | IntelliJ IDEA](https://www.jetbrains.com/help/idea/debugging-code.html#general-procedure)
  - [Depurador - IntelliJ IDEA](https://confluence.jetbrains.com/display/IntelliJIDEA/14.+Depurador)
  - [30 Dias com o IntelliJ IDEA: Depurador](https://blog.jetbrains.com/pt-br/2014/10/22/30-dias-com-o-intellij-idea-depurador/)
- **Visual Studio Code:**
  - (Em inglês) [Debugging in Visual Studio Code](https://code.visualstudio.com/docs/editor/debugging)

### O que aprendemos na aula 1?

**Finalizamos nossa primeira aula!**

Chegamos ao final da nossa primeira aula e os conceitos que abordamos são muito importantes para que sua programação com Dart evolua para um próximo passo! Vamos relembrar o que aprendemos?

- **Qual a diferença entre Erros e Exceções:**
  - Aprendemos que nem sempre nossas aplicações seguirão pelo caminho perfeito, e que erros e situações excepcionais podem acontecer. Agora conseguimos diferenciar esses dois conceitos:
    - “Erros” são os problemas que não temos total controle e não fazem parte do fluxo esperado no nosso modelo de negócios, quando estamos programando podemos até antecipar que erros vão acontecer, mas não é nossa função tratá-los em tempo de execução.
    - “Exceções” são as situações excepcionais que fogem do “caminho feliz” previsto no fluxo do nosso modelo de negócios. Essas situações sim, nós devemos antever, tratar e resolver da melhor forma possível para nossa pessoa usuária.
- **O que é a Pilha de Execução:**
  - Vimos também que um conceito importante para compreensão das exceções é o da Pilha de Execução, que é uma forma de representar como o Sistema Operacional prioriza a leitura do código que nós escrevemos na nossa aplicação.
- **O que é o Depurador e o Modo de Depuração:**
  - Aprendemos, por fim, que nos nossos Ambientes de Desenvolvimento (IDEs) não temos apenas a opção de “Rodar” o nosso código, temos também a opção de “Depurar” (Debug). A opção Debug roda nosso código em Modo de Depuração, abrindo para gente uma nova aba chamada “Depurador”. Nela temos a visão de várias novas ferramentas que permitem uma análise linha a linha do nosso código, coisa que não seria possível no modo de “Rodar” que estamos acostumados.

Vamos usar todos esses conhecimentos para lidarmos com exceções na próxima aula! Vamos lá?

## Tratamento de Exceções

### Projeto da aula 1

Caso queira, você pode baixar o [projeto do curso](./resources/dart_exceptions-aula01.zip) no ponto em que paramos na aula anterior.

### Exceções no Depurador

### Analisando o rastro da Pilha

Vimos que tanto na mensagem gerada no terminal quanto no Depurador, quando uma exceção é gerada, podemos analisar o rastro que ela deixou na pilha (StakeTrace), ou seja, quais foram as sub-rotinas (funções) que geraram esse problema. Com isso em mente, analise com atenção o seguinte código, e logo em seguida o Rastro da Pilha mostrado na mensagem de erro:

```dart
import "dart:math";

void main() {
 print(bhaskara(1, "-8", 12));
}

Set<double> bhaskara(a, b, c) {
 double delta = calcularDelta(a, b, c);
 double resultado1 = ((b * -1) + delta) / (2 * a);
 double resultado2 = ((b * -1) - delta) / (2 * a);
 return [resultado1, resultado2].toSet();
}

calcularDelta(a, b, c) {
 double resultado = b * b;
 resultado = resultado - (4 * a * c);
 resultado = pow(resultado, (1 / 2)).toDouble();
 return resultado;
}
```

```sh
Unhandled exception:
type 'String' is not a subtype of type 'int' of 'times'
#0      calcularDelta (file:///D:/_repos/_alura/dart_bhaskara/bin/dart_bhaskara.dart:15:24)
#1      bhaskara (file:///D:/_repos/_alura/dart_bhaskara/bin/dart_bhaskara.dart:8:18)
#2      main (file:///D:/_repos/_alura/dart_bhaskara/bin/dart_bhaskara.dart:4:9)
#3      _delayEntrypointInvocation.<anonymous closure> (dart:isolate-patch/isolate_patch.dart:283:19)
#4      _RawReceivePortImpl._handleMessage (dart:isolate-patch/isolate_patch.dart:184:12)
```

Lendo com atenção o código que gerou a exceção e o Rastro da Pilha, escolha a alternativa que responde corretamente as seguintes questões:

- O que gerou o problema?
- Em que linha a pilha começou a ser desempilhada?
- Qual é uma possível solução para esse problema?

- **Resposta 1**
  - A exceção levantada se refere a uma tentativa de operação numérica envolvendo uma String;
  - A pilha começou a desempilhar na linha 15;
  - Uma solução para o problema é fazer com que as funções exijam explicitamente int ou double em seus parâmetros.
    - *Perfeito! Na linha 15 há uma tentativa de multiplicação usando operador *, porém como b é uma String, esse operador não é reconhecido. Se declararmos os tipos que esperamos durante a declaração dos parâmetros da função, o próprio Dart impediria que pudéssemos passar uma String por argumento como fizemos na linha do print.*
- Resposta 2
  - A exceção levantada se refere a uma tentativa de operação numérica envolvendo uma String;
  - A pilha começou a desempilhar na linha 4;
  - Uma solução para o problema é criar uma classe do que receba uma propriedade do tipo int e outra do tipo String.
- Resposta 3
  - A exceção levantada afirma que o tipo String não é um subtipo de int;
  - A pilha começou a desempilhar na linha 4;
  - Uma solução para o problema é criar uma classe do que receba uma propriedade do tipo int e outra do tipo String.
- Resposta 4
  - Houve uma tentativa de conversão de String para Inteiro de algo que não era numérico;
  - A pilha começou a desempilhar na linha 4;
  - A solução para o problema é não enviar uma String por parâmetro na linha do print.

### A função de outra pessoa

Acabamos de aprender como utilizar a estrutura Try-On, e a partir desse aprendizado, leia com atenção a situação a seguir:

Você está trabalhando junto com Dandara no desenvolvimento de um pequeno jogo textual com Dart e, em certo momento do código, você deve usar uma função de uma classe que a Dandara programou:

```dart
heroine.heal(int addLife) //Faz a heroína curar a quantidade de Pontos de Vida passados por argumento
```

Dandara avisou para você que essa função pode gerar duas exceções:

- HeroineIsFullLifeException - Caso esteja com os pontos de vida cheios;
- HeroineIsPoisonedException - Caso a heroína esteja envenenada e não possa se curar.

Além disso, ela pediu para que você mostrasse na tela a nova quantidade de Pontos de Vida da heroína, mas somente se a cura acontecesse com sucesso.

Com essas informações, como você implementaria um trecho de código que usa a função criada por Dandara?

- **Alternativa correta**

```dart
try{
    heroine.heal(20);
    print("A heroína agora tem ${heroine.life} pontos de vida.");
  } on HeroineIsFullLifeException{
    print("A heroína está com a vida cheia, não é necessário curar.");
  } on HeroineIsPoisonedException{
    print("A heroína está envenenada, impossível curar.");
  }
```

- *Excelente! Dessa forma você tenta executar a linha que cura a heroína e, apenas caso consiga curar, mostra a quantidade de pontos de vida na tela e caso alguma das exceções aconteça mostra uma mensagem apropriada na tela!*

- Alternativa errada

```dart
try{
    heroine.heal(20);
    print("A heroína agora tem ${heroine.life} pontos de vida.");
  } on HeroineIsFullLifeException, HeroineIsPoisonedException{
    print("Não foi possível curar.");
  }
```

- Alternativa errada

```dart
try{
    heroine.heal(20);
    print("A heroína agora tem ${heroine.life} pontos de vida.");
  } on HeroineIsFullLifeException{
    print("A heroína está com a vida cheia, não é necessário curar.");
  }

try{
    heroine.heal(20);
    print("A heroína agora tem ${heroine.life} pontos de vida.");
  } on HeroineIsPoisonedException{
    print("A heroína está envenenada, impossível curar.");
  }
```

- Alternativa errada

```dart
try{
    heroine.heal(20);
  } on HeroineIsFullLifeException{
    print("A heroína está com a vida cheia, não é necessário curar.");
  } on HeroineIsPoisonedException{
    print("A heroína está envenenada, impossível curar.");
  }
  print("A heroína agora tem ${heroine.life} pontos de vida.");
```

### Catch e os membros das Exceções

### Continuando o jogo com a Dandara

Você aprendeu a capturar uma exceção com um objeto usando o catch, e Dandara lhe avisou que implementou mais algumas coisas na classe Heroine; a exceção HeroineIsPoisonedException agora possui dois membros:

String poisonType: Informa qual o tipo do veneno que está na heroína;
int timeToEndPoison: Informa quantos segundos faltam para acabar o efeito do veneno.
Dandara pediu para você refatorar (ou seja, corrigir, melhorar) o código para que essas duas informações sejam mostradas, caso a pessoa jogadora caia no caso excepcional de tentar curar a heroína com o veneno ativo.

Como você implementaria esse código?

- Alternativa errada

```dart
try{
    heroine.heal(20);
    print("A heroína agora tem ${heroine.life} pontos de vida.");
  } on HeroineIsFullLifeException{
    print("A heroína está com a vida cheia, não é necessário curar.");
  } catch (exception){
    print("A heroína está envenenada por ${exception.poisonType}, impossível curar pelos próximos ${exception.timeToEndPoison} segundos.");
  }
```

- **Alternativa certa**

```dart
try{
    heroine.heal(20);
    print("A heroína agora tem ${heroine.life} pontos de vida.");
  } on HeroineIsFullLifeException{
    print("A heroína está com a vida cheia, não é necessário curar.");
  } on HeroineIsPoisonedException catch (exception){
    print("A heroína está envenenada por ${exception.poisonType}, impossível curar pelos próximos ${exception.timeToEndPoison} segundos.");
  }
```

- *Perfeito! Capturando o objeto exceção exception no on do HeroineIsPoisonedException temos acesso as duas propriedades que a Dandara adicionou e assim podemos mostrar as informações no caso correto.*

- Alternativa errada

```dart
try{
    heroine.heal(20);
    print("A heroína agora tem ${heroine.life} pontos de vida.");
  } on HeroineIsFullLifeException catch (exception){
    print("A heroína está envenenada por ${exception.poisonType}, impossível curar pelos próximos ${exception.timeToEndPoison} segundos.");    
  } on HeroineIsPoisonedException{
    print("A heroína está com a vida cheia, não é necessário curar.");
  }
```￼

- Alternativa errada

```dart
try{
    heroine.heal(20);
    print("A heroína agora tem ${heroine.life} pontos de vida.");
  } Exception catch (exception){
    print("A heroína está envenenada por ${exception.poisonType}, impossível curar pelos próximos ${exception.timeToEndPoison} segundos.");
  }
```

### Para saber mais: lendo na documentação

Estamos chegando em etapas mais avançadas do nosso aprendizado de Dart, por isso é importante que você comece a adquirir o hábito de visitar a documentação da linguagem como forma de consulta e aprendizado. A documentação é um guia muito importante e um lugar confiável onde pode tirar dúvidas.

Com essa motivação indicamos a leitura (em inglês) dos tópicos Catch e Finally do Language Tour do Dart disponível através deste [link](https://dart.dev/guides/language/language-tour#catch).

Se não se sentir confortável com a leitura em inglês você pode usar a ferramenta de tradução de página do seu navegador, mas é importante apontar que é comum que tanto as linguagens como as ferramentas e a documentação, e até boa parte da comunidade em geral serão encontradas na língua inglesa. Então é um diferencial para uma pessoa programadora que esteja querendo se profissionalizar nesta área investir em aprender essa língua.

### O que aprendemos na aula 2?

Nessa aula, aprendemos conceitos muito importantes para sua jornada de aprendizagem a respeito das Exceções. Os conceitos trabalhados aqui são essenciais para o entendimento das próximas aulas, por isso é importante dominá-los bem. Vamos relembrar?

- **Como são mostradas Exceções no Depurador:**
  - Aprendemos que, diferentemente do modo “Run” (Rodar), quando uma exceção é gerada no modo “Debug” (Depurar) a execução é parada na linha de código que gerou essa exceção e, usando o Depurador podemos analisar toda a Pilha de Execução gerada até essa linha e quais os valores das variáveis nesse momento.
- **Lidando com Exceções com o uso do Try-On:**
  - Aprendemos também que usando a estrutura try-on podemos evitar que a aplicação acabe quando uma exceção for gerada (com o try, do inglês “tente”), e assim podemos dar um tratamento adequado para cada situação excepcional (com o on, do inglês “em” o que pode ser entendido como “na situação de”).
- **Capturando exceções com o Catch:**
  - Logo na sequência, Aprendemos que podemos capturar um objeto de exceção através do catch e assim ter acesso aos membros (propriedades e métodos) dessa exceção para tornar nossa coleta de informações e tratamento mais completas.
- **Outras ferramentas para lidar com exceções:**
  - Aprendemos que podemos capturar além do objeto Exceção, um objeto StakeTrace que é útil para nos dar a informação sobre o Rastro da Pilha que a Exceção gerou.

Vimos também que podemos utilizar o Rethrow para lançar a exceção para o próximo quadro da 
Pilha de Execução, mesmo que tenhamos tratada essa exceção com o try.

E, por fim, aprendemos que podemos usar o finally na nossa estrutura para escrever um bloco de código que garantidamente será executado, independentemente do que aconteça anteriormente com nossa exceção.

Concluímos a nossa segunda aula!

Chegamos ao final da aula 2 e até aqui aprendemos conceitos muito importantes e que servirão de base para as próximas aulas. Por isso, evite ficar com dúvidas, volte nessa aula se achar necessário para reforçar algum conteúdo, e caso ainda se sinta inseguro ou insegura, nos procure lá no fórum. Vamos adorar ajudar você!

## Criando Exceções Personalizadas

### Projeto da aula 2

Caso queira, você pode baixar o [projeto do curso](./resources/dart_exceptions-aula02.zip) no ponto em que paramos na aula anterior.

### Lançando Exceções com Throw

### Para saber mais: mais informações sobre o Throw

### Criando Exceções com Exception

### Para saber mais: Exceções com Checagem

### Propriedades da SenderIdInvalidException

### Propriedades das demais Exceções

### Sobrescrevendo o toString

### Usando membros nas Exceções

### Assert: o que é e quando utilizar

### Quando usar o Assert?

### Para saber mais: leituras sobre Exceções

### Desafio: destinatário autenticado

### Faça como eu fiz na aula 3

### O que aprendemos na aula 3?

## Segurança de Nulos (Null Safety)

### Projeto da aula 3

### O que é um nulo?

### Para saber mais: Factory e External

### Propósito e princípios do Null Safety

### Para saber mais: testando o Null

### Gerando um ambiente de simulação

### Faça como eu fiz: detalhando a simulação

### Formas seguras de lidar com nulos

### Propriedades opcionais

### Sobre a referência nula

### Projeto de final do curso

### O que aprendemos na aula 4?

### Recados finais

### Conclusão

### Créditos
