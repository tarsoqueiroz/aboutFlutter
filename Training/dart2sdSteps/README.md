# Dart: Dominando a Orientação a Objetos

## Introdução ao curso de Dart: Dominando a Orientação a Objetos

> `https://cursos.alura.com.br/course/dart-orientacao-objetos`

-  Aprenda o que são classes e como trabalhar com elas
-  Gere objetos a partir de classes
-  Entenda métodos e composição de classes
-  Compreenda Get e Set
-  Treine com construtores

## A primeira classe

### Introdução

[00:00] O meu nome é Timóteo Holanda e este é o segundo curso de Dart da Alura. No primeiro curso nós vimos coisas como tipos, como variáveis, o que são condicionais, o que é o fluxo do programa.

[00:15] E nesse curso nós vamos utilizar todo esse conhecimento para nos aprofundarmos em orientação a objetos, o que é orientação a objetos. O que são classes e como nós vamos utilizar essas classes dentro do nosso programa.

[00:30] Assim como a classe, nós vamos aprender o que são construtores dessas classes, como nós vamos construir objetos a partir dessas classes. E assim, falando de objetos, nós temos que falar também de instâncias. O que são as instâncias? O que está gerando esses objetos dentro do nosso programa?

[00:51] Nós vamos ver também métodos, o que são métodos dentro dos nossos objetos, dentro das nossas classes. O que são argumentos desses métodos e como retornar um valor desse método.

[01:08] Não só isso, nós vamos aprender a manter o nosso código consistente, para que outros programadores que cheguem no projeto depois de você ou que estejam programando junto a você, possam manter o seu código organizado, importando arquivos para dentro de outro arquivo que você esteja já trabalhando.

[01:31] Nós vamos ver como colocar classes dentro de classes. Nós vamos ver o que são membros estáticos, nós vamos ver o que são membros públicos, o que são métodos privados e membros privados.

[01:44] Nós vamos tentar aprender como escrever um código que é fácil de manter, fácil de entender e também outra variedade de coisas que implementam a orientação [DE] objetos, como o get e set, como fazer isso utilizando o Dart.

[02:05] Se eu consegui chamar a sua atenção, venha comigo para a próxima aula e vamos continuar aprendendo.

### Nossa primeira classe

[00:00] Agora que nós já sabemos algumas diferenças na teoria entre programação procedural e programação orientada a objetos, nós vamos ver como, na prática, representar essa ideia em nossos projetos do mundo real.

[00:17] Para contextualizar os exercícios desse curso, vamos dizer que nós fomos contratados pelo Alura Bank, o banco da Alura. E como programadores da arte do banco da Alura, nós ficamos responsáveis por todo o módulo de conta corrente desse banco. Para facilitar o nosso trabalho, vamos desenhar quais serão as propriedades dessa conta corrente.

[00:43] Eu vou criar aqui uma caixinha e dentro dessa caixinha, que eu vou chamar de “ContaCorrente”, nós vamos guardar todos os tipos pertinentes a essa conta corrente. Como assim?

[00:57] O que toda conta corrente tem? Pensando aqui por alto, toda conta corrente tem um titular. Esse titular é o dono dessa conta, e todo dono dessa conta tem um nome. Portanto, nós vamos utilizar uma string para representar o titular dessa conta corrente.

[01:22] Toda conta corrente também possui um número de agência, que representa qual agência desse banco essa conta corrente foi criada. O banco pode ter várias agências, mas nós vamos utilizar um identificador único da agência, que pode ser um número inteiro.

[01:50] Assim como todo banco tem várias agências, toda agência pode ter várias contas. Então o número dessa conta também vai ser representado por um número inteiro. Nós temos então uma conta corrente que pertence a uma agência e essa conta corrente possui um titular. Para finalizar, toda conta corrente também tem um saldo. E a motivos de explicação, eu vou utilizar um “double” para representar o dinheiro que está nessa conta corrente.

[02:36] Mas olhem só, tem uma coisa muito interessante na ciência da computação, que diz que nós não devemos nunca utilizar pontos flutuantes para representar valores monetários. O porquê disso vai um pouco além do escopo desse curso, mas a fim de explicação, nós vamos utilizar o double mesmo.

[03:00] Vou pintar isso aqui de verde, porque no futuro vai ficar um pouquinho mais fácil de entender e nós vamos voltar agora para o Visual Studio Code.

[03:10] Eu quero criar um novo projeto, mas eu não vou criar uma pasta e colocar arquivos separados dentro dessa pasta. Vamos criar um projeto utilizando o plugin de Dart, que o Visual Studio Code possui. Se você apertar “Ctrl + Shift + X” no Visual Studio vai aparecer essa janelinha aqui, à esquerda, e você pode procurar por “dart” no campo de texto. O primeiro plugin que aparecer é o plugin de Dart.

[03:46] Se você tem instalado, vai aparecer esses dois botões em azul aqui, “Disable” e “Uninstall”. Se você não tem instalado, vai aparecer apenas um botão verde escrito “Install”, então você clica no botão Install e o aguarda instalar. Eu já o tenho instalado aqui, então nós vamos dar continuidade dessa vez criando um projeto.

[04:10] Com esse plugin instalado, você pode apertar “Ctrl + Shift + P” e vai aparecer essa janelinha no centro da sua tela. Você vai escrever “dart”, apertar “:” e a palavra “new”. Ali, a primeira opção, “Dart: New Project”, ou seja, um novo projeto de Dart.

[04:34] Se você selecionar essa opção, o próprio Visual Studio Code vai se preocupar em fazer esse projeto do zero para nós. Mas ele vai criar apenas o esqueleto do projeto e nós vamos nos preocupar em criar o restante do projeto.

[04:52] Selecionem a terceira opção, “Console Application”, e logo em seguida vocês vão escolher o nome desse projeto. Eu vou dar o nome de “alurabank”. Apertando o “Enter” ele vai onde você quer salvar esse projeto, e eu vou deixá-lo salvo aqui na área de trabalho mesmo.

[05:16] Agora vocês vão aguardar, o Visual Studio Code vai estar criando todos os arquivos pertinentes a esse projeto. Enquanto ele executa isso eu vou explicar o porquê que nós fizemos dessa forma. Fazendo assim, o Visual Studio Code vai criar um esqueleto, com todos os arquivos que futuramente nós vamos precisar, de uma forma ou outra, e você não vai precisar se preocupar se eles estão certos ou no lugar certo, porque ele sempre vai criar da mesma forma.

[05:50] Começando a explicar aqui, no lado esquerdo, nessa janela onde tem os arquivos do projeto, nós temos algumas pastas que são importantes. A primeira é a pasta “bin”. Se você abri-la você vai ver que tem um arquivo chamado “main.dart”. Nós temos uma pasta “lib”, com “alurabank.dart”, e uma pasta “test”, com “alurabank_test”.

[06:18] Esse “alurabank_test” vai muito além do escopo desse projeto desse curso, então nós vamos excluí-lo. Seguindo aqui, na pasta “lib”, “alurabank.dart”, também não vamos precisar disso aqui, podemos excluí-lo também. E no arquivo “main.dart” eu vou apagar isso tudo e nós vamos escrever aquela estrutura básica do nosso projeto de Dart, o “void main() { }”.

[06:57] Aqui nós vamos começar a escrever, pensando em conta corrente, como nós vamos mostrar, denominar uma conta corrente dentro do nosso programa. A forma que nós faríamos com programação procedural seria, digamos que o nosso primeiro cliente do nosso banco chegou e quer fazer uma conta. O nome dele é Gabriel, ele está na agência 123, a conta dele vai ser um número qualquer que nós vamos gerar e ele quer depositar 10 reais na sua conta.

[07:34] Vamos ver aqui de novo. Gabriel é o titular, a agência que ele está é 123, a conta nós vamos inventar uma e o saldo deve ser 10, porque ele já quer depositar 10. Então voltando para o código, nós começamos a escrever. “String titular = “Gabriel”;” que é o nome dele, “int agencia = 123;”, que é essa agência que ele está, “int conta = 145;”, inventei um número aqui agora e “double saldo = 10.0”, porque ele depositou 10 reais agora. Nós temos o nosso primeiro cliente.

[08:27] Mas logo depois de o Gabriel sair da agência, José chega e quer criar a conta dele também. Vamos criar uma conta corrente para o José? “String titular = “José”;”. Já temos um problema, “titular” já foi utilizado, está sendo utilizado por Gabriel. Então eu vou temporariamente colocar “titular1” aqui. “int agencia = 123;”, que é a agência que ele está no momento.

[09:09] Só que, mais uma vez, o nome “agencia” já foi utilizado, vamos colocar “agencia1”. “int conta”, “conta” também já teria sido utilizado, então vamos colocar “conta1”. Ele vai ser “146”. E “double saldo = 0.0” porque ele não depositou nada e, “saldo” também já foi utilizado. Vou ter que colocar “saldo1”.

[09:39] Logo depois de o José sair, Gabriela chegou. Então “String titular2 = “gabriela”; o nome ficou errado, mas está chegando cliente, nós temos que continuar criando várias variáveis. “agencia2 = 147”, eu errei a agência, mas eu não tenho tempo de consertar.

[10:10] Se vocês não perceberam, a forma procedural de criar esses usuários para o nosso banco é um pouquinho complicado. Vamos excluir esse José e Gabriela que nós criamos aqui agora e realmente pensar no paradigma de orientação a objetos. Nós vamos utilizar dessa vez uma nova palavra reservada do Dart para criar uma classe.

[10:46] Classes são aquilo que geram os nossos objetos. Para utilizar uma classe no Dart, você vai simplesmente escrever “class”. Nós devemos escrever essa classe fora da nossa main, ou seja, fora das duas “{ }” que compõem tudo aquilo que está em nossa main.

[11:10] Se tentamos escrever “class” dentro da nossa main nós temos um erro, porque nós precisamos de um espaço que não esteja sendo ocupado por uma função. Portanto, eu vou levar “class” para fora da nossa main e dar o nome dela de “ContaCorrente”, abro e fecho “{ }” também e dessa vez não tem nenhum erro no nosso programa. Agora vou colocá-la dentro da nossa main e o erro acontece, porque ela não vai funcionar dentro de outras funções.

[11:57] Com a class do lado de fora nós vamos popular essa class com tudo aquilo que pertence a uma conta corrente. O “titular” pertence a uma conta corrente, mas eu não vou colocar o Gabriel logo após. Nós estamos criando uma conta corrente genérica, nós estamos fazendo esse quadradinho que nós desenhamos. Nós também temos a “agencia”, nós temos a “conta” e nós temos o “saldo”.

[12:37] Com essa classe criada nós podemos vir na nossa main e realmente utilizar. Eu excluí tudo aquilo que pertencia a Gabriel. Mas a partir de agora eu tenho uma classe que é a nossa conta corrente e com ela eu posso criar uma conta corrente dentro da nossa main. Vou dar o nome dessa conta corrente, por enquanto, vai ser “conta”.

[13:09] Observem que nós vamos utilizar a nossa conta corrente como se fosse um tipo de variável normal, então no “String”, por exemplo, antecede o nome de alguém, então o “gabriel” é o nome de alguém e nós acabamos de criar uma variável para segurar o nome de Gabriel. Mas com a nossa classe nós temos acesso a todas essas variáveis. Agora que nós criamos a nossa conta, vamos imprimir isso aqui para ver o que o Dart vai nos retornar.

[13:51] Então eu salvei esse programa, vou vir no meu terminal, abrir “alurabank” e a pasta “bin” e eu vou rodar “dart main.dart”. Nós temos essa palavrinha aqui, “null”. Mas o que isso significa?

### Classes e objetos

Em nossa primeira aula nós aprendemos como criamos classes na linguagem Dart, e assim, criamos também nosso primeiro objeto. Qual a relação entre classes e objetos?

- Um objeto define a estrutura do que é uma classe.
- **A classe é a estrutura daquilo que virá a se tornar o objeto.**
  - ***Correto! A função de uma classe é formalizar o que em algum momento se tornará um objeto dentro de nosso programa***
- Classes e objetos são nomes para um mesmo conceito.

### Vantagens da POO

Em algum momento da história da programação, houve uma mudança de visão sobre as melhores práticas de implementação de sistemas, neste curso, estamos vendo a troca de programação procedural pela programação Orientada a Objetos.

Com base no que vimos nestas primeiras aulas, cite benefícios da POO.

- **Reutilizar código.**
  - ***Correto! Ao utilizar POO, podemos reutilizar partes de nosso código, reduzindo a quantidade trechos de código considerados não importantes.***
- Reduz o tamanho do programa.
- **Escalabilidade**
  - ***Correto! Um código feito considerando as vantagens da POO se torna incrivelmente escalável, facilitando seu desenvolvimento tanto em projetos pequenos como em projetos gigantes.***
- Torna o código unilateral.
- **Organização de código.**
  - ***Correta! Ao utilizar POO, seu código se torna mais descritivo, melhorando muito sua organização.***

### Criando objetos

Qual das expressões abaixo representa corretamente a criação de um objeto da classe Conta Corrente?

- contacorrente ContaCorrente
- new ContaCorrente conta;
- class ContaCorrente { … }
- **ContaCorrente contacorrente;**
  - ***Correto! Utilizamos o mesmo nome de nossa classe, seguido do nome que queremos dar para nossa variável.***
- object Cotacorrente

### O que aprendemos?

Vimos algumas características da orientação a objetos utilizando Dart:

- O que são classes;
- Como criar classes;
- Como criar um objeto.

## Utilizando nossos Objetos

### Usando nossa classe

[00:00] Agora que nós criamos a nossa primeira classe, a classe conta corrente, e já criamos uma variável do tipo conta corrente, que é o nosso objeto, quando nós tentamos imprimir esse objeto, no nosso terminal sai o quê? “main.dart”, olha só, sai esse “null”. O que é esse null?

[00:24] O null significa nada. Significa que não existe nada dentro dessa variável. Não é nem 0, não é nem 1, não é um titular, uma agência, uma conta e um saldo, é literalmente nada.

[00:38] Isso acontece pela mesma forma quando nós com inicializamos, por exemplo, uma variável do tipo valor, mas nós não atribuímos valor algum a ela, se imprimirmos essa variável “valor” que eu acabei de criar e executar em meu terminal vai sair “null” também, porque nós não inicializamos esse valor.

[01:05] Agora, se eu coloco “valor = 12” aqui, por exemplo, salvo meu programa, vou no meu terminal e executo novamente, em vez de sair null vai sair “12”, porque é o que eu inicializei dentro de valor.

[01:21] E como nós inicializamos as nossas variáveis que representam os nossos objetos das classes que nós criamos? Nós podemos igualá-lo à própria classe, então “ContaCorrente”. Dessa vez nós colocamos os “()”, porque atributos dentro de nossas classes são opcionais, nós podemos ou não inserir argumentos que vão eventualmente virar atributos de nossa classe.

[01:58] Aqui nós estamos inicializando a nossa conta, nós estamos criando uma instância da conta corrente e colocando dentro da nossa variável “conta”. Dessa vez, quando eu imprimo “conta”, olha só o que acontece, nós temos uma instância. Não salvei meu código. Salvei, voltei no meu terminal, executei o código e, olha só, nós temos uma instância de ContaCorrente. Não é mais null, agora é uma instância de ContaCorrente.

[02:35] Isso que nós fizemos é basicamente copiar e colar a nossa classe, que nós já temos. Vou pintá-la de outra cor, porque isso aqui é uma instância da ContaCorrente e nós demos o nome dela de “conta”, é o nome da variável.

[02:55] Esse quadradinho verde, “ContaCorrente”, é diferente desse quadradinho azul chamado “conta”, porque o quadradinho azul é uma instância da ContaCorrente, isso significa que isso agora é um objeto. É um objeto que tem o nome de “conta” e possui essas quatro propriedades.

[03:18] E como eu acesso essas propriedades? Se eu tenho, eu tenho que colocar alguma coisa lá dentro também, não necessariamente tenho que colocar, mas eu posso colocar. Por exemplo, agora que eu tenho o meu objeto conta no meu código, eu posso utilizar “conta” e eu aperto o “.” logo após, para acessar as propriedades dessa variável, que é um objeto de uma classe.

[03:48] Eu tenho aqui o Visual Studio Code, ele já abre essa janelinha e me mostra todas as propriedades que eu tenho acesso dessa classe, por exemplo, “agencia” é uma delas, “conta” é outra, “saldo” e “titular” são as outras duas que nós tínhamos criado.

