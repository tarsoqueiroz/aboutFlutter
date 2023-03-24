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

### Para saber mais: mais informações sobre o Throw

- **Lançando qualquer objeto**

Se você veio de outras linguagens pode achar estranho o Dart permitir o lançamento de qualquer objeto. Isso facilita e acelera a escrita de código, mas a [própria documentação](https://dart.dev/guides/language/language-tour#throw) diz que um código de qualidade em ambiente de produção normalmente só lançam objetos de tipos que implementam Exception ou Error.

- **Usando o Throw como uma expressão**

Como lançar uma exceção com o throw é uma expressão (como o return), você pode lançar exceções em estruturas “arrows” =>, operadores ternários, e qualquer outro lugar que permita expressões. Veja o exemplo:

```dart
void distanceTo( Point other ) => throw UnimplementedError ();
```

No código acima, já que a função distanceTo não está implementada, é interessante gerarmos um erro caso alguém tente usá-la. Ao invés de abrir chaves e quebrar linhas para colocar apenas uma linha de throw podemos fazer isso como expressão usando a arrow.

### Para saber mais: Exceções com Checagem

Diferente de outras linguagens o Dart não dá a opção de criar Exceções com Checagem Obrigatória.

Checagem obrigatória, ou “Checked Exceptions” (Exceções Checadas), são exceções que, ao serem lançadas em uma função, exigem que todo bloco de código que usar essa função deverá necessariamente implementar um try circundando a linha da chamada função ou acontecerá um erro em tempo de compilação.

Leia com atenção os exemplos a seguir:

- *Sem checagem obrigatória*

```dart
void playMusic(file pathMusic){
    if (pathMusic.exists){
        // Toca a música
    }else{
        throw PathNotExistsException();
    }
}

void main(){
    playMusic(); // Código funciona sem erros mesmo sem o try
}
```

No exemplo acima, a chamada playMusic() aconteceria sem problemas, mesmo que a função possa levantar uma Exception e não haja um try para lidar com ela. É assim que Dart funciona atualmente.

- **Com checagem obrigatória**

```dart
void playMusic(file pathMusic){
    if (pathMusic.exists){
        // Toca a música
    }else{
        throw PathNotExistsException();
    }
}

void main(){
    playMusic(); // Erro! É necessário circundar a linha com try
}
```

No exemplo hipotético o próprio ambiente de desenvolvimento (IDE) acusaria um erro já que, se a PathNotExistsException é lançada em playMusic, toda chamada de playMusic deve ser cercada com um try que trate essa exceção.

Como foi dito, Dart não possui Checked Exceptions, contudo essa é uma discussão presente na comunidade, afinal, existem muitas pessoas que, por exemplo, já solicitaram a adição dessa ferramenta no GitHub público da linguagem Dart (vantagens de uma linguagem de código aberto). Se for do seu interesse, recomendamos a leitura da thread no [GitHub do Dart](https://github.com/dart-lang/language/issues/984).

E você: qual sua opinião sobre o assunto? Já pensou em argumentos a favor da implementação de Checked Exceptions no Dart? Convido você a deixar sua opinião no nosso fórum ou no nosso canal do Discord! Vamos adorar saber sua opinião e você também pode ler e interagir com a opinião de outras pessoas.

### Propriedades das demais Exceções

### Sobrescrevendo o toString

### Usando membros nas Exceções

Aprendemos que como são classes (que apenas implementam a classe abstrata Exception) as nossas exceções personalizadas podem ter membros, ou seja, propriedades e métodos.

Esses membros podem ser acessados através da captura do objeto exceção usando o catch da estrutura try-on-catch-finally. Isto posto, leia com atenção as alternativas a seguir, e indique quais delas representam melhor a finalidade de adicionar membros a uma exceção:

- **Oferecer operações que possam facilitar o entendimento do que gerou a exceção.**
  - *Perfeito! Com o uso de métodos podemos fazer operações, como testes, cálculos e comparações que podem complementar o entendimento e a resolução da exceção.*
- É importante criar propriedades, pois caso a exceção não seja tratada os membros serão mostrados na Mensagem de Erro, e isso facilitará a correção do problema.
- **Transmitir informações mais detalhadas sobre a exceção que permitam identificar como e porque ela ocorreu.**
  - *Muito bem! Com o uso de propriedades podemos entregar para quem capturar a exceção mais informações além do próprio nome da exceção.*
- É necessário, ao menos, sobrescrever o toString para que a exceção personalizada seja capturada na estrutura try-on-catch-finally.
- Se faz necessário criar membros para uma exceção pois, como ela é uma classe, não podemos criar essa estrutura vazia.

### Quando usar o Assert?

Aprendemos que o assert é um comando simples de ser utilizado e bastando a chamada de uma linha temos um teste que funcionará apenas no ambiente de desenvolvimento, não levantando o AssertionError no ambiente de produção. Com isso em mente, quais das situações a seguir são ideais para o uso do Assert?

- **Quando queremos testar internamente em um construtor de uma classe se algum dado foi passado de forma inesperada.**
  - *Uhuu, muito bem! Existem situações onde você estará programando instâncias de classes que, dada circunstâncias externas, poderão não ser instanciadas com os valores esperados. Nesses casos, o assert é perfeito para fazer verificações em ambiente de desenvolvimento sem gerar erro na aplicação final.*
- Quando eu quero levantar uma exceção, mas não quero ter o trabalho de criar uma exceção personalizada.
- Quando eu preciso que o depurador pare em uma determinada linha e me mostre todas as informações do meu programa naquele momento.
- Quando há situações no nosso modelo de negócios ou resolução de problemas que fogem do “caminho feliz”, isto é, que não seguem a situação ideal.
- **Quando queremos fazer uma verificação no código que servirá apenas para testes internos, não comprometendo diretamente a execução do programa quando publicado.**
  - *Perfeito! Sendo o Assert um comando que funciona apenas no ambiente de desenvolvimento, ele é ideal para fazer verificações e testes que não comprometam o código em ambiente de produção.*

### Para saber mais: leituras sobre Exceções

Finalizamos nosso conteúdo a respeito de Exceções, e seguindo com nosso ímpeto de incentivar a leitura da documentação, deixamos uma lista de recomendações para leitura (toda em inglês) a respeito do tema:

- [Language Tour | Dart](https://dart.dev/guides/language/language-tour#exceptions) - Exceptions - O “Language Tour” é um documento que reúne o mínimo que você precisa saber sobre os mais importantes assuntos da linguagem. E no link que disponibilizamos você encontra a sessão que fala a respeito de Exceções;
- [Language Tour | Dart](https://dart.dev/guides/language/language-tour#assert) - Assert - Texto do “Language Tour” sobre os Asserts;
- [Dart-Core | Exception Class](https://api.dart.dev/stable/2.17.3/dart-core/Exception-class.html) - Documentação da classe Exception presente na linguagem, onde você encontra uma documentação mais técnica que explica questões como Heranças, Interfaces, Propriedades, Contrutores e Métodos da classe, que no caso é a Exception;
- [Dart-Core | Erro Class](https://api.dart.dev/stable/2.17.3/dart-core/Error-class.html) - Documentação da classe Error presente na linguagem.

### Desafio: destinatário autenticado

Agora que aprendemos como criar nossas próprias exceções personalizadas, que tal você criar uma delas para fixar seus conhecimentos?

No exemplo utilizado nas aulas verificamos se o remetente está autenticado. Aqui, modifique seu código para verificar também se o destinatário está autenticado e mostrar uma mensagem amigável na tela caso não esteja. Para isso, você precisará:

- Criar uma exceção (algo como ReceiverNotAuthenticatedException) no arquivo bank_controller_exceptions.dart;
- Adicionar a lógica de testagem na classe BankController;
- Adicionar a captura da exceção no código da função main.

#### Opinião do instrutor

Para resolver esse problema, começaremos criando uma nova classe no arquivo `bank_controller_exceptions.dart`:

```dart
class ReceiverNotAuthenticatedException implements Exception {
  static const String report = "ReceiverNotAuthenticatedException";

  String idReceiver;
  late String message;
  ReceiverNotAuthenticatedException({required this.idReceiver}) {
    message = "$report\nID Sender: $idReceiver";
  }

  @override
  String toString() {
    return message;
  }
}
```

Seguiremos o padrão de implementação que definimos, com um report que carrega o nome da exceção, a informação do ID do Destinatário, e uma mensagem que será construída no construtor e enviada no toString.

Depois precisamos modificar o BankController para fazer essa verificação, o melhor momento é justamente logo após fazer a verificação de autenticação do Remetente:

```dart
// Verificar se o remetente está autenticado
    if (!accountSender.isAuthenticated) {
      throw SenderNotAuthenticatedException(idSender: idSender);
    }

    // Verificar se o destinatário está autenticado
    if (!accountReceiver.isAuthenticated) {
      throw ReceiverNotAuthenticatedException(idReceiver: idReceiver);
    }
```

Por fim, devemos adicionar a captura dessa exceção no código da main, o melhor lugar também é logo após a captura da exceção do Remetente não autenticado:

```dart
// Fazendo transferência
  try {
    bankController.makeTransfer(
        idSender: "Kako", idReceiver: "Ricarth", amount: 200);

    print("Transação concluída com sucesso");
  } on SenderIdInvalidException catch (e) {
    print(e.message);
  } on ReceiverIdInvalidException catch (e) {
    print(e);
  } on SenderNotAuthenticatedException catch (e) {
    print(e);
  } on ReceiverNotAuthenticatedException catch (e) {
    print(e);
  } on SenderBalanceLowerThanAmountException catch (e) {
    print(e);
  } catch (e) {
    print("Erro desconhecido.");
  }
```

E pronto! Se quiser, teste mudar o argumento isAuthenticated para false na conta “Ricarth”, e cheque a mensagem mostrada!

Se desejar fazer o download do repositório com esse desafio implementado, [clique aqui](https://github.com/alura-cursos/dart_exceptions/archive/dafa278a25ee2d570cf3b35bbd90487722f270f3.zip).

### O que aprendemos na aula 3?

Muito bom! Você chegou ao final de mais uma aula e o que aprendemos?

- **Como lançar uma Exceção:**
  - Aprendemos que com a palavra-chave throw podemos lançar uma exceção, ou seja, parar a execução do código naquela sub-rotina (função) e enviar um objeto-exceção para quem estiver abaixo na Pilha de Execução. Se essa exceção lançada passar por todos os quadros da pilha sem ser tratado, ela terminará a execução do código com uma saída de insucesso. E abordamos que o Dart permite enviarmos qualquer objeto no throw, mas que códigos de qualidade, principalmente em ambiente de produção, lançam apenas objetos de tipos que implementam Exception ou Error.
- **Como criar uma exceção personalizada:**
  - Aprendemos que o processo de criar uma exceção personalizada consiste basicamente em criar uma classe que implementa a classe abstrata Exception, e que, uma vez criada, podemos lançar nossas exceções com o throw e capturá-las com a estrutura try-on-cath-finally.
- **Como criar e usar propriedades e métodos para nossas Exceções Personalizadas:**
  - Também aprendemos que, como uma classe, podemos criar membros (propriedades e métodos) para uma Exceção, que estarão disponíveis para acesso ao capturarmos nossa Exceção com o catch.
- **O que é e como usar o Assert:**
  - Por fim, aprendemos que podemos usar o comando assert para fazer verificações apenas em ambiente de desenvolvimento que tenha o comando de terminal --enable-asserts ativado. Essa ferramenta é útil para fazer testes com o AssertionError, que para a execução do nosso programa, mas só apenas em tempo de desenvolvimento, não afetando o código que chegará à pessoa usuária.

Concluímos a nossa terceira aula!

Parabéns! Você já avançou bastante e já estamos caminhando para o fim do nosso curso. Volte nessa aula sempre que achar necessário para reforçar e se tiver dúvidas, não deixe de aparecer lá no fórum para conversar com a gente e com outros cursistas.

## Segurança de Nulos (Null Safety)

### Projeto da aula 3

Caso queira, você pode baixar o [projeto do curso](./resources/dart_exceptions-aula03.zip) no ponto em que paramos na aula anterior.

### Para saber mais: Factory e External

> **Nota:** *Esse Para Saber Mais lida com um assunto específico e avançado da programação com Dart, se você não entender de primeira o que estamos conversando, não tem problema, volte quando se sentir confortável.*

Na aula que acabou de assistir, quando entramos no arquivo do código-fonte da classe Null, você pode ter notado dois termos sobre os quais nunca conversamos e vale a menção, já que foram mostrados: o Factory e o External.

```dart
class Null {
  factory Null._uninstantiable() {
    throw UnsupportedError('class Null cannot be instantiated');
  }

  external int get hashCode;

  /// Returns the string `"null"`.
  String toString() => "null";
}
```

Começando com o factory, essa é uma palavra-chave usada para implementar um construtor que nem sempre cria uma instância de sua classe. Por exemplo, um construtor factory pode retornar uma instância de um cache ou pode retornar uma instância de um subtipo. Outro caso de uso para construtores factory é inicializar uma variável final usando uma lógica que não pode ser tratada na lista de inicializadores.

Se for do seu interesse saber mais sobre o factory, recomendamos a leitura (em inglês) do trecho que fala sobre essa palavra chave no [Language Tour do Dart](https://dart.dev/guides/language/language-tour#factory-constructors).

Já o external é uma palavra chave que gera um função abstrata em uma classe que não necessariamente é abstrata. Basicamente diz que o corpo da função será definido em um local externo.

Se desejar se aprofundar mais sobre external, recomendamos a leitura (em inglês) da documentação para desenvolvimento do Dart: [DartLangSpecDraft - 9.4 External Functions](https://spec.dart.dev/DartLangSpecDraft.pdf#External%20Functions).

### Para saber mais: testando o Null

Para complementar seu conhecimento, teste o comportamento de referência nulas em uma aplicação só de estudos.

Crie variáveis com ?, como Account? e não a inicialize (o que é similar a inicializar com um null).

Então, chame um membro qualquer usando o operador de null check, o bang !. Rode o programa e perceba que o erro CastError será apresentado com a seguinte mensagem: “Null check operator used on a null value”, o que lhe indica que você usou o operador em uma variável que era nula.

Usar o bang ! em um código real é uma má prática e deve ser evitado, mas você pode sempre utilizar dessa ferramenta para testar código durante seus estudos e ganhar segurança na sua programação em Dart.

### Faça como eu fiz: detalhando a simulação

Fora do ambiente de estudos, entrando em situações reais de código, o caso que vai ser mais comum de se necessitar usar uma variável ou propriedade que pode ser nula é quando esperamos uma informação que vem de um ambiente externo (como a Internet) e, por infindáveis motivos, essa informação pode jamais chegar. Nosso programa não pode quebrar por causa disso, ele deve estar preparado para continuar funcionando mesmo com as informações incompletas.

Como não é o objetivo desse curso usar uma Web API para receber informações da Internet, ou consultar a Memória Secundária para obter dados de um banco de dados, criamos uma simulação que, a cada vez que rodarmos o programa, poderá gerar uma variável nula ou uma não nula, como poderia acontecer em uma situação real.

Agora é a sua vez! Baseado no que aprendemos até aqui, você terá que usar o método .nextInt(), da classe Random, da biblioteca dart:math para criar um código que, a cada vez que rodamos, tem 50% de chance de gerar uma Account nula, e 50% de chance de gerar uma Account inicializada.

#### Opinião do instrutor
￼
Vamos analisar atentamente o código para entender como fazer esse código:

```dart
  Account? myAccount;

  // Simulando uma comunicação externa que pode ou não preencher myAccount
  Random rng = Random();
  if (rng.nextInt(10) % 2 == 0) {
    myAccount =
        Account(name: "Ricarth Lima", balance: 300, isAuthenticated: true);
  }
  print(myAccount.runtimeType);
```

Na linha Account? myAccount, apenas declaramos uma variável que pode ou não ser nula do tipo Account. Como ela não foi inicializada na declaração, até aí ela é nula.

Depois em Random rng = Random() instanciamos um objeto do tipo Random da biblioteca dart:math que é nativa do Dart. Esse objeto pode gerar vários tipos de valores aleatórios com seus métodos.

Logo em seguida, usamos os rng.nextInt(10) para gerar um número inteiro de 0 a 10 aleatoriamente. Todas as vezes que esse programa rodar, um número aleatório diferente será gerado, e esse é o motor do realismo da nossa situação.

Na mesma linha pegamos o resto da divisão do número gerado e comparamos com zero, basicamente, testamos se ele é par. Caso seja par, entramos no if e nele inicializamos nossa variável com uma Account. Caso seja ímpar não entramos no if e nossa variável continua com um nulo.

Por fim, usamos print(myAccount.runtimeType) para mostrar na tela o tipo da variável, já que é impossível prever qual tipo será (Account ou Nulo) em tempo de compilação, apenas em tempo de execução.

É claro que em uma situação real, as chances seriam bem mais favoráveis do que 50% para perda de alguma informação, mas com essa simulação podemos testar dinamicamente e em tempo de execução se vamos de fato conseguir lidar com nulos de forma segura!

Gostou? Comenta lá no fórum o que achou e se ficou com alguma dúvida. Vamos adorar interagir com você.

### Sobre a referência nula

Aprendemos que o Dart oferece bastante suporte para evitar o problema de referências nulas. Considerando tudo que foi apresentado, leia com atenção as alternativas a seguir e marque as que melhor representam o que nós, como pessoas programadoras, devemos fazer para lidar com nulos de forma segura.

- Ao escrever código com Dart não recebemos Erros ou Exceptions geradas por causa de referências nulas.
- Não devemos escrever código com tipos que podem receber referências nulas.
- **Para inicializar uma variável com null, ela precisa ser nullable (que pode ser nula).**
  - *Exatamente! Como vimos, existe o universo de todos os tipos e esses naturalmente não podem receber nulos. Usamos a ? para permitir que um tipo possa receber null, ou seja, se torne nullable.*
- **Se durante o seu código o Dart Analyzer (automatização que verifica seu código enquanto você escreve) nota que você está tentando acessar diretamente uma referência que pode ser nula, o código não compila.**
  - *Perfeito! O Dart Analyzer tem inteligência o suficiente para notar a tentativa de acesso a uma referência que pode ser nula e que, por consequência, pode gerar um erro em tempo de execução (Runtime). Nesse caso o Ambiente de Desenvolvimento (IDE) vai acusar um erro mesmo antes de rodar.*
- Podemos usar a ? no termo var durante a declaração de uma variável para definir que um tipo poderá receber nulo, mesmo que não conheçamos ele ainda.

### Projeto de final do curso

Deixamos para você o Projeto completo implementado do curso para você baixar [aqui](./resources/dart_exceptions-aula04.zip). E se preferir, você também pode acessar o repositório completo no [GitHub](https://github.com/alura-cursos/dart_exceptions).

### O que aprendemos na aula 4?

Parabéns! Você chegou ao final da nossa última aula. Vamos relembrar o que aprendemos:

- **O que é um Nulo:**
  - Aprendemos que no Dart, o Nulo é um tipo não instanciável e representa a ausência de valor. Aprendemos também que no passado, o null era um subtipo de todos os tipos, mas desde a implementação do Null Safety na linguagem, o Null passou a ser um tipo a parte de todos, podendo agora uma variável ou propriedade receber ou apenas valores não nulos, ou tanto valores nulos quanto não nulos.
- **O problema que o Null Safety resolve:**
  - Aprendemos que o Null Safety resolve o problema das Referências Nulas, ou seja, de tentarmos acessar membros de variáveis que estão com valores nulos, evitando assim erros em tempo de execução.
- **Como lidar com nulos de uma forma segura:**
  - Por fim, aprendemos que existem algumas formas seguras de se lidar com nulos e a principal delas é testando se a variável contém ou não um valor nulo. Esse teste com if-else garante, em tempo de execução, que a variável não será nula. Também podemos usar a chamada segura, ou Safe Call, utilizando a ? quando queremos tentar acessar um membro de uma classe, e não uma variável local.

E, assim, encerramos a Aula 4, onde falamos sobre um dos assuntos mais importantes para você que pretende se destacar na área e se tornar uma pessoa programadora de Dart e Flutter com diferencial no mercado!

### Recados finais

Parabéns, você chegou ao fim de mais um curso! Estamos muito felizes por ter concluído essa jornada e esperamos que tenha sido uma experiência encantadora.

Dart e Flutter são tecnologias incríveis que estão em crescimento e nós, a comunidade, somos parte essencial disso! Então comente nas suas redes sociais que você terminou esse curso e o que está achando dessa tecnologia! Se quiser, marque @aluraonline e/ou @ricarthlima que vai ser um prazer ver seu progresso! Não se esqueça de conversar com outras pessoas que estão cursando Dart lá pelo [Discord da Alura](https://discord.gg/SK9bj7hEYD), pois também é um espaço para fazer amigos e amigas e crescer a nossa comunidade!
