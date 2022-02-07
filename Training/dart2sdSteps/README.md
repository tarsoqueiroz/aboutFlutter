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



### Métodos com retorno

### Métodos com vários argumentos

### Como chamar um método

### Sobre métodos

### Métodos válidos

### O que aprendemos nessa aula?

## Composição de classes

### Composição de classes

### Importando classes

### Nulll

### Problema não esperado

### Removendo redundâncias

### Organizando código

### O que aprendemos?

## Get e Set

### obterSaldo e definirSaldo

### get e set

### produtividade com get e set

### Getters e Setters

### Público vs privado

### Por quê privado?

### O que aprendemos?

## Construtores

### Construtores

### Membros estáticos

### Conclusão

### Sobre construtores

### Onde está o erro?

### Por que não soma?

### O que aprendemos?


## Congratulations!

You have completed your course. Share your success on social media or email.

That's all folks!!!
___