[04:08] Vocês vão ver algumas que também nós não criamos, mas isso o Dart já faz por padrão para todas as classes. Esses aqui não entram no escopo desse curso, mas logo mais nós saberemos utilizá-los também.

[04:26] Se eu quiser acessar o titular dessa conta, eu posso escrever “conta.titular”, e eu vou tratar isso aqui como uma variável qualquer. Se eu quiser colocar um valor lá dentro, eu vou utilizar aspas e vou colocar, por exemplo, o meu nome. Agora eu sou o titular dessa conta. O que eu acabei de fazer aqui é colocar o valor da string “Timóteo” dentro da “conta.titular”.

[04:59] Voltando ao desenho, nessa conta, aqui no titular, o tipo dela é string, mas o valor dela agora é “Timóteo”. Os outros que nós ainda não inicializamos, não demos um valor, continuam com seus tipos normais, mas o titular agora é Timóteo.

[05:24] Voltando ao código, e se eu quiser imprimir o titular dessa conta? Nós podemos utilizar a própria conta aqui, dentro do nosso print, e colocar .titular. Agora nós estamos acessando o campo titular da minha conta. Vou salvar o meu código, volto ao meu terminal e executo novamente.

[05:51] Vocês vão ver que a saída do meu programa agora é o meu nome, e esse é o esperado, porque dentro de titular, na conta, que é uma instância de ContaCorrente, um objeto do tipo ContaCorrente, eu coloquei o meu nome.

[06:11] Para acessar os outros campos eu sigo o mesmo padrão, “conta.agencia”, eu vou colocar o valor da agência que eu quero colocar, “conta.conta”, que é o número da conta, eu vou colocar “1234”, e “conta.saldo”, eu vou colocar aqui “150.0” reais. Agora eu tenho todos esses valores dentro da minha variável conta.

[06:44] Se eu quiser imprimi-los, eu sigo o mesmo padrão com o meu print, eu vou acessar todos eles utilizando “conta.” seguido da propriedade que eu quero acessar, então “agencia” é uma, “conta” é outra e “saldo” é outra. Salvei o meu código, vou voltar no meu terminal, executei e dessa vez vão sair todas as variáveis que eu já iniciei, já dei um valor e agora pertencem à minha conta.

[07:19] Se eu imprimir novamente “conta”, o que vai acontecer? Absolutamente nada, porque mesmo com os valores agora dentro de conta, conta não deixa de ser uma instância de ContaCorrente, a variável conta continua do jeito que ela é, só que agora as variáveis que ela contém possuem algum valor.

[07:50] Para eu imprimir esses valores agora, dentro de uma string, utilizando o seguinte padrão, por exemplo, o “Titular” dessa conta, tem que ser “$conta.titular”. Vocês vão notar uma coisa estranha. Agora que nós utilizamos o “$” seguido da palavra “conta”, só a palavra “conta” está em azul, o “.titular” não está. Por que isso está acontecendo?

[08:21] O Dart trata apenas a primeira palavra que segue o “$” dentro das suas strings para considerar uma variável. Portanto, se você quer imprimir esse conjunto “conta.titular”, você precisa utilizar “{ }”. Antes de “conta” você abre “{“ e depois de “titular” você vai fechar “}”. Agora o “$” está pegando esse conjunto inteiro, então o titular dessa conta será impresso a partir dessa variável, “conta.titular”.

[08:57] Voltando ao meu terminal, eu vou executar o meu programa novamente e dessa vez saiu “Titular: Timóteo”. É assim que eu formato as minhas strings para conter, por exemplo, o meu objeto da minha classe e alguma propriedade dele. Olha só, “conta.agencia”, “conta.conta” e “conta.saldo”. Vou atualizar desse lado também, “Titular” vira “Agência”, esse “Titular” vira “Conta” e esse “Titular” vira “Saldo”.

[09:36] Agora que eu tenho essas quatro strings sendo impressas, eu posso voltar ao meu terminal, executar novamente e eu tenho formatado como eu imprimo essas variáveis. Se eu quiser formatar uma string, eu tenho que utilizar o “$” seguido de “{ }”.

[10:03] Há uma coisa a se notar também, eu tenho acesso a todas as operações matemáticas com essas variáveis, pelo menos do tipo inteiro e do tipo double eu vou ter todas. Se eu quiser adicionar, por exemplo, ao meu saldo, “conta.saldo” eu vou lá e coloco mais 50 reais, eu posso utilizar o “+= 50.0”. Eu estarei adicionando 50 reais ao meu saldo.

[10:35] Vou imprimir aqui, antes disso tudo eu vou imprimir a minha “(conta.saldo)”. Depois de colocar 150 reais eu vou imprimir o meu saldo. E logo após colocar os 50 reais, eu vou adicionar mais um print no meu código. Vamos ver o que está acontecendo nesse trecho de código. Salvei, volto no meu terminal e executo.

[11:08] A primeira coisa que vai sair é um “null”, por quê? Nada foi inicializado ainda. O meu “conta.saldo” não tem valor algum, ele não existe, não foi inicializado, portanto, aparece null. Agora, depois de eu colocar 150 reais, eu imprimo novamente e saiu 150 reais. Depois que eu adiciono mais 50 reais no meu saldo, saiu 200 reais.

[11:43] O que nós estamos fazendo com esse código? Voltando ao nosso desenho, dessa vez a minha instância de ContaCorrente que se chama conta possui uma agência que tem o número 123. Possui uma conta também que é o número 1234 e possui um saldo, que depois do meu primeiro depósito e dos meus outros 50 reais é 200 reais. Essa instância aqui existe por todo o meu código, a não ser que eventualmente eu descarte. Mas isso está para uma aula futura.

### Valores padrões

[00:00] Agora nós vamos explorar uma condição das nossas classes que pode ser muito útil. Vamos criar uma nova conta para uma nova cliente, “contadaAmanda”. Nós vamos instanciar esse objeto fazendo o quê? Igualando-o a uma instância da ContaCorrente. Então nós só igualamos ao nome “ContaCorrente”, seguido de “()”.

[00:33] Valores padrões, como nós fazemos isso? Valores padrões são os valores das propriedades de uma classe que sempre vão ter o valor inicial. Como assim? No caso da nossa conta corrente, sempre que um cliente criar a nossa conta, o saldo dele automaticamente vai ser 0, se ele não adicionar nada naquela conta de imediato.

[01:01] Portanto, vamos dar continuidade na nossa conta da Amanda e vamos colocar o “titular” dela, que é “Amanda”, é o nome dela. Seguido de “contadaAmanda.agencia”, vamos dar a agência “123” para a Amanda. A “contadaAmanda” também tem um número de conta, que vai ser a conta “1”, ela é a primeira cliente da agência 123. E o saldo dela inicialmente vai ser “0.0”.

[01:41] Mas percebam que eu precisei colocar o saldo dela explicitamente no meu código, olha aqui, “contadaAmanda.saldo = 0.0”, eu precisei dizer que a conta dela tinha 0 reais. Vamos imprimir tudo isso. “print(“Titular: ${contadaAmanda.titular}”)”.

[02:18] Para ser um pouquinho mais rápido eu vou imprimir apenas o “Titular” e o “Saldo”. E aqui eu vou colocar o “saldo” da Amanda. Salvei, vou no meu terminal, vou limpar isso tudo e executar o meu código novamente. Vejam que vai sair o titular, que é a Amanda, e o saldo dela, que é 0.

[02:46] Para colocar um valor padrão em alguma classe, basta nós irmos em nossa classe e colocar o valor que nós queremos que seja padrão para os objetos que forem instanciados dessa classe. Por exemplo, se eu quero que o saldo de todos os clientes inicialmente seja 0, basta eu adicionar o “= 0.0” logo após a criação do meu saldo dentro da minha classe.

[03:20] Dessa vez eu não preciso colocar um valor dentro do saldo da Amanda assim que ela cria, porque o valor já vai estar 0. Se eu executar esse código novamente vocês vão notar que nada vai ter mudado, o saldo dela continua 0.

[03:45] Mas se eu voltar no meu código e dessa vez tirar esse “= 0.0”, vocês vão notar que o saldo dela vai sair null, e isso é um problema, porque se por um acaso ela fosse sacar o dinheiro dela e o caixa eletrônico tentasse acessar o saldo dela e visse um null lá, olha só o problema que isso poderia gerar para ela, a dor de cabeça.

[04:13] Portanto, é sempre importante inicializarmos as nossas variáveis, pelo menos as que nós sabemos que sempre vão ter um valor, por exemplo, o saldo. Nós sabemos que assim que cria uma conta o saldo da pessoa é 0. Então vamos criar outra conta.

[04:36] Dessa vez eu vou criar a “ContaCorrente” que vai se chamar “contadoTiago” vai ser uma instância de “ContaCorrente()” também. Digamos que agora uma nova promoção está acontecendo no banco da Alura, todo cliente que cria uma conta no banco da Alura automaticamente já ganha 30 reais em sua conta corrente.

[05:06] Thiago vai lá e vai criar a conta dele, então o Tiago tem o “.titular”, que vai ser o nome dele, ”Tiago”. A “contadoTiago” também tem uma “.agencia”, que vai ser na mesma agência que a Amanda, e a “contadoTiago” também vai ter um número de “.conta”, que vai ser a conta “2”, logo após a Amanda.

[05:30] Agora que o banco está dando essa promoção, o início de toda conta corrente vai ter um saldo de 30 reais, então eu apenas atualizo o meu saldo, agora não é mais 0, ele já inicia como 30.

[05:47] Voltando na nossa main, eu vou imprimir agora os dados de Tiago. Imprimir “contadoTiago.titular” e “contadoTiago.saldo”. Vamos ver qual vai ser a saída desse programa. Os dois têm 30 reais, porque os dois iniciaram da minha classe ContaCorrente e o valor padrão da minha propriedade saldo é 30 reais. E assim será para qualquer valor. Se fosse 20 reais, basta eu mudar 20 ali. Agora todos os objetos que forem instanciados dessa classe vão ter por padrão o saldo de 20.

[06:45] E isso serve para qualquer tipo de variável. Se eu quiser que toda a “agencia” seja a agência “145”, e aqui não vou colocar agência para a conta do Tiago, apenas para a da Amanda. Então por padrão todas as contas são da agência 145. Vou imprimir a agência dos dois também, aqui a “Agência” e essa linha também vou fazer com a Amanda. Então a “contadaAmanda” também vai imprimir a agência dela.

[07:39] Vamos ver a saída do nosso programa. Lembrando que dessa vez a agência padrão é 145. Olha só, quando nós não colocamos uma agência para o nosso usuário, a agência dele por padrão será a 145. Mas quando nós colocamos um valor para a agência na conta da Amanda, o valor é substituído pelo que você adicionou.

[08:06] Agora, nos dois casos eu não dou um saldo para essa conta, nem para a conta da Amanda nem para a conta do Tiago, mas o nosso saldo padrão é 20, portanto as duas saíram com o saldo de 20 reais.

### Referência versus Valor

[00:00] Agora que nós vimos valores padrões, eu tenho que tocar num assunto muito importante, a igualdade entre dois objetos da mesma classe.

[00:12] Vou apagar isso tudo que nós já fizemos e dessa vez eu vou criar duas contas, a conta1 e a conta2, para exemplificar melhor quais são as diferenças entre dois objetos que se parecem muito. Então aqui eu tenho “conta1” e aqui eu tenho “conta2”.

[00:32] Para a conta1 eu vou dizer que o “titular” dele é igual ao “Felipe”, então Felipe é o dono da conta1. Na “conta1” a “agencia” dela foi feita na agência de número “123”. A “conta1” possui o número de “conta = 1” e o saldo da conta1 vamos deixá-lo padrão, vai ser o “20.0”.

[01:05] Agora eu vou pegar a conta2 e fazer exatamente a mesma coisa. O titular da “conta2” vai ser o ”Felipe”, na “conta2” a “agencia” também vai ser “123” e a “conta2” vai ter o número da “conta” de valor “1”. Observem que essas duas contas, a conta1 e a conta2, são exatamente as mesmas. Correto? Não exatamente. E eu vou provar por quê.

[01:42] Vamos imprimir aqui um simples teste de igualdade, “(conta1 == conta2)” e vamos deixar o Dart nos dizer isso. Eu vou voltar para o meu terminal, vou limpá-lo e vou rodar, “dart main.dart”. Olha só a saída do nosso programa, ele está dizendo que é falso. Os dois objetos são diferentes, eles não são iguais. Mas por quê? Se o titular da conta1 é Felipe, a agência da conta1 é 123 e a agência da conta1 é 1, assim como da conta2 tem exatamente as mesmas propriedades.

[02:30] Vamos fazer algo diferente aqui, em vez de igualar as duas contas, eu vou igualar o titular, eu vou igualar também a agência, a conta e o saldo. Então “agencia”, a “conta” e o “saldo”. Aqui também, “agencia”, a “conta” e o “saldo”.

[03:04] Dessa vez nós estamos fazendo quatro verificações. O titular da conta1 é igual ao titular da conta2? A agência da conta1 é igual a agência da conta2? E assim por diante. Vamos ao nosso terminal e executar novamente o programa. Eu esqueci de salvar. Voltando ao terminal e executando de novo.

[03:30] Observem que dessa vez nós temos quatro coisas verdadeiras, ou seja, todas essas são verdades, o titular de 1 é igual ao titular de 2, a agência de um é igual a agência de outro e assim por diante para todas as propriedades desses dois objetos. Mas os objetos em si não são iguais.

[03:52] Olhem só esse desenho, nós temos da “conta1” e a “conta2”, ambas são instâncias da minha classe “ContaCorrente”, ambas têm exatamente as mesmas propriedades, mas são dois objetos completamente diferentes. Igual dois garfos que você tem na sua cozinha, que podem ser do mesmo modelo, do mesmo tamanho, ter as mesmas propriedades, mas eles são objetos diferentes.

[04:25] Nós podemos observar isso no Dart da seguinte maneira, toda classe que é criada no Dart possui uma coisa que chamamos de hash code. O hash code ou código hash de um objeto pode ser acessado da mesma forma que você acessa qualquer outra variável. Se você escreve “hashCode” logo depois do “.”, você vai ter acesso a esse valor.

[04:56] Antes de fazer essa igualdade, eu quero imprimir o hashCode da conta1 e eu quero imprimir o hashCode da conta2. E vocês vão notar que mesmo eles tendo as mesmas propriedades, os dois são muito diferentes. Executei o meu programa e aqui está o hash code das duas contas.

[05:24] O que isso aqui significa? Isso aqui é como se fosse o RG de cada objeto. O RG é único para cada pessoa, o CPF é único para cada pessoa, assim como o hash code de um objeto, ele é único para cada objeto. Como vocês podem observar, esses dois números são bem diferentes, porque são dois objetos diferentes.

[05:53] Agora, se por um acaso nós, dentro da “conta1” igualarmos a “conta2”, observem o que vai acontecer com os hash codes. Executei, os dois hash codes agora são iguais. Esse número sempre vai mudar na execução do programa. Então vocês podem notar que esse valor não apareceu aqui em cima, porque eu executei o meu programa em outro espaço de tempo.

[06:31] Se você estiver me acompanhando em casa, você pode notar também que os seus números vão ser diferentes dos meus, mas após igualarmos, colocarmos os valores de conta2 dentro de conta1, ou seja, nós atribuímos conta2 dentro de conta1, agora sim os hashs são iguais.

[06:54] E se por um acaso nós fizermos aquela comparação novamente, o hash code da conta1 é igual ao hash code da conta2, vamos verificar executando no meu terminal. Dessa vez os dois objetos são iguais. No meu desenho seria a mesma coisa que dizer: “conta1 passa a ser conta2”, agora os dois objetos são iguais, não existe mais esse aqui, existe apenas um, que vai se chamar “conta2”.

### Imprimindo campos

Juliana começou a escrever classes em Dart acompanhando seu curso na Alura. Ela possui o seguinte código:

```Dart
ContaCorrente conta = ContaCorrente();
conta.titular = “Juliana”;
conta.agencia = 1234;
Conta.numero = 885773;
```

Se Juliana quiser imprimir todos os valores destes campos em seu terminal, qual código a seguir ela deve usar?

- **print(conta.titular); print(conta.agencia); print(conta.numero);**
  - ***Correto!***
- print(conta)
- print(ContaCorrente.titular); print(ContaCorrente.agencia); print(ContaCorrente.numero);
- print(conta.titular.agencia.numero)
- print(“conta”);

### Inicializando campos

Observe o código de José abaixo:

```Dart
ContaCorrente conta;
print(conta.saldo);
```

José não consegue fazer seu programa funcionar. Qual erro ele cometeu?

- O campo de saldo desse objeto não foi inicializado.
- **A variável responsável por armazenar nosso objeto não foi inicializada.**
  - ***Correto!***
- José deve imprimir o objeto conta para obter o saldo da conta

### Inicializando variáveis

Jonathan estava desenvolvendo um sistema para seus amigos que possuem uma concessionária. Ele escreveu a seguinte classe para representar os carros disponíveis:

```Dart
class CarrosParaLocacao {
    String marca;
    String modelo;
    bool possui4Portas;
}
```

Conversando com seus amigos, ele descobre que todos os carros possuem quatro portas. Qual mudança Jonathan pode fazer para representar essa peculiaridade em seu código?

- **Inicializar o valor da variável possui4Portas com true.**
  - ***Correto!***
- Nada precisa ser feito, o código já representa bem o problema que irá resolver.
- Jonathan deve instanciar o objeto alterando o valor do campo possui4Portas para true.

### Referências de objetos

Observe a classe abaixo:

```Dart
class ContaCorrente {
    double saldo;
}
```

A partir desta classe, o seguinte código foi utilizado:

```Dart
void main() {
    ContaCorrente conta1 = ContaCorrente();
conta1.saldo = 500;

ContaCorrente conta2 = ContaCorrente();
conta2 = conta1;
conta1.saldo += 1000;

print(conta1.saldo);
}
```

Qual valor será impresso na execução do programa?

- Imprime 500
- **Imprime 1500**
  - ***Correto! Isso acontece pois a referência destes dois objetos é a mesma, uma vez que conta1 foi atribuída à conta2.***
- Imprime 1000

### O que aprendemos?

Nesta aula aprendemos sobre atribuição e criação de objetos.

Nós vimos:

- Como acessar e alterar campos de um objeto;
- Valores padrão de campos de classes;
- Tipos de referências;
- Inicialização de campos.

Vamos nos aprofundar em classes na próxima aula, onde vamos aprender um pouco mais sobre funcionalidades de classes.

## Criando métodos

### Nosso primeiro método

[00:00] Agora que nós já sabemos que uma classe pode gerar vários objetos e esses objetos podem ser iguais ou não, vamos brincar agora com funcionalidade dessas classes.

[00:12] Vamos criar uma “ContaCorrente” com “contaDaAmanda” que vai ser igual a uma “ContaCorrente();”. O que eu quero dizer por funcionalidade? Digamos que a Amanda queira sacar dinheiro. Se ela sacar no momento 20 reais, ela vai ter atingido o limite dela. Mas o Alura Bank está oferecendo 100 de cheque especial para ela. Como nós vamos adicionar essa funcionalidade na nossa conta corrente?

[00:50] O cheque especial é aquilo que o banco nos dá de empréstimo, para nós irmos além do nosso limite, de 0 reais em nossa conta. Por exemplo, a Amanda tendo 20 reais e se ela quiser sacar 30, o saldo dela ficaria com -10, ela ficaria devendo 10 reais ao banco.

[01:11] Como nós colocamos isso no código? Vamos começar definindo quanto vai ser o saque que a Amanda vai fazer. Vamos dizer que ela queira sacar “80.0” reais. Para verificar se essa transação vai ocorrer, nós devemos fazer “if(contaDaAmanda.saldo - saque < -100)”. Para verificar se essa transação aconteceu, nós fazemos essa verificação.

[01:57] Mas isso aqui vai pegar o caso onde o saque não é permitido, porque se a conta corrente, o saldo da Amanda menos o saque, for menor do que -100, nós vamos dizer o quê? “print(“Sem saldo suficiente.”);”.

[02:20] Agora, se essa operação for permitida, “else {“, nós vamos imprimir “(“Sacando $saque reais”);”. E da “contaDaAmanda” nós vamos tirar esse “saque” que ela está fazendo. Essa é a verificação para um cheque especial de -100 reais.

[02:56] Vamos imprimir na linha de cima, antes de realizar essa operação, qual é (“Saldo da ${contaDaAmanda.titular}:” e aqui eu vou colocar “${contaDaAmanda.saldo}”);”. Vou copiar isso e colocar logo após a nossa operação. O que vocês acham que vai sair do nosso código se eu executar do jeito que está aqui? Ela está tentando sacar 80 reais e ela tem 20 reais, então ela deve ficar com -60, se a operação for permitida.

[03:50] Abrindo o meu terminal, vou executar, “dart main.dart” e olha aqui, temos um “null”, eu esqueci de dar o nome do titular para essa conta. Então “contaDaAmanda.titular = “Amanda”;”. Muito importante não se esquecer de preencher os campos que você vai utilizar.

[04:20] Executando novamente, agora sim, saldo da Amanda 20 reais, ela sacou 80 reais e o saldo dela ficou -60. Muito legal, agora nós conseguimos fazer essa verificação. Vamos testar um caso onde ela não vai conseguir sacar esse dinheiro, se ela tentar tirar 180 reais, por exemplo.

[04:45] Vamos voltar ao nosso código, executar novamente e, olha só, sem saldo suficiente dessa vez, a Amanda continua com 20 reais. Então voltando no nosso código, essa é a operação que nós fazemos para retirar dinheiro da conta de Amanda, considerando um valor de cheque especial.

[05:11] E se eu quiser agora criar outra conta? O Tiago vai e cria a conta dele. Vou inicializar a conta dele, vou dar um nome para a conta dele, que vai ser do “Tiago”. E agora eu quero fazer a mesma operação. Aqui vai passar a ser “saqueDaAmanda”, aqui, aqui e aqui vai ser “saqueDaAmanda”.

[05:52] E o saque do Tiago vai ser outro, “saqueDoTiago”, aqui ele vai tentar sacar “90.0” reais e a Amanda vai tentar sacar “30.0”. Nós vamos fazer isso aqui mais uma vez, copia isso tudo e eu vou ter que alterar tudo isso, “contaDoTiago”, isso aqui, isso também e assim por diante, até completar todos eles. E agora, em vez de saqueDaAmanda nós vamos utilizar saqueDoTiago. Eu acho que foi todos.

[06:53] Vamos voltar ao nosso terminal e executar novamente. Saldo da Amanda 20, ela tentou sacar 30, o saldo dela agora é -10. O saldo do Tiago é 20, ele tentou sacar 30 e o [SALDO] dele é -70? Temos um erro aqui.

[07:15] Se nós voltarmos no meu código, eu esqueci de alterar esse saque aqui. Eu estou mostrando o saqueDaAmanda ainda na minha main, e esse é o problema de realizar a sua lógica, que mexe com variáveis da sua classe fora da sua classe.

[07:36] Às vezes você vai se deparar com esse tipo de situação, onde você vai precisar alterar os campos de dentro da sua classe, mas se você ficar utilizando fora dela, toda hora você vai ter que criar uma conta e vai ter que copiar e colar isso tudo.

[07:54] Nós podemos levar essa lógica toda para dentro da nossa classe, porque assim todas as contas correntes vão ter essa lógica. Quando eu falo essa lógica, eu quero dizer a lógica do saque, nesse caso. E como nós trazemos essa funcionalidade para dentro da minha classe? Nós vamos utilizar de métodos.

[08:20] Métodos em uma classe são as funcionalidades dessa classe, o que essa classe pode fazer. E eu quero adicionar essa funcionalidade de saque na minha conta corrente. A primeira coisa que eu tenho que fazer é declarar o tipo dessa operação. Como assim o tipo? Assim como todas as variáveis, existe um tipo.

[08:48] Por enquanto eu vou utilizar o tipo “void”. Como já disse algumas vezes, é um tipo que não tem retorno, aquilo que não tem retorno é vazio. E eu vou dar um nome para essa operação, que eu vou chamar de “saque”. Após eu escrever o tipo dessa operação, eu preciso colocar “()”, porque dentro desse “()” nós vamos colocar quais são os atributos que eu vou enviar para esse meu método. Como assim os atributos?

[09:25] Por exemplo, eu quero fazer o saque, eu preciso saber de quanto é o meu saque. Então dentro desse “()” eu vou colocar “double”, porque eu estou tratando de dinheiro, eu estou usando o double nesses exemplos para mexer com dinheiro, e eu vou escrever “valorDoSaque”. Abro e fecho “{}” e dentro eu posso trazer todo esse if. O if e o else eu vou retirar da minha main e eu vou trazer aqui para dentro.

[10:04] Agora que eu trouxe isso aqui para dentro, eu tenho um problema. Vocês vão notar que essas linhas vermelhas estão me dizendo que aqui tem um erro. Por que tem um erro? Porque “contaDoTiago” não existe, olha só, tente corrigir esse nome, porque ele não está definido, ele não está no escopo desse método, ou seja, contadoTiago foi declarado aqui na nossa main, mas ele não existe dentro da nossa classe. Portanto, para resolver esse problema nós precisamos pensar com objetos.

[10:43] Dentro da minha classe eu quero que a minha classe em si seja referenciada por ela mesma. Quando eu quero tirar dinheiro desse saldo, eu preciso, dentro da minha classe, utilizar esse nome, essa nova palavra reservada que nós estamos utilizando pela primeira vez, o this. “this.saldo -“, eu estou referenciando esse saldo aqui, porque é o saldo dessa conta.

[11:20] Menos o quê? Agora não é mais “saquedoTiago”, agora é “valorDoSaque”, porque é a quantidade de dinheiro que eu estou tentando sacar. Aqui também não é mais “saqueDaAmanda” é o “valorDoSaque” que eu estou tentando sacar. Aqui não é mais “contaDoTiago”, aqui é “this”, “-= valorDoSaque”. Agora eu tenho uma funcionalidade dentro da minha classe, que eu posso utilizar por todos os meus objetos que foram feitos a partir dessa classe.

[11:59] Voltando na minha main, agora eu posso retirar essa parte da Amanda e eu vou tentar sacar dinheiro da conta dela utilizando essa minha nova funcionalidade. Por enquanto eu vou tirar essas duas variáveis de saque também, nós vamos utilizar valores diretos. Como assim diretos? Vamos ver.

[12:26] Na contaDaAmanda, quando eu vou tentar movimentar dinheiro com a contaDaAmanda, eu preciso agora, para utilizar essa nova funcionalidade, escrever “.” e vocês vão notar algo novo.

[12:40] Olha aqui, a minha funcionalidade, o meu método de saque está aqui e vocês vão notar que diferente de uma variável da minha classe, que tem esse quadradinho azul, o meu método tem essa caixinha roxa. Vou clicar em cima dela e o Visual Studio Code já vai preencher os resto para mim, “.saque” e ele colocou aquele “valorDoSaque” aqui dentro. E o que é o “valorDoSaque”? É quanto a Amanda está tentando sacar.

[13:16] Vamos dizer que ela queira sacar 80 reais. Por termos definido que esse valor vai ser um double, eu vou colocar um double aqui dentro. E agora nós precisamos também fazer isso com a contaDoTiago. Então “contaDoTiago.”, olha o “saque” aqui, posso só clicar nele e o Visual Studio Code vai completar para mim.

[13:44] Qual é o valor que o Tiago vai tentar sacar? Vamos dizer “130.0” reais, porque vai ser uma operação que não será realizada. E aqui nós vamos testar os dois casos, um onde é possível sacar e um onde não é possível sacar.

[14:03] Voltando ao meu terminal, vou limpá-lo e eu vou executar novamente. E olha aqui, o saldo da Amanda antes do saque era de 20 reais, ela sacou 80 e ficou com -60. Tiago, no entanto, tinha 20, tentou sacar 130, ele não tinha saldo suficiente e ficou com 20. Então assim nós criamos uma funcionalidade para a nossa conta.

### Métodos com retorno

[00:00] Agora que nós sabemos criar uma nova funcionalidade para as nossas contas, nós adicionamos esse método, o “saque”, em nossas contas correntes, nossa classe. Como nós damos continuidade a essa ideia?

[00:18] Vamos agora elevar um pouco o nível desse tipo de pensamento. Nós já utilizamos aqui para fazer um saque, vamos fazer agora um depósito. Voltando na minha classe, como nós fazemos um depósito? Um depósito é apenas adicionar dinheiro em nossa conta corrente.

[00:43] Nós precisamos então pensar da mesma forma como nós fizemos no nosso saque, “void”, por enquanto, “deposito()” e vamos colocar aqui “double valorDoDeposito”. Vamos abrir e fechar “{}” e dentro do meu depósito eu tenho que adicionar qual vai ser a lógica desse depósito.

[01:14] Como nós estamos tentando colocar dinheiro, não há restrição alguma sobre colocar dinheiro em nossas contas, eu preciso apenas escrever “this” para referenciar esta conta corrente que nós estamos dentro, “saldo”, que é o valor onde eu vou adicionar esse dinheiro, “+= valorDoDeposito;”. É apenas isso que nós precisamos para fazer a funcionalidade do depósito.

[01:52] Subindo aqui, agora nós podemos tentar de uma forma diferente. Antes de imprimir o valor de Amanda eu vou adicionar “contaDaAmanda.deposito”, olha aqui, agora nós temos acesso a esse método da nossa classe, e o “(valorDoDeposito)” eu vou tentar colocar “20.0” reais na conta da Amanda.

[02:21] E na “contaDoTiago.deposito” eu vou tentar adicionar “50.0” reais. Se agora eu coloco 50 reais, essa operação vai ser permitida, porque quando eu coloco 50 reais, Tiago não vai ter mais só 20, ele terá 70, e vai ter dinheiro suficiente para fazer a operação de saque de 130 reais.

[02:55] Salvei o meu código, vou voltar no meu terminal, limpar e executar. Meu programa foi executado e olha só, agora Tiago tem saldo suficiente de 70 para sacar 130 e ficar com -60. Amanda tinha 40 antes de fazer um saque de 80 e ficar com -40. Nós temos agora uma funcionalidade de depósito.

[03:29] Vamos pensar agora em como nós trazemos uma função de retorno para esses nossos métodos. Como assim retorno? Nossos métodos eu escrevi com “void”, por enquanto. Esse void, como eu tinha dito, não retorna nada, mas nós podemos dar um tipo de retorno para essa operação. Aqui eu quero tentar fazer um retorno de uma variável booleana.

[04:01] O tipo de retorno dos nossos métodos pode ser o que nós quisermos, desde que nós retornemos aquele tipo para a função onde ele foi chamado. No caso, se no meu saque eu quero colocar um retorno do tipo booleano, eu preciso retornar que eu tive um problema quando eu não consegui sacar esse dinheiro.

[04:31] Nós vamos utilizar essa nova palavra reservada, “return”, para emitir um “false” quando nós não tivermos saldo suficiente. O que isso vai fazer? Nosso método de saque vai ter um valor falso quando não for suficiente o dinheiro dentro da conta. Mas se for suficiente, eu vou retornar “true”. Por quê? Porque se eu tenho dinheiro suficiente lá, a operação deu certo.

[05:08] Vamos pensar da mesma forma aqui no depósito, só que aqui no depósito eu vou mudar e vou utilizar “double”. E o que nós vamos retornar aqui do double? Vamos retornar o “this.saldo”, que é o valor do saldo dessa operação.

[05:37] Se eu salvar o meu código e executá-lo de novo, nós temos aqui exatamente a mesma coisa, nada mudou. Por que isso é importante? Para que eu utilizo isso? Nós vamos utilizar isso porque aqui, com o retorno de nossas funções, agora nós podemos saber o que essas funções me retornam. Como assim?

[06:06] Vamos tentar fazer um saque na conta da Amanda, “contaDaAmanda.saque” e um valor que ela tem, então “20” reais. Vamos também agora adicionar uma variável booleana, que vai receber isso aqui. Essa operação teve sucesso? Não sei, vamos verificar. Eu criei uma variável booleana chamada “sucesso” que vai receber essa operação aqui, e essa operação vai verificar se tem saldo. Se não tiver vai retornar um falso, se tiver, ele vai realizar a operação e retornar true.

[06:55] Vamos imprimir a variável sucesso. Voltando no nosso terminal, eu vou executar novamente. Sacou 20 reais e tivemos sucesso na nossa transação. E se Amanda tentar sacar 150 reais, qual vai ser o retorno desse meu código? Sem saldo suficiente. E a minha funcionalidade, o meu método retornou “false”.

[07:37] Agora que nós testamos com o saque, vamos tentar com o depósito. Qual vai ser o retorno de “sucesso” se eu mudar o tipo dele? E olha só, eu mudei para “double” e o Visual Studio Code já me mostrou aqui que um tipo bool não pode ser atribuído a uma variável do tipo double, ou seja, o nosso saque está retornando um valor booleano, enquanto nós estamos tentando recebê-lo no tipo double.

[08:10] Para resolver isso eu vou utilizar “.deposito”, porque agora nós vamos verificar não no saque, mas sim no depósito. E a Amanda vai fazer um depósito de “20.0” reais. Qual vai ser o valor de sucesso depois que a Amanda realizar essa operação? 40 reais, que é o valor que ela já tinha na conta, mais os 20 reais. E se for 120? Volto no meu terminal, 140, que são os 20 reais que ela tinha mais o 120 que ela acabou de depositar.

[08:54] Então nós aprendemos que nós podemos adicionar um valor de retorno para os nossos métodos. Os nossos métodos podem ter um tipo.

### Métodos com vários argumentos

[00:00] Agora que nós já temos métodos que têm sua própria funcionalidade, por exemplo, nosso método de saque vai retirar dinheiro dessa conta. Nosso método de depósito deposita dinheiro nessa conta. E nós já descobrimos também que nossos métodos podem ter tipos e dentro dos meus métodos com tipos eu posso retornar um valor para seja lá onde eu chamei esse método.

[00:31] Por exemplo, em nossa main, aqui eu estou chamando o método de depósito na conta da Amanda e eu estou armazenando o que esse método retorna dentro de uma variável, para que eu possa utilizar como eu quiser dentro da minha main.

[00:50] Vamos dar continuidade com esse conhecimento descobrindo como nós fazemos métodos que têm mais de um argumento. Se vocês prestarem atenção, tanto o nosso método de saque quanto o nosso método de depósito têm apenas um argumento, que é o “valorDoSaque” ou o “valorDoDeposito”.

[01:15] Esse argumento aqui está sendo utilizado apenas uma vez pelos dois métodos, então nós primeiro verificamos se ele tem o saldo suficiente e se ele tiver, nós vamos reduzir o valor do saldo dele desse valor de saque. E aqui no meu depósito eu vou adicionar ao valor do saldo dele.

[01:43] E se eu precisar de mais um valor ou mais uma variável dentro do meu método, como eu faço? Para demonstrar como fazer isso eu vou fazer o método de transferência. Contas correntes podem transferir dinheiro entre elas mesmas. Se você tem uma conta corrente e você quer transferir dinheiro para o seu amigo, você precisa apenas dar o valor da sua transferência e para qual conta você quer transferir, e nós vamos fazer isso no nosso código.

[02:17] Vamos começar dando o tipo do meu método, que vai ser booleano, e eu vou dar um nome para esse método que vai ser “transferencia” mesmo. No meu método de transferência eu vou abrir e fechar “()” e colocar os argumentos que eu preciso dentro dele.

[02:40] Primeira coisa que eu preciso é um valor que será transferido. Então “double valorDeTransferencia”. Eu vou colocar uma “,” para indicar que eu quero colocar mais um argumento nesse método, posso dar um espaço, mas não preciso, “ContaCorrente contaDestino”. Como assim? Eu estou referenciando a minha ContaCorrente dentro da minha classe ContaCorrente e, sim, isso é completamente possível.

[03:21] Por que isso é possível? A nossa classe armazena informações sobre um objeto que será instanciado durante a execução do meu programa e esse objeto não passa de uma variável, uma variável do tipo dessa classe. Como ele não passa de uma variável, eu posso utilizar o tipo dele dentro do próprio tipo dele, ou seja, dentro da classe eu ainda posso utilizar outra conta corrente. Isso é possível, sim.

[03:55] Logo após ter declarado o nome do meu método e os argumentos do meu método, vou abrir e fechar “{}” e aqui dentro nós vamos colocar a lógica dessa função de transferência. A primeira coisa que nós vamos verificar é se o usuário tem saldo suficiente. Eu não posso fazer uma transferência sem limitar a quantidade de dinheiro que será transferido de fora dessa conta. Da mesma forma como nós fizemos isso no método de saque, nós vamos apenas copiar essa primeira linha do método de saque e colar aqui.

[04:36] Notem que o valor de saque veio junto, mas dentro do meu método de transferência eu vou utilizar “valorDeTransferencia” e não “valorDoSaque”. Então vou colar o “valorDeTransferencia” no local de “valorDoSaque”. Vou fechar essa “}” e já vou escrever “else {}”, para escrever depois o que eu vou colocar aqui dentro.

[05:04] Nesse primeiro caso nós não temos saldo suficiente, então eu vou apenas imprimir “(“Sem saldo suficiente.”);”. Como o meu método tem o tipo booleano, eu posso dar um retorno para esse método, e quando não dá certo, eu quero dizer para, seja lá onde eu chamei isso, que não deu certo essa transação, então vou retornar um “false”.

[05:35] No caso que eu tenho saldo suficiente, o que eu preciso fazer? O primeiro passo é retirar dinheiro dessa conta que nós estamos. Para referenciar essa conta que nós estamos eu uso a palavra this, então “this.saldo -= valorDeTransferencia;”. Seguido do quê? Posso terminar aqui? Ainda não. Aqui eu só tirei dinheiro. Como isso é uma função de transferência, eu preciso que a minha conta de destino receba esse dinheiro, e como eu vou usar conta de destino dentro desse método?

[06:17] Como eu dei o nome de conta de destino aqui, eu preciso apenas utilizar “contaDestino”. Quando eu coloco “.” eu tenho acesso a tudo que uma conta corrente tem, a agência, a conta, o depósito, o saldo, o saque, transferência.

[06:39] Como nós vamos fazer isso aqui? Nós podemos utilizar o nosso método de depósito, que já está pronto. Nosso método de depósito adiciona dinheiro à conta que você tentar adicionar dinheiro. Na minha “contaDestino” eu vou fazer um depósito da quantidade “valorDeTransferencia”. Para terminar, eu vou retornar “true”, indicando que essa transação deu certo. E pronto, nós temos o nosso método de transferência funcional. Vamos testar?

[07:19] Aqui em cima, na minha main, não vai ser mais um “double”, agora é um “bool”. E dentro desse booleano eu vou armazenar o valor de uma tentativa de transferência. Então “contaDaAmanda.transferencia” primeiro eu preciso do valor da transferência. Vamos começar enviando “20.0” reais. E a “contaDestino” vai ser a “contaDoTiago”.

[07:50] Vou imprimir isso logo depois. Vamos verificar também o saldo dessas duas contas antes e depois dessa transação. Só vou copiar essa parte, o “print”, o saldo da conta da Amanda e na conta do Tiago, e colar depois da transação também. Vamos verificar os valores no meu terminal.

[08:15] Aqui no meu terminal eu vou escrever “dart main.dart” e olha só, saldo da Amanda 20, saldo do Tiago 20, o valor retornado foi true, ou seja, a transferência deu certo, e o saldo da Amanda agora é 0 e o saldo do Tiago é 40, ou seja, essa transferência ocorreu, os 20 reais não estão mais na conta da Amanda, agora estão na conta do Tiago.

[08:47] Vamos tentar transferir 120, será que vai dar certo? Voltei no meu terminal, vou limpar e executar novamente. Novamente o saldo da Amanda e do Tiago é 20, a transferência deu certo e o saldo da Amanda é -100 e o saldo do Tiago é 140, ou seja, todo o dinheiro que a Amanda tinha na conta foi para a conta do Tiago.

[09:16] Para terminar, vamos testar 130, será que vai dar certo? Limpei, vamos executar novamente e dessa vez a Amanda não tinha saldo, então foi notificado que ela não tinha saldo suficiente, a transferência deu errado e nenhum dinheiro foi movimentado entre conta alguma.

[09:40] Vamos voltar aqui só para verificar uma coisa, notem que tanto na minha função de transferência quanto na minha função de saque, eu retiro -100, e esses valores aqui estão escritos diretamente. E se a minha conta da Amanda tiver um cheque especial diferente da conta do Tiago? Nós temos que levar isso em consideração também.

[10:08] Esse “-100”, o que chamamos de [HARD CODED], ou seja, que está escrito diretamente no código, pode ser melhorado. E como nós melhoramos esse caso? Nós podemos criar uma variável dentro da minha ContaCorrente que vai salvar a quantidade de dinheiro que o cheque especial dessa conta tem.

[10:36] Meu “chequeEspecial”, vamos dizer que por padrão todas as contas têm um valor de “-100” de cheque especial, ou seja, todas podem ficar até um limite de -100 reais. Eu vou copiar o nome dessa variável e substituir onde está esse “-100”. Colei e agora nós temos acesso a mais um campo na minha ContaCorrente, é mais uma coisa que eu posso mudar em todas as minhas contas correntes.

[11:10] Se a partir de agora o cheque especial de Amanda era 100 reais, eu posso mudar para “contaDaAmanda.chequeEspecial” agora vai ser “= -110.0;”. Com o seu novo cheque especial, a Amanda pode realizar essa transação, vamos testar? Aqui ela não tinha saldo suficiente. Se eu limpar e executar novamente, agora ela tinha. A transação deu certo, a Amanda tinha 20, Tiago tinha 20, agora a Amanda tem -110, que é o cheque especial dela, e Tiago tem 150.

[12:05] Não só o nosso cheque especial, [NÓS] estamos fazendo algumas operações repetidas dentro dos meus métodos. Notem que tanto na função de transferência quanto na função de saldo nós fazemos essa verificação, se tem o saldo suficiente ou não, e nós imprimimos o que está acontecendo.

[12:32] Por que nós não fazemos um método interno para usar só aqui dentro que vai fazer tudo isso? E se nos nossos métodos futuros que nós formos precisar, nós podemos reutilizar esse código e não vamos ter que escrever isso tudo novamente. Então vamos escrever esse método para verificar o saldo dessa conta.

[12:56] Vamos começar dando um tipo. Como eu quero saber apenas se tem saldo ou não, eu vou usar um tipo booleano. O nome desse método eu vou colocar de “verificaSaldo” e o único argumento que eu preciso é o “(double valor)”. Vou deixar apenas valor, porque é mais genérico e esse valor é o que eu vou utilizar para verificar se tem saldo suficiente ou não.

[13:27] A verificação que eu tenho que fazer é essa aqui mesmo, se não tem saldo eu vou fazer uma coisa, se tem saldo, eu vou fazer outra. Então eu só copiei e colei da minha função de transferência. Aqui eu vou fechar, já vou escrever o “else {}”. Aqui não vai ser “valorDeTransferencia”, vai ser apenas “valor”, porque é a variável que eu tenho dentro desse método.

[14:00] Nesse primeiro caso, onde eu não tenho saldo suficiente, vamos copiar e colar isso aqui também. Eu vou imprimir que eu não tenho saldo suficiente e eu vou retornar “false”. No caso onde eu tenho saldo suficiente, eu posso copiar isso aqui. Vou copiar primeiro essa parte de impressão e depois eu posso copiar o meu “return”.

[14:39] Aqui nem sempre eu estarei sacando, por exemplo, no meu método de transferência eu não estou sacando, eu estou transferindo, então eu vou trocar isso para movimentando uma quantidade de reais. Então “(“Movimentando $valor”, que é a variável que eu estou tentando movimentar, seguido da palavra “reais.”);”, para indicar que esse valor está sendo movimentado.

[15:09] Como eu vou utilizar esse método dentro dos meus outros métodos? Eu posso remover tudo que está dentro desse if e eu vou chamar dentro do meu if esse método. Como esse método é um método booleano, ele vai me retornar um verdadeiro ou falso, e é justamente isso que eu preciso dentro do meu if.

[15:37] Então “if(verificaSaldo(valorDeTransferencia))” eu não preciso mais imprimir isso aqui. “else” eu vou fazer toda essa movimentação, vou retornar falso caso o resultado desse verificaSaldo seja falso e vou continuar com o meu método.

[16:04] Aqui no meu saque eu vou fazer a mesma coisa, eu posso tirar essa impressão, eu vou tirar essa impressão também e dentro do meu “if” eu vou apenas utilizar o “verificaSaldo” com o valor do saque como argumento. E eu vou retornar apenas se é falso ou fazer a movimentação.

[16:30] Desse jeito nós minimizamos o código que nós precisamos escrever dentro dos nossos métodos e tornamos esse “verificaSaldo” completamente modular, nós podemos usar agora em qualquer lugar dentro da nossa classe.

[16:50] Vou salvar e vou executar novamente, só para mostrar que nada mudou, nós apenas mudamos um pouquinho do nosso código, mas dessa vez eu estou realizando uma operação que pode ser repetida várias vezes pelo meu código. Aqui eu notei que estamos movimentando uma quantidade em reais, mas eu estou retornando false. Vamos verificar o que está errado?

[17:22] Eu estou movimentando, aqui ele está retornando “true”, mas aqui ele retorna “false”. Então na verdade eu tenho que negar essa verificação, porque ele tem que retornar falso apenas quando for false aqui dentro do nosso “verificaSaldo”. Mesma coisa dentro do nosso saque. Então vamos dessa vez testar novamente. E agora sim, nós estamos movimentando 130 reais e realmente retirando o valor da conta corrente.

### Como chamar um método

Qual a sintaxe e ordem corretas para chamar um método em Dart?

- nomeDoMetodo.nomeDaReferencia();
- nomeDaReferencia.nomeDoMetodo;
- nomeDaReferencia$nomedoMetodo();
- **nomeDaReferencia.NomeDoMetodo();**
  - ***Correto! O nome da referência deve vir antes do nome do método, assim como devemos enviar os argumentos do método, mesmo que vazio, após isso tudo.***

### Sobre métodos

O que aprendemos sobre métodos/funções nas últimas aulas?

- **Um método pode não ter nenhum parâmetro.**
  - ***Correto! Os parâmetros do método vêm dentro dos parênteses que seguem seu nome, mas não necessariamente precisamos enviar um argumento ao método.***
- Funções e métodos são completamente diferentes.
- **Um método define o comportamento ou a maneira de fazer algo.**
  - ***Correto, esse é o objetivo de métodos, definir o que um objeto sabe fazer.***
- **Um método não precisa definir o retorno. Se retornar nenhum valor, basta escrever o nome do método.**
  - ***Correto! O dart consegue interpretar métodos sem tipo.***

### Métodos válidos

Assumindo que cada método abaixo está dentro de uma classe, quais declarações estão válidas (executam)?

- **depositar() {}**
  - ***Correto! Métodos sem retorno, no Dart, podem omitir seu tipo.***
- public void depositar() {}
- **void depositar() {}**
  - ***Correto! Podemos identificar o tipo do método antes de fazê-lo por nome.***
- **depositar(double valor) {}**
  - ***Correto! Mesmo com argumentos, um método pode ser declarado sem tipo.***

### O que aprendemos nessa aula?

Nessa aula falamos sobre o comportamento de um classe, o que chamamos de métodos.

Vimos:

- Como definir métodos com parâmetros e retorno;
- Como retornar algo usando a palavra reservada return antes do resultado do método;
- O uso do return para tratar casos de falha dentro dos métodos;
- Como usar a referência this para acessar os atributos da própria classe;
- Que podemos passar argumentos para dentro de nossos métodos;
- Que usamos o . após a referência de um objeto para acessar seus métodos.

Vamos continuar nos aprofundado nas próximas aulas!

## Composição de classes

### Composição de classes

[00:00] Nós vamos conversar agora sobre composição de classes. Como assim composição de classes? Vamos pensar numa coisa aqui, nós temos essa nossa ContaCorrente, esse é o modelo que nós temos atualmente no nosso projeto, nós temos um titular, nós temos uma agência, nós temos uma conta, um saldo e um cheque especial. Todos eles com os seus tipos.

[00:26] Mas o nosso titular – vamos começar por ele – é uma string. Atualmente nós salvamos apenas o nome dessa pessoa. Isso não é tão errado de fazer, mas uma pessoa pode ter o mesmo nome que a outra, podem existir dois Luiz Fernandos de Oliveira no Brasil ou em qualquer lugar onde o Alura Bank vai funcionar.

[00:56] Como nós vamos distinguir de uma conta corrente para outra, sendo que as duas têm o mesmo nome? Vamos destrinchar então esse titular e pensar uma pessoa, o que uma pessoa é formada? Quais são os dados de uma pessoa que a tornam única? E uma delas pode ser o CPF da pessoa.

[01:20] O CPF é um número de identificação de uma pessoa. Duas pessoas no Brasil não têm o mesmo CPF. Vamos criar então uma classe que nós vamos chamar de cliente, e o nosso cliente vai ter alguns métodos diferentes e vai ter alguns campos diferentes da nossa ContaCorrente.

[01:46] Aqui do lado eu vou criar mais um quadradinho e esse quadradinho eu vou chamar de “Cliente”. Vou pintá-lo de azul e quais serão campos desse cliente? Nós temos o “nome”, que vai ter o tipo “String”. O nome do nosso cliente será armazenado como uma string no nosso programa.

[02:19] Nós temos outro campo também, o “CPF”. O CPF eu vou tratar como uma string também, porque ele tem ponto, tem traço, não são apenas números. E para terminar, vamos armazenar também a “profissão” dessa pessoa, vamos deixar no tipo “String”. Todos os campos são do tipo “String”.

[02:44] E o nosso Cliente é diferente da minha ContaCorrente, nosso Cliente também é diferente do meu titular. O que isso nos ajuda? Observem que ao criar uma classe do tipo Cliente nós podemos substituir o meu titular, meu titular agora não será uma “String”, ele será um “Cliente” e o meu cliente agora é único, eu tenho um cliente e o cliente tem um nome, tem um CPF e tem uma profissão.

[03:18] A partir de agora eu posso ter clientes com mais de um nome que serão diferenciados pelo CPF deles. E de deixa nós também teremos a profissão dessa pessoa em nosso programa.

[03:36] Como escrever isso no nosso código? Voltando ao nosso código, no VS Code eu vou dar um espacinho entre a main e a nossa conta corrente e eu vou criar uma nova classe. Essa nova classe vai se chamar “Cliente”, assim como nós definimos no desenho. Então “Cliente” vai ter três campos, tem uma string chamada “nome”, tem outra string chamada “CPF” e tem outra string chamada “profissão”.

[04:09] Voltando aqui, vamos transferir isso para o nosso código. Nós temos uma “String” chamada “nome”, o nome do cliente. Nós temos uma “String” chamada “cpf”, eu vou deixar aqui minúsculo, porque no Dart, quando nós escrevemos com letras maiúsculas, geralmente nós falamos de alguma função ou método, começamos com letra maiúscula, então geralmente nós utilizamos letras minúsculas para as propriedades da nossa classe, o nome das nossas variáveis.

[04:48] E “String” também será a “profissao” dessa pessoa. Preciso de mais alguma coisa? Não, nossa classe aqui está completamente utilizável. E no meu “titular” da minha “ContaCorrente” não será mais uma “String”, agora vai ser um “Cliente”. O que isso significa para o nosso código?

[05:13] Vocês vão notar que quando eu mudei para Cliente apareceram alguns erros aqui em cima do meu código. Primeira coisa, eu vou apagar isso tudo, para ter mais espaço para demonstrar o que está errado.

[05:31] Quando eu mudei para Cliente dentro da minha ContaCorrente eu gerei dois erros no nosso código, onde nós declaramos o titular da contaDaAmanda e o titular da contaDoTiago. Se eu deixar o mouse em cima o erro é esse aqui, um valor do tipo string não pode ser armazenado numa variável do tipo cliente.

[05:52] O que tem de errado aqui? Nós estamos tentando armazenar uma string dentro de cliente, sendo que cliente na verdade tem três strings diferentes, cada uma com um nome diferente. A primeira é “nome”, a segunda é “cpf” e a terceira é “profissao”. Como nós corrigimos isso? Vou apagar aqui.

[06:16] Eu vou primeiro mostrar para vocês que agora nós temos acesso ao tipo Cliente, nós criamos uma classe Cliente e nós vamos poder instanciar objetos do tipo Cliente. Eu posso usar “Cliente” aqui na minha main, seguindo de, por exemplo, “amanda”, que é o nome da Amanda, vai ser “= Cliente();”. Notem que é o mesmo padrão da minha ContaCorrente, eu tenho primeiro o tipo, o nome da variável, vai ser igual ao mesmo tipo aqui da frente, abre e fecha “();”.

[06:58] E agora eu tenho acesso a todos esses campos, eu tenho acesso ao campo “nome”, ao campo “cpf” e ao campo “profissao”. Então “amanda.nome = “Amanda”;”. “amanda.cpf = “123.456.789-00”;”. E “amanda.profissao = “Programadora Dart”;”. Eu criei um cliente, o nome desse cliente é Amanda, eu populei os três campos de Amanda com as informações de Amanda e agora como eu coloco essa Amanda dentro da minha ContaCorrente?

[07:55] Nós podemos simplesmente dizer que a “contaDaAmanda.titular = amanda;” que é o nome da minha variável do tipo Cliente que está armazenando todas essas informações. “Mas como assim? Ainda está complicado”.

[08:18] Nós criamos o tipo Cliente, que vai nos gerar um objeto Cliente e esse Cliente tem todos esses campos. Depois de criar tudo isso, aí sim eu posso armazenar dentro do meu titular da minha ContaCorrente que tem o tipo Cliente. Como nós imprimimos então essas informações?

[08:43] Eu posso fazer simplesmente um “print(“Titular: ${contaDaAmanda.titular}”);”. O que será que nosso terminal vai dizer quando eu tento imprimir isso? Vou limpar, executar meu programa e olha só, titular é uma instância de cliente, não deu certo. Eu já sei que eu tenho um objeto do tipo Cliente que está armazenando esses valores, como eu tenho acesso a isso então?

[09:22] Eu posso, depois de “titular”, colocar mais um “.” e agora no meu titular da minha ContaCorrente eu tenho acesso a todos os campos do meu cliente. Por quê? Porque meu titular da minha ContaCorrente tem o tipo Cliente. Então depois do meu “titular” aqui no meu print eu coloco “.” e eu tenho acesso ao nome, ao CPF e a profissão.

[09:52] Se eu clico em nome, por exemplo, eu vou copiar, colar isso três vezes, vou mudar aqui para “CPF”, vou mudar aqui para “Profissao” e aqui também, “.cpf”, e aqui não vai ser “nome”, vai ser “profissao”. Salvei, volta no terminal e executa novamente. Será que vai sair instância de Cliente? Não, saiu todos os dados de Amanda.

[10:27] Agora com esse conhecimento nós podemos criar clientes únicos, que têm não só o nome, mas têm o CPF, têm uma profissão, dentro da nossa ContaCorrente, sem alterar muita coisa na nossa ContaCorrente. Eu criei uma classe diferente para armazenar mais dados sobre o nosso titular e com uma leve modificação eu consigo adicionar agora mais informações sobre os clientes desse banco dentro de suas contas correntes.

### Importando classes

[00:00] Atualmente esta é a disposição que nós temos no nosso projeto. Nós temos a classe “ContaCorrente”, que dispõe de cinco atributos.

[00:14] Uma delas é o nosso “titular”, que recentemente nós criamos uma classe para segurar os dados desse titular, nós temos “nome”, “CPF”, “profissão”, tudo num pacotinho que nós chamamos de “Cliente”. E esse “Cliente” é uma classe separada da ContaCorrente, ela não é a mesma coisa, não faz parte do mesmo corpo, mas está atuando ali como um ajudante da ContaCorrente.

[00:42] Toda vez que nós instanciamos uma nova classe, ou seja, eu crio uma nova conta corrente, vou deixar aqui do lado, vou pintar de vermelho e eu dou um nome para isso aqui, como nós estávamos usando, por exemplo, “contaDaAmanda”.

[00:59] Então nós instanciamos contaDaAmanda e nós começamos a popular esse objeto com algumas coisas, como, por exemplo, a agência aqui, a padrão é 145. Na verdade, não é aqui, é desse lado que eu escrevo. “145”. O saldo por padrão é “20.0”. O cheque especial por padrão é “-100” e assim por diante.

[01:30] Mas nós não temos nem uma conta nem um titular padrão e sempre que nós quisermos colocar um titular dentro da conta, nós precisamos instanciar um objeto do tipo cliente, vou colocá-lo aqui do lado, pintá-lo de vermelho. No exemplo que nós demos eu chamei esse cliente de “amanda” e Amanda nós apontamos o titular dentro de contaDaAmanda para essa variável chamada “amanda”.

[02:07] Então nós passamos a ter essa disposição, onde o nosso titular da minha conta corrente aponta para outro objeto do tipo cliente, que vai ter um nome e no campo “nome” vamos colocar o nome da Amanda, no campo “CPF” vamos colocar o CPF de Amanda e no campo “profissão” a profissão de Amanda, nesse caso, “Programadora”.

[02:39] Isso vai facilitar um pouco nós crescermos o nosso código, aumentarmos a complexidade das nossas classes sem precisar mexer diretamente nas nossas classes. Nós criamos um titular com mais dados para colocar aqui dentro apenas criando essa classe e modificando o tipo dentro da nossa conta.

[03:03] Um dos problemas disso é que quanto mais nós fizermos isso, maior vai ficar o nosso código. E de fato, se nós voltarmos para o código que nós temos escrito, olha o tamanho que ficou isso. Nós temos “ContaCorrente”, que tem todos os seus métodos e nós temos “Cliente”, que ocupa pouco espaço, mas tem potencial de crescer.

[03:27] Como organizar o nosso código para que fique sempre mais fácil o possível encontrar e modificar as coisas sem que quebremos tudo ou deixemos muito bagunçado nosso arquivo? É exatamente por isso que existe essa pasta “lib”.

[03:43] Essa pasta “lib” é para nós organizarmos o nosso código de uma forma coesa e fácil de se entender. Na nossa pasta lib nós podemos ter outros arquivos que vão guardar as nossas classes. Por exemplo, se eu quiser um arquivo que contém apenas coisas da nossa ContaCorrente, eu posso ter. E se eu quiser outro arquivo que lide apenas com a nossa classe Cliente, eu também posso ter. E como eu vou fazer isso?

[04:18] Vamos clicar com o botão direito bem em cima da pasta “lib” e vai aparecer essa janelinha. Nós vamos criar um novo arquivo, é só clicar em “New File”.

[04:30] Nesse novo arquivo eu vou dar um nome, pode ser o nome que você quiser, mas para ficar mais fácil de encontrar e se identificar dentro do seu projeto, geralmente nós colocamos diretamente o nome da classe como o nome do arquivo, por exemplo, vou criar o arquivo da minha classe cliente, então eu crio “cliente.dart”. Precisa da extensão “.dart”? Sim, porque é um arquivo que vai rodar no meu programa, [EM] Dart.

[05:02] Notem que ficou vazio. Meu arquivo está vazio, é um novo arquivo e eu posso pegar esse meu “Cliente”, “Ctrl + X”, que eu vou tirá-lo daqui, venho no meu “cliente.dart” e colei. Salvei o meu programa, vou voltar para cá e nós temos um erro aqui, mas nós não vamos lidar com ele agora, vamos criar um arquivo também para ContaCorrente. Eu volto na minha pasta “lib”, clico com o botão direito, “New File” e aqui eu vou colocar “contacorrente.dart”.

[05:46] Nesse conta corrente aqui eu vou fazer a mesma coisa, vou selecionar tudo que é da minha classe ContaCorrente, “Ctrl + X” para tirar da minha main, voltei para minha conta corrente e colei. “Ctrl + S” para salvar e está pronto.

[06:06] Agora como eu resolvo esse problema aqui? Deu um erro no meu tipo Cliente. Quando eu deixo o mouse em cima, classe cliente não definida. O que isso significa? Significa que a minha classe cliente não está sendo encontrada nesse arquivo.

[06:27] De fato, se nós copiarmos e colarmos essa parte Cliente aqui bem no final ou pode ser cima, o erro some, porque agora Cliente existe nesse arquivo. Como eu faço então para deixar Cliente no arquivo dele, mas utilizar dentro da minha conta corrente? É para isso que serve o import.

[06:55] Import é a palavra importar. Nós vamos importar uma coisa de outro lugar no nosso projeto. Como eu utilizo o importar? Eu escrevo “import”. O Visual Studio Code já se encarrega de colocar aqui “import”, aspas e ponto e vírgula para nós, completando o formato de escrever o import. Cliquei aqui e ele vai me dar opções do que importar.

[07:28] Se você colocou cliente e conta corrente na mesma pasta, ele já até mostra aqui, cliente pode ser importado diretamente para esse arquivo. Então eu clico em cliente e aqui está utilizando o import do arquivo cliente. Salvei.

[07:47] Vocês vão notar que não existe mais erro aqui dentro de cliente, cliente agora está sendo importado de outro arquivo. Se nós segurarmos “Ctrl” e clicarmos em “’cliente.dart’”, nós vamos ser levados para o arquivo “cliente.dart”.

[08:07] Resolvemos o problema dentro de conta corrente, mas aqui na nossa main temos todos esses erros, tanto de ContaCorrente quanto de Cliente. E nós vamos usar o import aqui também. Antes de main nós vamos escrever “import ‘ ’” e dessa vez não apareceu conta corrente aqui, por que não apareceu? Porque a conta corrente está em outro arquivo. Para acessar esse conta corrente aqui nós temos algumas opções.

[08:41] A mais fácil delas é o quê? Escreve “..” para ir para a pasta anterior, uma “/” e olha só, a pasta lib vai aparecer. Selecionando a pasta lib nós podemos selecionar qualquer arquivo que esteja dentro de .lib. Então “contacorrente” primeiro.

[09:04] Agora que eu tenho importado “contacorrente”, eu vou importar também o cliente, pois eu o estou utilizando bem aqui. Então na próxima linha “import ‘../lib/’” e falta o cliente, então “cliente.dart”. Salvei, vou observar que não existem mais erros do meu código, não tem mais nenhuma linhazinha vermelha embaixo, nem de conta corrente nem de cliente.

[09:42] Se eu voltar aqui, limpar meu terminal, e vou “dart main.dart”. Eu não estou na pasta certa, então “cd bin/”, “ dart main.dart” e funciona da mesma forma, por quê? Nós estamos importando esses arquivos de outro lugar do nosso projeto e agora, nesse arquivo “main.dart” eu vou escrever apenas coisas pertinentes à minha main. No meu arquivo “contacorrente.dart” eu vou escrever coisas apenas pertinentes à minha conta corrente. E no meu arquivo “cliente.dart” eu vou escrever coisas apenas do meu cliente.

### Nulll

[00:00] Agora que nós já deixamos o nosso código um pouquinho mais conciso, separando cada classe que pertence a certo [DE DADO] diferente em cada um dos seus arquivos. E nós conseguimos importar também esses outros arquivos dentro dos arquivos que nós queremos para utilizar essas classes.

[00:20] E vocês vão notar que agora nós temos um arquivo de cliente onde nós vamos tratar de coisas só relacionadas ao objeto cliente, assim como na conta corrente nós temos um arquivo que só vai ter coisas relacionadas a nossa conta corrente. E a nossa main só vai ter código que manipula essas classes a fim de fazer o nosso programa funcionar.

[00:49] Vamos falar agora de objetos ou tipos ou variáveis nulas. O que isso significa? Vamos ver esse código que nós já temos. A contaDaAmanda possui um cliente, possui uma agência, uma conta, um saldo e um cheque especial.

[01:10] Aqui nós inicializamos um novo objeto “Cliente” e nós o populamos com o nome da Amanda, com o CPF da Amanda, com a profissão da Amanda e lá no nosso “titular”, que é um campo da nossa conta corrente, nós jogamos esse objeto “amanda” lá para dentro. Então nós temos acesso agora a ele a partir da nossa conta corrente também.

[01:38] Vou salvar esse código, vamos no nosso terminal e se eu executar esse código, sai aqui, titular Amanda, o CPF da Amanda, a profissão da Amanda e assim por diante. Mas e essa conta do Tiago? Nós nem chegamos a mexer nela. Vamos ver o que acontece com a conta do Tiago se eu tentar acessá-lo diretamente.

[02:10] Vou comentar todos esses prints relacionados à conta da Amanda e dessa vez eu vou tentar imprimir a conta do Tiago. O que será que vai sair do meu programa se eu tentar imprimir diretamente a conta do Tiago? Salvei, vou executar no meu terminal, uma instância de ContaCorrente.

[02:35] Isso nós já sabíamos, já aconteceu conosco antes, mas e se dessa vez eu tentar imprimir o titular lá dentro? Vejam que dessa vez eu não quero tentar imprimir o objeto ContaCorrente, eu estou tentando imprimir o objeto Cliente, porque eu estou tentando acessá-lo aqui, “contaDoTiago.titular”.

[02:59] Voltando ao nosso terminal, executando o nosso programa e “null”. O que essa palavra significa? Essa palavra significa a falta de alguma coisa. Não é zero, é simplesmente não existe. E por que ainda não existe? Porque esse objeto nunca foi inicializado. Lembre-se que Cliente agora é uma classe e a nossa ContaCorrente possui um objeto chamado titular, que é do tipo Cliente. E por ser uma classe, precisa necessariamente ser inicializado.

[03:48] Como nós fazemos isso? Da mesma forma que nós fizemos com a Amanda, para evitar que apareça nulo no nosso programa, que o nosso programa nos retorne algo que não existe, nós vamos inicializar um cliente. Vou tirar isso, que está incorreto, [VOCÊ] também. E esse cliente eu vou chamar de “Tiago”, vai ser “= Cliente();”, da mesma forma que nós fazemos com a Amanda.

[04:24] Inicializei esse Tiago, o que eu faço agora? Vou salvar e vou tentar executar isso novamente. Null de novo, por quê? Nós inicializamos o Tiago, mas nós nunca colocamos esse “tiago” aqui como titular da contaDoTiago, então é exatamente isso que eu vou fazer agora. “contaDoTiago.titular = tiago;”, salvei. Volta para o meu terminal e executa novamente.

[05:03] Vejam que dessa vez saiu instância de cliente, do mesmo jeito que saiu aqui instância de conta corrente. Dessa vez o objeto existe, talvez ele ainda não tenha colocado os campos, como, por exemplo, aqui no “amanda.nome” nós definimos o nome da Amanda dentro do objeto Cliente. Aqui ainda não fizemos isso, tanto que se eu tentar acessar “titular.nome” e pedir para o meu programa imprimir isso, observem que, nulo momento.

[05:41] Nós inicializamos o objeto, mas os campos dele também precisam ser inicializados se nós pretendemos utilizá-lo. Então vamos começar a popular isso aqui. E para popular isso eu vou explicar uma nova forma de acessar esses dados.

[06:03] Quando nós estamos criando o nosso objeto Tiago nós podemos acessar os campos do elemento Cliente de uma forma diferente da Amanda. Vejam que aqui nós criamos o objeto, depois nós acessamos o “amanda.nome = “Amanda”;”, “amanda.cpf” e o CPF, “amanda.profissao” e a profissão.

[06:26] Aqui eu vou tirar “;” do cliente Tiago. Na próxima linha, ou pode ser até na mesma linha, eu vou colocar “..”, depois desse “..” eu posso colocar “nome” e o nome vai ser o quê? “Tiago”. Na outra linha, “..cpf”, CPF de Tiago é qual? “132.456.789-00”. E esse é o CPF do Tiago. “..profissao = ‘Programador Dart’” também, e aí sim eu coloco “;”.

[07:15] Notem que nós não precisamos ficar escrevendo esse “tiago”, o nome dessa variável, nós podemos acessar esses campos simplesmente colocando “..” seguido do nome da propriedade dessa classe. Isso aqui nós chamamos de cascata, nós estamos fazendo uma cascata com todas as propriedades dessa classe e já colocando valores dentro dessas propriedades.

[07:48] E agora coloquei o nome, coloquei o CPF e coloquei a profissão. Vamos fazer a mesma coisa que eu tinha feito com a Amanda, só que dessa vez para o Tiago. Vou tirar os comentários disso aqui e aqui eu vou fazer “contaDoTiago”. Copiei, colei, colei de novo. Vamos imprimir todos os campos do cliente Tiago para ver se isso deu certo. Salvei meu código, vou voltar no meu terminal e executar.

[08:31] Dessa vez nós imprimimos todos os campos do Tiago e não da Amanda. Eu vou tirar os comentários para vocês verem que é exatamente a mesma coisa, só que nesses dois pontos nós fizemos de formas diferentes, vai de gosto. Se você se familiarizar melhor com isso aqui, você usa isso aqui. Se você não gostar muito, pode usar isso aqui também.

[08:59] Esse aqui eu acredito que tem já tem algum conhecimento de Javascript, por exemplo, vai gostar mais, porque essa funcionalidade veio do Javascript. Executei a minha main novamente e dessa vez saiu Amanda e saiu Tiago, exatamente no mesmo formato.

### Problema não esperado

Fernando decidiu aplicar seu conhecimento sobre composição utilizando as classes Pessoa e Empresa, criadas por Jaqueline. Porém, seu código não está funcionando:

```Dart
class Endereco {
  String rua;
}
class Pessoa {
  String nome;
  String cpf;
  Endereco endereco;
}

class Empresa {
  String razaoSocial;
  String cnpj;
  Endereco endereco;
}

void main() {
  Pessoa fernando = Pessoa();
  fernando.nome = "Fernando";
  fernando.endereco = "Alameda 15"
}
```

Marque a opção que explica os erros de Fernando:

- **Ele deveria ter feito ```fernando.endereco.rua = “Alameda 15”```.**
  - ***Correto! Fernando tenta atribuir uma String a uma variável do tipo Endereco, e as duas são diferentes.***
- Ele não atribui valores em todas as propriedades da classe Pessoa antes de acessar os atributos da classe endereco.
- Ele está acessando uma propriedade que não foi inicializada.

### Removendo redundâncias

Jaqueline criou as seguintes classes:

```Dart
class Pessoa {
  String nome;
  String cpf;
  String rua;
  String cidade;
  String cep;
}

class Empresa {
  String razaoSocial;
  String cnpj;
  String rua;
  String cidade;
  String cep;
}
```

Fernando, percebendo que o código que Jaqueline escreveu se repete com os atributos rua, cidade e cep, escreve a seguinte classe para abstrair esses três atributos:

```Dart
class Endereco {
  String rua;
  String cidade;
  String cep;
}
```

Qual alternativa modifica corretamente as classes Pessoa e Empresa para utilizar a classe Endereco?

- ***Alternativa A***

```Dart
class Pessoa { String nome; String cpf; Endereco endereco; }
class Empresa { String razaoSocial; String cnpj; Endereco endereco; }
```
  - ***Correto***

- Alternativa B

```Dart
class Pessoa { String nome; String cpf; String endereco; }
class Empresa { String razaoSocial; String cnpj; Endereco endereco; }
```

- Alternativa C

```Dart
class Pessoa { String nome; String cpf; endereco endereco; }
class Empresa { String razaoSocial; String cnpj; endereco endereco; }
```

### Organizando código

Jaqueline tinha as classes Endereco, Pessoa, Empresa no mesmo arquivo, mas achou melhor organizar cada classe em um arquivo próprio, então cria os arquivos dentro da pasta lib de seu projeto.

O nome dos arquivos que ela criou são:

```Dart
endereco.dart
pessoa.dart
empresa.dart
```

Como Jaqueline poderá reutilizar estes arquivos no mesmo projeto, caso queira utilizar essas classes?

- Alternativa A

```Dart
import ‘../lib/endereco’
import ‘../lib/pessoa’
import ‘../lib/empresa’
```

- **Alternativa B**

```Dart
import ‘../lib/endereco.dart’
import ‘../lib/pessoa.dart’
import ‘../lib/empresa.dart’
```

  - ***Correto! Devemos sempre referenciar o nome completo do arquivo.***

```Dart
Alternativa correta
import ‘../lib/endereco,pessoa.dart.dart,empresa.dart’
```

### O que aprendemos?

- Realizar o relacionamento entre classes através de composição;
- Isolar trechos de código em outros arquivos;
- Importar arquivos externos em outros arquivos;
- O valor do null.

## Get e Set

### obterSaldo e definirSaldo

[00:00] Vamos passar para uma nova parte da programação no Dart agora. Nós vamos ver algumas propriedades únicas, não só da linguagem de programação Dart, mas como linguagem em programação e orientação a objetos no geral, que são propriedades de classes.

[00:19] Eu vou apagar esses clientes, o cliente Amanda, cliente Tiago, vou deixar só a conta corrente deles. Observem só que tendo apenas a nossa ContaCorrente, nós não inicializamos absolutamente nada dentro do objeto em si, só os inicializamos mesmo.

[00:39] Vamos utilizar a conta corrente da Amanda para demonstrar as propriedades de uma classe. “contaDaAmanda.saldo”, por exemplo, e se eu definir esse saldo da Amanda como “-101”? Logo depois eu vou vir aqui, eu vou imprimir o “(contaDaAmanda.saldo );”. Escrevi, vamos ao meu terminal, eu vou executar esse código e “-101.0”. Ok, e daí?

[01:20] E daí que nós acabamos de fazer uma coisa que não deveria acontecer. O saldo da conta da Amanda agora é -101, mas o cheque especial da Amanda é só -100, ela não pode ficar com o valor de -101 na conta dela. Como isso aconteceu? Como aqui no meu terminal saiu -101 se nós já fazemos algumas verificações aqui para ver se o saldo dela é menor ou não que o cheque especial dela?

[01:58] Isso está acontecendo porque da nossa main nós temos completa liberdade de movimentar ou alterar o valor do saldo da conta da Amanda e de todas as contas correntes livremente. Mas qual é o problema disso? Sou eu que estou fazendo esse programa, eu sei quando deixar o valor ali ou não, quando mudar o valor do saldo de uma conta corrente.

[02:27] Mas pense dessa forma, nós estamos fazendo um programa para um banco onde o saldo da pessoa está dependente de nunca ser alterado erroneamente, e você é um ser humano, você pode errar eventualmente.

[02:46] Assim como outros programadores que vão mexer no seu código, porque você não está fazendo isso sozinho, vão errar também ao escrever código utilizando os seus métodos que você definiu. E se no seu método você é capaz de alterar o saldo de uma pessoa de fora da conta corrente dela, isso pode ser preocupante.

[03:12] Como nós fazemos para parar com que isso aconteça? Aí que nós vamos entrar em propriedades. As propriedades de uma classe, as propriedades de um tipo de variável vão nos ajudar. Mas como assim? Como propriedades?

[03:31] Para quem já ouviu falar de public e privado, protected e essas palavras reservadas também de outras linguagens de programação, já entendeu o que eu quero falar aqui. Agora, se você nunca ouviu falar, observe uma propriedade única do Dart. Se eu colocar um “_” antes de “saldo” eu estou definindo a propriedade dessa variável saldo como privada.

[04:10] O que significa privado? Privado significa que apenas dentro da ContaCorrente, ou seja, abriu “{“ aqui, fechou “}” aqui, apenas dentro da ContaCorrente esse saldo pode ser acessado e, de fato, vocês vão notar que saldo até dentro da própria ContaCorrente mudou, agora todos os lugares que eu escrevi saldo está avisando que está errado. Mas o que aconteceu? Já vamos chegar lá. Por enquanto eu vou apenas salvar, deixa isso errado por enquanto.

[04:53] Notem que eu deixei o “” antes do “saldo” e eu vou voltar na minha main e o saldo aqui também está aparecendo errado. Se eu colocar um “” aqui vocês vão notar que ainda está errado, mas por que isso está errado?

[05:13] “saldo”, por ser uma propriedade, uma variável privada do objeto ContaCorrente, não vai ser acessível de qualquer lugar de fora da ContaCorrente. Se eu quiser acessar, inclusive, saldo de dentro da ContaCorrente, eu vou ter que utilizar o “” também.

[05:39] Mas vocês vão notar que dentro de ContaCorrente, todos os campos que eram “saldo” eu estou colocando “_saldo”. E vocês vão notar que agora está tudo certo, não tem mais erros no meu código. Mas se eu tento voltar na minha main e eu tento acessar saldo, vocês vão notar que até quando eu escrevo “contaDaAmanda.” e eu tento procurar por saldo aqui, saldo não aparece.

[06:12] Agora que saldo é privado e esse tipo de erro é impossível de acontecer dentro da ContaCorrente, podemos até mudar o valor de saldo, mas de fora da ContaCorrente não adianta. Olha só, mesmo código, vou colocar o “_” aqui também, mas contém erros. Então quando eu tento executar o meu código, erros dizendo que saldo não foi definido.

[06:41] Como nós vamos então alterar o valor de saldo de fora da main? Apesar de não ser uma prática que a orientação a objetos recomenda, inclusive a orientação a objetos tem propriedades desse tipo, justamente para prevenir que erros, como movimentação de dinheiro errada fora da classe ocorram.

[07:08] Mas nós podemos criar métodos que vão resolver esse problema para nós, como, por exemplo, nós podemos escrever aqui “void”, vamos criar um método para “DefinirSaldo”. Esse nosso método vai ter que receber um “(double” que eu vou chamar de “novoSaldo)”. Abre e fecha “{}” e aqui dentro eu posso definir “this._saldo = novoSaldo;”.

[07:48] Pronto, agora nós criamos um método que vai receber um novo saldo e vai adicionar esse novo saldo dentro do meu campo saldo privado. E eu vou acessá-lo na main da forma normal, “DefinirSaldo” e o novo saldo vai ser -101.

[08:15] Mas como eu acesso? Eu estou tentando imprimir esse saldo, mas eu não tenho acesso a ele, porque saldo ainda é privado. Nós podemos resolver isso, eu vou mudar aqui “definirSaldo” para começar com letra minúscula, errei nisso. E eu vou corrigir o acesso ao meu saldo da seguinte maneira, em vez de tentar imprimir o saldo diretamente, eu vou criar outro método.

[08:44] Esse método vai ter o tipo “double” e eu vou dar o nome desse método de “obterSaldo()”, não vou passar nenhuma variável lá para dentro, ele não tem parâmetro nenhum, porque eu não preciso alterar nada, não preciso receber nada, eu vou apenas retornar o valor de “saldo”.

[09:08] Salvei aqui, “Ctrl + S” para salvar, vou na minha main e em vez de tentar acessar “_saldo” diretamente, “.obterSaldo()”. E notem que dessa vez não gerou erro algum no meu código. Salvei, vou abrir o meu terminal e executar o meu código. Mais uma vez eu estou definindo o valor de -101 para o meu saldo.

[09:42] Nós corrigimos uma coisa, nós já não temos mais acesso direto a essa variável saldo. Nós temos que usar esses dois métodos, “definirSaldo” e “obterSaldo”, para ter acesso a esse saldo que é privado.

[10:02] E como eu agora conserto isso? Eu não posso deixar que o valor de saldo seja menor do que o valor do cheque especial. E agora que nós estamos utilizando métodos para acessar esse campo saldo, nós podemos fazer o seguinte, “if(novoSaldo < chequeEspecial)”. “this._saldo = novoSaldo;”. Se não eu vou imprimir uma mensagem de “(“Erro! Tentei mudar o saldo para algo menor que o cheque especial.”)”. Coloquei uma mensagem bem grande, só para reconhecermos quando isso acontece.

[11:14] E deixando da mesma forma que está aqui, dentro do “definirSaldo” novamente, nós verificamos se o valor do novo saldo é menor do que o cheque especial. E se sim, nós vamos dar essa mensagem. Aqui eu realmente errei o símbolo, “>”.

[11:36] Agora que nós temos esse “definirSaldo” corretamente, eu vou executar o meu código e vocês vão notar, quando eu tentei adicionar -101 o meu código vai dizer: “Tentei mudar o saldo para algo menor que o cheque especial.”, e logo depois nós estamos imprimindo o valor do saldo. Olhem só, o valor do saldo não mudou, é 20 conforme nós inicializamos a nossa conta corrente.

[12:09] E se eu tentar “-100”? -100 é exatamente o cheque especial. Voltando ao meu terminal eu vou executar novamente o nosso código e caiu no erro novamente. Vamos colocar aqui “>=”, agora deve ir. Agora sim, o saldo de Amanda que nós definimos como -100 está exatamente no limite do cheque especial. Mas ao tentar colocar qualquer valor que seja menor do que o cheque especial dela, nós caímos no erro.

[12:56] Como tratamos desse erro será coisas futuras do nosso curso, mas por enquanto nós aprendemos a utilizar métodos tanto para definir quanto para obter valores privados de dentro das nossas classes.

### get e set

[00:00] Na aula anterior nós definimos e nós obtemos o saldo a partir de métodos, nós criamos métodos para verificar se nós podemos mudar o valor do saldo ou se nós temos um erro ao tentar fazer isso, e nós também criamos um método para obter o saldo.

[00:23] O que nós fizemos não é errado e é condizente com o paradigma da orientação a objetos, onde nós temos campos privados que não podem ser acessados de fora da classe. Mas apesar de utilizarmos da forma correta, criando métodos para isso, o Dart nos oferece ferramentas que são um pouquinho mais rápidas e mais bem definidas para acessar esse tipo de campo, campos privados.

[00:54] Como e quais são eles? Nós conhecemos esses dois métodos como get e set. Get do inglês significa obter e set do inglês significa definir. E são exatamente essas duas palavras que nós vamos utilizar nessa aula. Ao invés de utilizar “definirSaldo” e “obterSaldo” nós vamos utilizar get e set.

[01:22] Para isso eu já vou imediatamente excluir tudo o que nós fizemos. Eu vou deixar saldo privado mesmo, “_” antes do nome da variável significa que essa variável é privada. Na nossa main nós temos dois erros, nós estamos utilizando métodos que não existem. Mas isso não é um problema, vamos na nossa ContaCorrente e dessa vez utilizar as ferramentas que o Dart nos provê para realmente utilizar da forma correta o get e o set.

[02:02] Vamos começar pelo get. O get é obter o valor de uma variável, e para eu obter o valor de uma variável eu vou escrever “get”, vocês vão notar que a palavra “get” fica em azul escuro, assim como a palavra “class”, a palavra “import”, a palavra “this”. Isso é uma palavra reservada do Dart. Essa palavra significa obter, então nós vamos obter o quê? Eu vou dizer que nós vamos obter o “saldo”.

[02:37] Preciso de mais alguma coisa? Preciso. Logo depois de get eu vou abrir e fechar “{}” e dentro delas eu vou simplesmente retornar “saldo;”. Eu não preciso fazer mais nada, isso aqui é um get mais simples possível no Dart, onde nós só vamos retornar o valor de uma variável. E olha só, “get saldo” e eu vou retornar o “saldo;”. Será que isso funciona? Vamos ver na nossa main.

[03:16] Aqui eu vou apagar essa linha onde nós tentamos definir o saldo e como nós estamos tentando primeiro obter o valor de saldo, eu não vou mais utilizar esse método, agora nós utilizamos o get. Eu preciso escrever aqui “getSaldo”? Não preciso. Como eu tinha falado, o get e o set do Dart têm algumas propriedades que nos permitem burlar algumas coisas que nós temos que escrever a mais.

[03:47] E como eu faço para obter o saldo? “.saldo”. Voltamos à estaca zero. Ou será que não? Antes de começarmos a falar de propriedades, quando o saldo era público, ou seja, quando ele não tinha “” na frente, nós podíamos sempre escrever “.saldo” para acessar diretamente o saldo. Mas dessa vez o nosso saldo é privado, ou seja, ele tem o “” na frente, e nós estamos utilizando novamente “saldo” para acessá-lo.

[04:24] Por que essa complicação toda? Isso é porque dessa vez nós estamos acessando o saldo que é público e nós estamos retornando o saldo que é privado. Da mesma forma como nós estávamos utilizando o método obterSaldo, só que dessa vez nós não precisamos de um tipo de classe nem utilizar um método para acessar, nós estamos acessando a propriedade “saldo” que nos retorna o “_saldo” privado.

[04:59] E o set? Qual é a diferença entre o get e o set? O set vai, na verdade, definir o valor de uma variável. E nós temos primeiro que definir o que nós vamos enviar lá para dentro. Como é um saldo e o tipo do saldo é um double, eu vou escrever aqui “set saldo” e eu vou receber um “(double”, porque o tipo do saldo é double. E o “novoSaldo)”.

[05:40] Notem que ele tem a mesma estrutura do get e ele se parece muito com o método, ele abre e fecha “()” e lá dentro eu envio um valor. Eu vou abrir e fechar “{}” também e dessa vez eu vou definir “this.saldo” e aqui dentro não preciso nem colocar o this, como o saldo existe no contexto de ContaCorrente, não preciso do this aqui. Então “saldo = novoSaldo;”, assim como eu usaria no método normal.

[06:23] Vamos tentar acessar agora o saldo de fora da ContaCorrente. Agora na minha main eu vou tentar “contaDaAmanda.saldo”, olha o saldo ali de novo, “= -101;”. E agora sim, definitivamente nós voltamos à estaca zero. Nós estamos da mesma forma que nós estávamos antes de falar de propriedades. Por que essa complicação toda, Timóteo?

[06:56] Agora, da mesma forma como nós utilizamos o definirSaldo e o obterSaldo, nós temos acesso na nossa propriedade privada, o “saldo”, que agora é privado, por meio de um método público, que é o “saldo”, sem o “” na frente. E vocês vão notar que eu tinha alterado, dentro da minha ContaCorrente eu tinha colocado “_” antes de todos os saldos.

[07:27] Eu posso agora tirá-los, por quê? Porque como eu fiz um set e um get também e ambos têm o nome saldo, eu não preciso mais utilizar o “_” quando eu for utilizar o saldo dentro da minha ContaCorrente, eu posso simplesmente utilizar o get e o set.

[07:57] Da mesma forma como nós utilizamos lá no definirSaldo, da aula anterior, eu posso colocar aqui “if(novoSaldo >= chequeEspecial)” eu vou definir o saldo como sendo esse novoSaldo. E se ele não for maior, eu vou imprimir aquele erro, “print(“Erro! Tentei modificar o valor de saldo para um valor menor que o cheque especial.”);”. Essa é uma mensagem maior ainda do que da última vez.

[08:50] E olha só, nós temos uma estrutura muito parecida de quando nós utilizamos o obterSaldo e o definirSaldo, mas dessa vez nós estamos utilizando diretamente a palavra saldo, não precisa mais ser o nome de um método.

[09:08] Voltando para minha main, notem que eu ainda tenho acesso a esse saldo, eu ainda posso enviar 101, mas o que acontece se eu executar o meu código agora? Que eu faço essas verificações para ver se esse novoSaldo pode ser adicionado ou não?

[09:28] No nosso terminal eu vou executar e eu tentei adicionar 101 e ganhei uma mensagem de erro. O nosso saldo logo depois continua sendo 20. Se eu tentar mudar para -100 será que vai dar certo? No nosso terminal, executo novamente e olha só, -100. Dessa vez deu certo, por quê? Porque o saldo pode ser sim definido como -100, é exatamente o valor do cheque especial.

[10:01] E para qualquer valor maior que esse -100 vai dar certo, só que dessa vez, diferente de quando nós estávamos mexendo antes de falar de propriedades, qualquer valor que eu tente inserir no meu saldo que seja incorreto, ou seja, que não passe por essa verificação, eu vou cair nesse erro. Tentei enviar -110 e aqui está o meu erro.

### produtividade com get e set

[00:00] Agora que nós já vimos como fazer gets e sets para propriedades das nossas classes, nós vamos falar sobre como nós adiantamos um pouquinho o nosso trabalho de escrever esses gets e esses sets.

[00:16] Vamos utilizar de exemplo a nossa agência. Quando nós queremos definir um get e um set de forma rápida, vocês podem notar que o nosso saldo nós utilizamos várias linhas, tanto para o get quanto para o set, e pode ser um pouco demorado. Se você tiver várias propriedades, várias variáveis que você quer definir como privada e não necessariamente você precisa utilizá-las e você precisa fazer alguma verificação, como, por exemplo, aqui no saldo, que nós verificamos se ele é maior ou menor que alguma coisa.

[00:57] Nós podemos fazer os gets e os sets de forma bem rápida, mas como nós fazemos isso? Vamos tomar de exemplo esse get do nosso saldo, onde nós definimos o nosso “saldo”, abre “{“, “return _saldo;”, “}”. Como nós fazemos isso um pouquinho mais rápido?

[01:21] O Dart nos oferece uma ferramenta bem interessante. Na nossa nova linha aqui, vou colocar uma nova linha embaixo da nossa “agencia”, da nossa classe “ContaCorrente”, e eu vou definir a minha agência como sendo privada, ou seja, eu só vou colocar “_” na frente.

[01:41] Coloquei o “_” na frente, eu vou tentar voltar para esse código na nossa main e eu vou tentar acessá-lo, então “agencia” vocês vão notar que não existe, mas eu vou deixar esse código aqui só esperando uma nova agência. Assim como aqui eu não preciso desse saldo, eu vou utilizar dessa vez a “agencia”.

[02:04] Vocês vão notar que quando eu tento acessar a agência para definir um valor lá para dentro dá errado. A nossa agência é privada e não vai rolar. Quando eu tento imprimir a agência eu também tenho um problema, porque novamente, a minha agência é privada, ela só é acessível de dentro da minha conta corrente.

[02:28] Vamos escrever o get e o set da agência para aceitar modificações do lado de fora da minha classe. Vamos começar pelo get. Primeira coisa, escreva a palavra “get”, depois “agencia”, que é o nome da variável que eu quero acessar, e é aqui que está uma funcionalidade bem legal do Dart.

[02:55] Se vocês escreverem “=>”, formando essa setinha apontando para o lado direito, vocês vão notar que apenas esses dois caracteres vão substituir tanto a chave quanto o return. Essa setinha vai retornar tudo que está à direita dela. E no caso, à direita dela eu vou colocar a minha “agencia;” com o “” antes, ou seja, o privado da minha agência.

[03:29] Se eu salvar isso aqui, vou voltar na minha main, vocês vão notar que aqui não tem mais erro. Quando eu tento imprimir o valor da minha agência eu já não tenho mais nenhum erro. Mas eu tenho erro quando eu tento alterar o valor da agência de fora da minha classe.

[03:49] Voltando à minha ContaCorrente, dessa vez nós vamos escrever o set da agência. Então “set agencia”, e eu tenho que abrir e fechar “()”. Dentro eu vou colocar “int novaAgencia”. Posso utilizar a setinha aqui? Posso, sim. “=> {}” e dessa vez eu preciso colocar “{}”, “_agencia = novaAgencia”. “;” dessa vez eu coloco do lado de fora, mas eu coloco do lado de fora porque eu estou utilizando a minha setinha.

[04:37] Se eu tirar a minha setinha, por exemplo, eu vou ter que colocar o meu “;” do lado de dentro, porque dessa vez isso aqui está se comportando como uma função, um método. Então em uma linha só também eu posso fazer o set da minha agência.

[04:57] Uma coisa interessante a se notar é que o Dart não requer o tipo que você envia para dentro desse set. Vocês veem que eu tiro o “int” ali, não tem erro nenhum no meu programa, tanto que se eu volto na minha main, o erro sumiu, não tem mais erro aqui, eu posso colocar um valor dentro de agência. O problema aqui é um só, como você não está definindo o tipo da novaAgencia, o tipo dela vai ser dinâmico, ou seja, dinâmico pode ser qualquer coisa.

[05:31] Portanto, se eu tentar enviar uma string aqui para dentro, eu estou tentando enviar a string “12345” para dentro de “agencia”. Se eu executar meu código, olha só o que vai acontecer, string não é um subtipo de int. Se você não definir um tipo para essa novaAgencia, pode ser que o seu programa vai dar errado.

[06:00] Então definir o tipo desse parâmetro que você está enviando para agência é uma boa coisa a se fazer, porque a sua própria IDE, ou seja, o Visual Studio, pode te mostrar isso aqui, que uma string não pode ser atribuída a um tipo int. E nós podemos corrigir isso antes de executar o nosso programa.

[06:26] Voltando ao meu terminal, eu vou executar esse programa com o get e o set da agência que nós já fizemos e dessa vez deu certo. Eu envio o valor de uma agência e depois imprimo o valor dessa agência, e deu tudo certo, com o get e o set bem resumidos aqui.

### Getters e Setters

A criação de getters e setters é uma tarefa rotineira quando criamos propriedades de classes em uma linguagem orientada a objetos. A sintaxe do Dart nos oferece uma maneira muito mais ágil de criar estas propriedades. Sobre a sintaxe de getters e setters no Dart, selecione as alternativas corretas:

- **A palavra reservada get pode ser utilizada para obter o valor de um atributo privado da classe.**
  - *Correto! A palavra get em nosso código irá retornar seja lá o que atribuirmos a certo atributo.*
- **Podemos utilizar set nome(novoNome) => _nome = novoNome; ao invés de `set nome(novoNome) { _nome = novoNome; }.**
  - *Correto! A “setinha” pode atribuir valores a qualquer campo privado da classe.*
- **Podemos utilizar get valor => _valor ao invés de get valor { return valor; }.**
  - *Correto! A “setinha” => têm o mesmo efeito do return.*
- get e set podem ser usados apenas com atributos privados.

### Público vs privado

Luíza resolveu criar um modelo para treinar orientação a objeto e encapsulamento:

```Dart
class Pessoa {
  String nome;  
  String _cpf;
  Endereco endereco;
}
```

Ela tenta utilizar um objeto do tipo Pessoa da seguinte maneira:

```Dart
void main() {
    Pessoa cliente = Pessoa();
    cliente.nome = "João";
    cliente.cpf = "123456789-0";
    cliente.endereco = Endereco();
}
```

O que podemos afirmar sobre o código?

- As atribuições estão sendo feitas do jeito correto. O código compila e executa.
- O código não vai executar pois a classe Pessoa não foi criada da maneira correta.
- **O código não vai executar, pois cpf é um campo privado.**
  - *Correto! Não podemos acessar o atributo cpf pois ele só é visível dentro da classe Pessoa.*

### Por quê privado?

Daniel criou uma classe com diversos campos privados, porém não sabe exatamente qual é a vantagem de utilizar esta abordagem.

Qual das opções melhor define a vantagem do uso de campos privados?

- Os campos privados podem ser acessados em qualquer lugar, o que facilita a implementação da lógica do programa.
- **A implementação de campos privados permitem que os mesmos possam ser modificada sem afetar nenhum código fora da própria classe.**
  - *Correto. O uso de campos privados evita que alguma implementação de um objeto da classe em outro lugar de nosso código não seja afetado por mudanças privadas de dentro da classe.*
- Usando campos privados somos obrigados a escrever getters e setters, que são uma boa prática.

### O que aprendemos?

- Atributos privados, restringindo o acesso aos atributos;
- Encapsulamento de código;
- Métodos de leitura dos atributos, os getters;
- Métodos de modificação dos atributos, os setters;
- A sintaxe de propriedades no Dart para facilitar a criação de getters e setters.

## Construtores

### Construtores

[00:00] Nós agora que já sabemos algumas propriedades das nossas variáveis dentro das nossas classes, como, por exemplo, isso aqui é uma variável pública, porque ela não tem “_” antes do nome da variável.

[00:15] Enquanto essa, o saldo, é uma variável com propriedade privada. Ela tem o “” antes do nome e nós não temos acesso à ela, “contaDaAmanda.”, não vai aparecer nada. Todas as variáveis que têm o “_” antes do nome são privadas. E como nós podemos acessá-las? Nós podemos acessá-las fazendo um get e um set, tanto para obter o valor dentro dessa variável quanto para definir um valor para essa variável.

[00:54] Vamos agora voltar nossas atenções para a agência e a conta dessa conta corrente. Toda conta precisa tanto de um número de agência quanto do número de uma conta. E nós podemos acessar o número da agência e definir lá dentro o valor “123”. Assim como eu quero acessar o valor da conta e eu posso definir para o valor da conta “12345678”.

[01:27] Defini o valor de agência e de conta. Se eu tentar imprimir “agencia” e se eu tentar imprimir “conta” nós vamos imprimir esses dois valores. Vamos testar no nosso terminal, eu vou escrever “dart bin\main.dart”, vamos executar nosso programinha aqui. 123 e 12345678. Esse é o valor da agência e da conta que nós acabamos de definir.

[02:02] Eu não sei quanto a vocês, mas eu nunca vi uma agência de uma conta corrente que tenha um valor negativo. Isso é possível? Nós podemos adicionar um valor negativo na nossa agência? Se eu executar o nosso programa vocês vão ver que é possível, sim. A nova saída aqui possui um valor negativo.

[02:27] E se isso for um erro meu, se isso for um erro do sistema eu não sei, mas que isso pode gerar problemas para o nosso banco futuramente, isso provavelmente pode. Então nós temos que definir que nenhuma agência nossa pode ser negativa. Podemos resolver isso utilizando o get e o set? Podemos.

[02:53] Eu vou primeiro tornar a agência um campo privado, então “get agencia”, eu vou retornar apenas valor da agência, e como é um retorno de apenas um valor, eu posso colocar apenas a setinha ali, eu não tenho que tratar esse valor, eu apenas o retorno.

[03:13] E o meu “set agencia” vai ter um valor inteiro, que vai ser uma “novaAgencia”, eu vou abrir e fechar “{ }” e eu só vou colocar lá dentro o valor dessa nova agência se essa nova agência for um valor “> 0”. Então eu posso definir que “_agencia = novaAgencia”, “;” para terminar e salvei o meu código.

[03:46] Agora que nós temos esse controle pelo set, se eu tentar adicionar esse 123, o que vocês acham que vai acontecer? Executando o código vocês vão ver que saiu 145, e esse 145 vem desse valor padrão que nós já atribuímos à nossa agência na criação da nossa conta corrente.

[04:11] Mas aí vocês vão prestar atenção que na criação dessa conta corrente nós já definimos um valor, que é o 145. E se nós pudéssemos atribuir um valor na criação dessa conta corrente, tanto da agência quanto da conta? Mas valores que eu defino lá na minha main, ou seja, de fora da nossa classe e não de dentro dela. Isso se chama construtor e o construtor tem várias utilidades, uma delas, inclusive, é obrigar que toda conta corrente tenha o valor de uma agência e o valor de uma conta.

[04:52] Digamos que eu esqueci de adicionar a minha conta para uma conta em específico, então um dos nossos clientes não tem mais o número de uma conta, ele tem a agência, mas ele não tem o número da conta.

[05:07] Executando o nosso programa vocês vão notar que saiu null, essa variável conta nunca foi inicializada. Imagina se ele tenta fazer uma transferência ou quer receber dinheiro e ele não tem número de conta, como aconteceria? Isso é um problema para o nosso programa. Nós temos que forçar que toda conta corrente tenha um número de agência e tenha um número de uma conta.

[05:36] Para que isso aconteça nós vamos novamente utilizar o construtor. O que é o construtor? O construtor faz exatamente o que o nome dele diz, ele vai construir o nosso objeto, dependendo dos parâmetros que nós vamos passar para ele. Ele pode ter ou não parâmetros, mas é sempre bom utilizar parâmetros. Então vamos lá.

[06:03] Aqui numa primeira linha da minha ContaCorrente, mas você pode fazer em qualquer uma, eu vou escrever “ContaCorrente”, abrir e fechar “()” e nós já estamos escrevendo o nosso construtor aqui dentro.

[06:20] A primeira coisa que eu tenho que definir no meu construtor são os parâmetros que eu tenho que enviar para lá. E como nós estamos falando de agência e de conta, eu vou enviar “this”, porque eu estou falando dessa ContaCorrente, “.” e como eu estou dentro da minha classe, eu estou escrevendo isso dentro da minha ContaCorrente, eu tenho acesso aos meus campos privados aqui.

[06:47] A primeira coisa que eu quero enviar é a “_agencia” e eu vou escrever uma “,” porque eu quero enviar mais coisas, a segunda coisa que eu quero enviar é “this.” a conta corrente dele. Temos dois argumentos dentro desse construtor, eu vou colocar um “;” aqui para terminar, essa linha está pronta, e esses dois argumentos agora são obrigatórios na hora da construção desse meu objeto.

[07:20] Vocês vão notar que nós temos dois erros agora nossa main. Por agora eu vou comentar essa contaDoTiago, vamos mexer apenas com a contaDaAmanda. E se eu deixo o meu mouse em cima do erro ele vai dizer que nós precisamos de dois argumentos aqui dentro. E, novamente, dentro dos “()” nós vamos enviar os argumentos para construir a contaDaAmanda.

[07:45] Antes de fazer isso eu vou salvar o meu código e tentar executar. Eu quero mostrar para vocês que quando nós não enviamos os argumentos para o construtor da nossa classe, nosso código nem executa.

[07:59] E quando o nosso código não executa, nós estamos forçando que o nosso código seja necessário esses dois argumentos para a nossa conta corrente. Tanto outros programadores no seu time de desenvolvimento, ou você mesmo, serão obrigados a enviar esses valores para a contaDaAmanda, ou para qualquer conta corrente. Então vamos enviar “123,12345678”, são esses os valores que eu já estava utilizando.

[08:37] Como está agora no nosso construtor da classe, é esperado que esses valores estejam já inclusos na minha ContaCorrente quando eu crio a contaDaAmanda. E vamos tentar executar esse código do jeito que está. Eu estou enviando “123” e de 1 a 8 como conta.

[09:02] Voltando ao meu terminal, eu vou executar o código novamente e os valores saíram certinhos. Essa é a agência e essa é a conta corrente. Nós estamos construindo nossa conta corrente já com esses valores.

[09:18] Mas espera aí, se eu colocar o “-123” aqui isso já vai ser tratado? E vocês vão observar que infelizmente não são. O -123 ainda é aceito dentro do construtor. Por quê? Porque lá na minha ContaCorrente eu estou incluindo esse valor direto no meu campo privado, eu não preciso nem utilizar o meu set. Como corrigir isso?

[09:48] O nosso consultor também pode aceitar valores que não sejam diretamente os nossos campos. Em vez de enviar esse “this._agencia”, nós podemos receber um “int agencia” e nós vamos tratar isso dentro do corpo do meu construtor. Eu posso colocar abre e fecha “{ }” logo depois do meu construtor, e se “(agencia > 0)” eu vou aceitar isso dentro da minha agência, no campo privado.

[10:29] Eu vou trocar esse valor aqui por “novaAgencia”, só para não confundir, então “novaAgencia”. Agora eu estou recebendo um valor “novaAgencia” e se esse valor for maior do que zero eu vou dizer que “_agencia” vai ser igual a ele, se não, continuo o programa. Se ele continuar, ele vai atribuir o valor de 145.

[11:00] Então vamos enviar aqui. Vamos salvar nosso programa, estou enviando -123 e com -123 a minha agência padrão 145 é utilizada na contaDaAmanda. Agora, se eu tiro esse “-“, e eu estou enviando o valor 123, eu devo esperar que eu receba a minha agência de valor 123. E aqui está ela.

[11:30] Este é o construtor da nossa ContaCorrente, ele é responsável não só por obrigar que certos valores sejam enviados para a construção desse objeto, mas também tratar esses dados se forem necessários.

### Membros estáticos

[00:00] Agora que nós já sabemos utilizar construtor para construir objetos a partir de alguns parâmetros que nós enviamos, e nós vamos obter objetos que já possuem certas variáveis lá dentro, inicializadas a partir desses valores que nós passamos como parâmetros.

[00:24] Nós também obrigamos as pessoas a enviarem esses valores lá para dentro, então é imprescindível que toda conta corrente tenha uma agência e tenha uma conta. E se eu quiser saber quantas contas correntes nós temos na nossa agência, na nossa conta ou no nosso banco em geral?

[00:51] Eu preciso criar um campo, pensem comigo, se eu criar um campo “int totalDeContasCorrentes”. Esse valor total de contas correntes será inicializado, então eu vou começar já contando como “0”. Por que 0? Porque toda conta corrente vai inicializar com 0. Quando nós criarmos a nossa primeira conta corrente, mudamos esse valor para 1.

[01:23] Na contaDaAmanda eu já estou inicializando com o valor da agência, com o valor da conta e eu vou lá e “contaDaAmanda.totalDeContasCorrentes = 1”. E vamos voltar na nossa contaDoTiago, vamos tirar esse “//”, vamos enviar para ele uma conta também, “12345679”. E a contaDoTiago vai precisar ser o de valor número 2, então “totalDeContasCorrentes = 2”.

[02:03] Espera aí, tem alguma coisa estranha. Como eu vou saber se essa realmente é a 2? Mas e se eu perder a contagem no meio do caminho, se eu errar alguma coisa, como eu vou saber quem essa é realmente a 2? Eu vou precisar fazer isso para todas as contas correntes? Não.

[02:26] Aqui no nosso construtor nós não podemos fazer o seguinte, “totalDeContasCorrentes++;”? Sempre do nosso construtor nós vamos dizer para adicionar um valor lá dentro de totalDeContasCorrentes. Vamos salvar esse código e eu vou imprimir primeiro o valor lá dentro da contaDaAmanda e eu vou imprimir também lá na contaDoTiago. Então “contaDoTiago.totalDeContasCorrentes”. Vamos imprimir esses dois valores.

[03:14] Saiu 1 e 2. Mas espera aí, na contaDaAmanda está contando 1 ainda, mas eu tenho duas contas correntes, deveria sair 2 aqui também, não? Isso aqui é uma propriedade específica, é uma variável que tem que ser estática, da nossa classe. Como assim da nossa classe?

[03:37] Se vocês pensarem bem, a conta corrente em si não precisa saber quantas outras contas correntes existem. O nosso banco vai ter vários clientes, esses clientes não precisam de uma referência para a quantidade de contas que existem nesse banco.

[03:58] Se vocês observarem, essa variável totalDeContasCorrentes não pertence ao nosso objeto, porque, novamente, nenhuma conta corrente precisa saber quantas contas correntes existem, isso é desnecessário. Mas a nossa classe tem esse poder de saber quantas contas correntes devem existir dentro dela mesmo.

[04:30] Se isso é pertinente à nossa classe e não ao objeto gerado pela classe – eu vou tirar isso daqui, vou colocar mais em cima – nós podemos utilizar essa nova palavrinha, o “static”. O static vai definir que essa variável é estática dessa classe que ela está dentro. E o que significa? O que eu quero dizer por estático?

[05:02] O que eu quero dizer é que estático é algo que pertence à classe ContaCorrente e não ao objeto ContaCorrente. A conta corrente em si não faz ideia de quantas contas correntes existem, mas a minha classe ContaCorrente sabe.

[05:20] E já que nós estamos contando, aqui nós estamos fazendo da forma certa. Dentro do nosso construtor, ou seja, toda vez que uma nova conta corrente for inicializada, eu vou adicionar mais um ao valor dessa variável.

[05:39] Aqui eu não preciso mais acessar com “contaDaAmanda.totalDeContasCorrentes” e tento definir um valor lá dentro, nem a do Tiago, os dois estão [ERRADOS]. E vocês vão notar que existe um erro de compilação aqui, um campo estático não pode ser acessado por uma instância desse objeto. Como eu acesso essa quantidade? Eu preciso utilizar um objeto para acessar essa quantidade? Eu não preciso.

[06:11] Em vez de utilizar a contaDaAmanda ou a contaDoTiago, eu vou usar a ContaCorrente. Isso aqui eu posso tirar, Visual Studio Code aqui está se enganando, salvei e, olha só, “ContaCorrente.totalDeContasCorrentes”. Dessa vez eu estou utilizando a classe em si, ContaCorrente, para salvar a quantidade de contas correntes que foram criadas a partir dessa classe.

[06:45] Salvei o meu código e eu vou comentar esse aqui do Tiago, vou deixar só da Amanda por enquanto. Então da Amanda, eu venho no meu terminal, executei e existe uma conta, uma conta que é apenas a da Amanda. E se eu criar a do Tiago agora? Tirei o comentário, vamos voltar ao nosso terminal, executar novamente. Agora nós temos duas contas correntes.

[07:14] Vamos criar uma terceira, só para definir que isso realmente está funcionando. “ContaCorrente contaDoAlexandre = ContaCorrente(123,123456780)”, isso eu posso tirar, “;” para finalizar, tirar essa linha também, que o Visual Studio Code está se enganando, e dessa vez nós temos três contas correntes. Será que vai aparecer 3 ali? Executei o meu código e aqui, três contas correntes foram criadas.

[08:02] Dessa vez essa conta corrente não é do objeto gerado pela classe ContaCorrente, mas sim essa variável é da classe ContaCorrente em si, então você não vai ter acesso a, por exemplo, “contaDoTiago.totalDeContas...”, vocês veem que nem completa, por quê? Porque não faz parte dessa instância, faz parte da classe em si.

### Conclusão

[00:00] Parabéns, você chegou no final de mais um curso de Dart. Dessa vez nós falamos de orientação a objetos.

[00:08] Ao invés de trabalharmos com código da seguinte maneira, por exemplo, nós temos um “String” que vai ser o titular de uma conta, vamos chamá-lo de “titular1” que vai ter o nome de “’Jeferson’” e ele vai ter uma “contaCorrente1” que vai ter um valor de 1 a 5 e assim por diante.

[00:38] Nós não vamos mais pensar dessa forma, tendo vários campos com titulares já direto lá na nossa main. Dessa vez nós vamos pensar em classes, nós vamos criar as nossas classes, por exemplo, a nossa “ContaCorrente”, que nós aprendemos que uma classe vai gerar um objeto, esses objetos vão ter campos, como “titular”, como a “agencia”, como a “conta”, como o “saldo”. Cada um desses campos pode ser tanto privado quanto público.

[01:15] E o que isso significa? Significa que privado vai ser acessado apenas de dentro da própria classe e público pode ser acessado de fora, tornando um pouco mais segura a nossa implementação da nossa classe.

[01:32] Nós aprendemos também que nós podemos fazer métodos como esse que nós verificamos o saldo e se esse saldo for maior do que o disponível no nosso cheque especial, nós podemos movimentar dinheiro lá dentro, se não, nós vamos dar uma mensagem de erro e retornar um valor pelo nosso método, seja lá para onde nós o estivermos utilizando.

[02:04] Nós podemos fazer transferências utilizando métodos também, utilizando argumentos, enviando argumentos para dentro desses métodos que vão ser verificados, tratados, modificados, a fim de que tenhamos objetos que possam ser gerados e manipulados de forma diferente. E com alguns toques específicos de nossas classes, como, por exemplo, a palavra reservada “this”, que referencia o objeto que você está atualmente.

[02:39] Nós também vimos get e set, que são duas propriedades que vão tanto colocar um valor dentro dos nossos campos privados quanto tirar esse valor de lá, obter esse valor para nós. O get vai fazer a parte de obter esse valor para fora da classe e o set vai colocar um valor dentro desses campos privados de nossas classes.

[03:09] Nós podemos ter lógica dentro desse set, por exemplo, para que nós não consigamos aqui colocar uma nova agência que seja menor do que 0, que ela precisa necessariamente ter um valor maior do que 0.

[03:24] O nosso construtor vai construir essa classe baseado nos valores que nós enviamos como argumentos, ou seja, nós podemos inicializar esse objeto de qualquer maneira que nós quisermos. E nós também sabemos que podemos ter classes dentro de classes, obviamente, criando uma classe e referenciando-a dentro de outra classe. É uma forma de ter um objeto cliente, por exemplo, dentro do meu objeto ContaCorrente.

[04:01] E lá na minha main nós não vamos mais fazer aquilo de inicializar campo por campo, colocando o nome de cada cliente, colocando a conta de cada cliente manualmente dentro de cada objeto, no caso seriam várias strings, vários inteiros, vários doubles para os saldos dessas contas. E dessa vez nós temos tudo organizado dentro dos nossos objetos ContaCorrente.

[04:32] E nós também temos métodos lá dentro, que vão facilitar a movimentação de dinheiro entre uma conta e outra ou de uma conta específica. Nós podemos usar os métodos, nós podemos acessar os campos, como, por exemplo, a conta corrente dessas contas e assim por diante.

[04:54] Espero muito que esse curso tenha ajudado você a ser um melhor desenvolvedor Dart e eu espero muito também que tenha sido muito útil para o seu crescimento pessoal.

### Sobre construtores

Abaixo, temos algumas afirmações a respeito da utilização de construtores.

Qual delas é verdadeira?

- Construtores não podem receber parâmetros.
- Construtores não têm utilidade real, podemos deixar os atributos públicos e defini-los manualmente.
- **Construtores são utilizados para inicializar os atributos.**  
  - *Correto! A inicialização de atributos é a principal responsabilidade do construtor.*

### Onde está o erro?

Luana está construindo um jogo e temos o trecho de código abaixo:

```Dart
class Jogo {
  Componente _comp;

  Jogo(Usuario usuario) {
    this._comp = usuario;
  }
}
```

Porém o código acima não é executado.

Qual dos motivos abaixo explica a razão disso?

- O uso da palavra reservada this está errado.
- **Está sendo feita uma atribuição de objetos de tipos diferentes.**
  - *Correto! O tipo Usuario não é igual ao tipo Componente.*
- Não podemos atribuir _comp, pois é um campo privado.

### Por que não soma?

Em seu jogo, Luana quer manter o número total de jogadores atualizado. Para isso, ela escreve o código abaixo:

```Dart
class Jogador {
  int _totalJogadores;

  Jogador() {
    _totalJogadores++;
  }
}
```

Porém, o contador sempre apresenta 1 após inserir um novo jogador. Qual dos motivos abaixo explica a razão desse acontecimento?

- Luana deveria deixar o _totalJogadores como propriedade, usando o recurso de get e set do Dart.
- Luana deveria deixar o _totalJogadores como público, para que ele possa ser somado sem problemas.
- **O _totalJogadores deveria estar como estático, assim, sempre que fosse criado um novo objeto do tipo Jogador, não seria criado um novo total, mantendo-se o valor correto.**
  - *Correto! A declaração correta desse campo é static int _totalJogadores;.*

### O que aprendemos?

- Construtor da classe, possibilitando receber argumentos e inicializar atributos a partir da criação de um objeto;
- Com isso, a inicialização dos atributos recebidos no construtor torna-se obrigatória.
- Atributos da classe, os atributos estáticos.

## Congratulations!

You have completed your course. Share your success on social media or email.

That's all folks!!!
___