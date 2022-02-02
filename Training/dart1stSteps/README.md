# Dart: primeiros passos com a linguagem

## Introdução ao curso de Dart

> `https://cursos.alura.com.br/course/dart-primeiro-passos`

- Descubra o que é o Dart.
- Instalar e executar código dart
- Configurar um ambiente de desenvolvimento para Dart
- Variáveis e condicionais
- Laços de repetição e break

## Conhecendo o Dart

### Introdução

Olá, tudo bem? Meu nome é Timóteo Holanda e serei o instrutor do curso de Dart na Alura.

Nesse curso aprenderemos o que é Dart e quais as características dele e por que aprendê-lo.

Veremos também como instalar o Dart em nossas máquinas e preparar um ambiente de desenvolvimento utilizando o Visual Studio Code e alguns plugins que facilitarão nosso trabalho nessa jornada que é programar com o Dart.

Como esse é um curso básico, caso já tenha conhecimento em programação ou programa em outras linguagens como o Java, Jacascript, C# e C++, por exemplo, nesse curso entenderemos a diferença de sintaxe da linguagem Dart para outras. Se estiver iniciando agora sua carreira na programação, o curso possui todo o conteúdo necessário para ter uma noção de como programar usando o Dart.

Veremos assuntos como variáveis, condicionais, variáveis booleanas, fluxos de controle, laços de repetição com fore com while, e aprenderemos a diferença entre esses dois.

Também veremos o break, uma forma de sair dos laços de repetição, e os laços de repetição alinhados, assim como a maneira de executar o Dart no nosso terminal e obter a saída do nosso programa.

Se tiver interesse em entender mais sobre Dart, nos vemos no curso.

### O que é Dart?

Antes de começar a colocar a mão na massa com o código, conversaremos sobre o que afinal de contas é o Dart e por que devemos ou queremos aprender a linguagem.

O Dart é uma linguagem de programação que nasceu em 2011 e foi desenvolvida pela famosa gigante da tecnologia Google. Ele foi construído desde o início pensando em desenvolvimento rápido e multiplataformas.

Geralmente, conhecemos o Dart por causa do Flutter, uma framework construída também pelo Google com o objetivo de dar suporte a desenvolvedores para desenvolverem aplicações nativas, tanto para Android quanto IOS. Com ele também é possível desenvolver aplicações web e Desktop.

Porém, precisamos evitar confundi-los.O Dart é uma linguagem criada para o desenvolvimento das aplicações. O Flutter é a ferramenta que utiliza essa linguagem, tornando possível o desenvolvimento de aplicações móveis. Logo, o Dart funciona sem o Flutter, mas o Flutter não funciona sem o Dart.

Se já tivermos facilidade com a linguagem C e seus filhos, como o C++, o Java, o C# e assim por diante, o aprendizado será facilitado, pois o Dart foi construído com a intenção de ser fácil para aqueles que já estão no ramo. Mas não há muitos problemas para quem está começando na programação, pois o pensamento de simplificar a linguagem tornou-a fácil o bastante para quem ainda não possui conhecimento na área.

Para os que já tem familiaridade com as linguagens voltadas para a web, tal qual o Javascript, será interessante saber que o Dart foi aprovado pela Associação Europeia de Fabricantes de Computadores, a ECMA. Esta é a mesma organização que ditou os padrões de linguagem do Javascript. Isso é importante porque os padrões aprovados para o Dart, o ECMA-408, segue os mesmos padrões que o do Javascript, o ECMA-262, o que influencia diretamente no funcionamento interno da linguagem.

Apesar das duas linguagens serem pouco parecidas, nesse aspecto são quase irmãs, a ponto do Dart possuir um compilador interno conhecido como dart2js que será próprio para traduzir o código para Javascript, a fim de rodá-lo facilmente em navegadores.

Essa pode parecer uma má ideia, pois poderíamos escrever o código em Javascript diretamente ao invés de usar o Dart e depois convertê-lo. Mas a tradução indica que o Google investiu em otimização interna e segundo dados da própria empresa o Dart compilado para Javascript pode ter uma performance 50% melhor do que o V8, o interpretador de Javascript mais potente atualmente e que curiosamente também foi gerado pelo Google.

Há gráficos para observar a diferença de performance entre os dois em testes bem conhecidos quando nos tratamos da comparação entre duas ou mais linguagens. O Delta Blue e o Richards são métricas de velocidade baseadas em um programa médio, porque foram feitas para simular atividades comuns que os programas farão no computador. Eles analisam quanto tempo cada programa desenvolvido leva para realizar as atividades. Ambos mostram um desempenho melhor do dart2js com relação ao V8.

Mas afinal, por que precisamos de uma nova linguagem de programação se podemos usar o Javascript programando para a web e o Java para dispositivos? A resposta é que já estava na hora de haver uma nova linguagem, pois o Dart não coleta funcionalidades redudantes através dos anos.

Tanto o Javascript quanto o Java, linguagem com as quais estamos comparando o Dart, foram lançadas em 1995. As duas possuem vestígios de desenvolvimento de mais de 20 anos. Isso quer dizer que a versão que podemos baixar e executar nesse momento possui códigos de mais de 20 anos, já que todas as novidades foram acopladas ao mesmo código ao longo do tempo.

O Dart foi criado em 2011 e desde sua fundação foi pensado para ter a melhor performance e abranger todos os dispositivos possíveis da atualidade, Esta é uma nova linguagem com um novo objetivo para alcançar um novo campo de desenvolvimento em um futuro próximo, tanto na web quanto em dispositivos móveis e Desktop.

### Quais Características?

A linguagem Dart foi planejada para atender a algumas características exigidas no mercado atual.

Quais são algumas destas características da linguagem de programação Dart?

- **Velocidade de execução.**
  - ***Correto! O Dart foi otimizado o bastante para oferecer uma execução comparável a linguagens muito utilizadas no mercado atual.***
- **Parecida com linguagens como C, C++, Java, Javascript etc.**
  - ***Correto! Desde sua concepção, o Dart se espelha em linguagens já existentes para facilitar a aprendizagem daqueles que já possuem conhecimentos nestas linguagens.***
- Executável exclusivamente no Windows.

### Diferentes sistemas

Fernando, um estudante da Alura, quer desenvolver uma aplicação de uso próprio utilizando o Dart.

Em quais destes sistemas Fernando poderá utilizar sua aplicação?

- **Em seu celular Android.**
  - ***Correto! O Dart possui a capacidade de ser executado diretamente do celular de Fernando.***
  - **Em seu computador.**
- ***Correto! No caso da execução de programas em Dart no computador, o Dart pode ser executado de forma nativa pelo terminal, ou compilado para um programa desktop comum.***
- Em seu website, de forma nativa.
- **Em seu website, compilado para Javascript.**
  - ***Correto! Por meio do compilador dart2js, é possível ter a mesma aplicação rodando em Javascript no website de Fernando.***

### Para saber mais: Compiladores

O Dart possui uma Máquina Virtual (o DartVM), semelhante à encontrada no Java (o JVM), que o permite executar código interpretado de forma rápida, utilizando um compilador chamado JIT (just-in-time, ou na hora certa), conhecido também como tradução dinâmica.

Além disso, o Dart tem embutido também um compilador AOT (ahead-of-time, ou antes do tempo), que permite a compilação do código-fonte para produzir aplicações nativas do dispositivo que esteja executando. Assim, é possível criar programas que utilizam 100% da capacidade de um computador, por exemplo.

Uma curiosidade: o sistema iOS não permite códigos traduzidos dinamicamente por questões de segurança, portanto, este é o compilador padrão utilizado na plataforma.

### O que aprendemos?

Vimos algumas características do Dart, como:

- É uma linguagem nova.
- É portável, podendo ser executado em vários dispositivos diferentes.
- É a linguagem que utilizada para desenvolvimento de aplicações do Flutter.
- Parecido com linguagens já existentes, como C++, Java, Javascript etc.
- Aprovado pelo ECMA, mesma instituição que ditou os padrões da linguagem Javascript.
- Possui um compilador interno capaz de compilar seu código para Javascript.
- É veloz e prático.

## Instalação e o primeiro programa

### Instalando o Dart

Hoje veremos como instalar tudo que precisamos para iniciar o desenvolvimento com a ferramenta que conhecemos como Dart.

O primeiro passo será acessar a internet com nosso navegador e acessar o site [dart.dev](https://dart.dev/) . Quem não souber Inglês não precisará se assustar, nós passaremos passo a passo o que for necessário para instalar o Dart em nossas máquinas. Para quem entende, também não se preocupe. A página dá a entender que o Dart é uma linguagem para construir aplicativos, mas dá muito foco à construção de interfaces gráficas. E o Dart realmente foi otimizado para uma boa construção de interfaces gráficas, mas começaremos com ele como uma linguagem de programação básica.

Clicaremos no botão "Get Dart". localizado na barra superior à direita da tela e uma nova página será aberta. Nela haverá instruções para a instalação de todas as versões do Dart. Numa parte da tela estará escrito "Install the Dart SDK". Este será o kit de desenvolvimento de software do Dart.

Diferentemente do Java, não precisaremos de uma JRE,. uma versão de ambiente da linguagem. O Dart só tem uma versão, portanto apenas uma precisará ser instalada por sistema operacional. Teremos a opção de instalação para Windows, Linux e Mac, usaremos o Windows devido às configurações da máquina.

Dentro da opção para Windows teremos ainda duas opções, a do Chocolatey, que pra quem ainda não conhece, é um gerenciador de pacote para Windows que tem algumas vantagens e desvantagens. Porém, a instalação por meio dele só será recomendável para os que já forem familiarizados com a ferramenta.

A segunda opção oferecida será a do guia de instalação. Bastará clicarmos no link e seremos transportados para outra página em que teremos ainda mais duas versões. Uma delas será a estável, a última lançada oficialmente pelos desenvolvedores do Dart. Todos as ferramentas agregadas à linguagem e que foram consideradas estáveis, sem bugs, estarão nessa versão.

Entretanto, se quiser acesso mais rápido às novas ferramentas sendo constantemente lançadas por quem desenvolve o Dart, é possível baixar a versão Dev, que permite o acesso a essas ferramentas que não existem na versão estável e não são consideradas prontas para a produção, então podem haver bugs, não sendo a mais recomendável.

As instruções de instalação para usuários do Linux e Mac também estarão na página do Dart Dev. No caso do Linux, para quem utiliza qualquer derivado do Debian será possível usar o segundo link, com uma forma semelhante a do Windows, baixar o arquivo e executá-lo no computador. Dessa forma, ainda será necessário rodar no terminal os dois comandos presentes nesta tela para instalar todos os binários do Dart e colocar o link para eles nas variáveis de ambiente da máquina.

Há ainda a opção de utilizá-lo pelo apt-get executando os quatro primeiros comandos da página e logo em seguida os dois seguintes para instalar a versão instável, ou outros três para a versão de desenvolvimento.

Voltando ao Mac, podemos rodar os dois comandos presentes no site no terminal do Mac para instalar no computador o Dart instável ou o comando seguinte para instalar o Dev.

Quanto a versão para Windows que baixamos, executaremos o arquivo, será aberto o prompt para executar como administrador, e aceitaremos os termos de contrato para continuar a instalação. Clicaremos em Install ao final do processo e baixaremos os dados.

Para verificar se o Dart estará instalado pelo Windows, podemos usar o "cmd". Abriremos o menu inicial, digitaremos "cmd" e teremos acesso ao terminal do computador, Para nos certificarmos de que o Dart estará instalado, abriremos o "cmd" e escreveremos Dart --version . Pressionaremos "Enter" e se virmos uma mensagem semelhante a Dart VM version: seguida do número da versão e data da instalação, isso significa que a instalação foi bem sucedida.

### Faça como eu fiz na aula

Após a instalação do Dart em sua máquina, é importante verificar se o programa foi configurado em suas variáveis de ambiente, para que possamos ter acesso a ele a partir do nosso terminal.

As variáveis de ambiente permitem com que programas instalados em seu computador tenham um ponto de partida universal, ou seja, se tivermos uma variável de ambiente para o programa do Dart instalado em nossos computadores, teremos acesso facilitado a ele em nosso terminal, dando flexibilidade na hora de construir nossos programas.

No Windows, você deve primeiramente saber o local de instalação do Dart, o local padrão de instalação é em:

```Shell
>C:\Program Files\Dart
```

ou

```Shell
>C:\Arquivos de Programas\Dart
```

![img0201.png](./images/img0201.png)

Após verificar que a pasta Dart existe, devemos garantir que nossas variáveis de ambiente contenha a pasta com o Dart. Para isso, podemos buscar no Windows, utilizando o menu iniciar, pela frase “Editar as variáveis de ambiente do sistema”.

![img0202.png](./images/img0202.png)

Clique na opção que apareceu e, na janela que foi aberta, devemos clicar em “Variáveis de ambiente”:

![img0203.png](./images/img0203.png)

Nesta nova janela que foi aberta existem duas seções, as variáveis de usuário (para o usuário que você está usando em seu computador) e as variáveis do sistema (aquelas que ditam as variáveis do Windows como um todo). Vamos começar nos certificando de que a pasta de instalação do Dart esteja devidamente ativa como uma variável de sistema:

![img0204.png](./images/img0204.png)

Caso a linha destacada em amarelo não exista, clique no botão “Novo”, logo abaixo da lista que aparece na imagem acima, e preencha da seguinte maneira:

![img0205.png](./images/img0205.png)

Note que, no segundo campo, é necessário colocar o caminho da pasta onde está instalado o Dart em seu computador, seguido do \dart-sdk no final. Após confirmar apertando OK nesta janela, devemos agora nos certificar que nosso usuário tenha acesso a essa pasta também. Então, desta vez, clique em na opção Path da lista superior, e logo após em “Editar…”.

![img0206.png](./images/img0206.png)

Nesta nova janela, vamos criar a variável de ambiente para nosso usuário, clicando em “Novo”:

![img0207.png](./images/img0207.png)

Neste novo campo, no final da lista que apareceu, devemos digitar: 

```Shell
>%DART_SDK%\bin
```

![img0208.png](./images/img0208.png)

Tudo pronto! Aperte OK e feche todas as janelas que abrimos. Reinicie seu computador, e suas variáveis de ambiente estarão prontas para serem usadas!

### Nosso primeiro programa

Agora vamos começar a fazer o grosso do nosso desenvolvimento. Nas próximas aulas falaremos de código. Mas antes de falar de código, temos que falar sobre algo muito importante: o ambiente de desenvolvimento.

O Dart não vem com nenhum ambiente padrão próprio para desenvolver. Há a liberdade para utilizar um editor de texto de preferência. Se buscarmos no Google por "IDE para Dart", a primeira página será um grande resumo de ferramentas que podem facilitar o desenvolvimento, no mesmo site que utilizamos para a instalação, Dart Dev, mas estaremos na sessão Tools, ferramentas em inglês.

As três principais ferramentas disponíveis que são recomendadas para o desenvolvimento com Dart são o Android Studio, o1 IntelliJ e o Visual Studio Code. O Android Studio e o IntelliJ são ferramentas muito parecidas, tanto que a página de instrução de ambas abordam praticamente o mesmo. O Android Studio é em suma uma modificação do IntelliJ para produzir aplicações específicas para Android.

O IntelliJ é uma IDE fantástica para desenvolvimento Java, mas tanto ele quanto o Android Studio oferecerão suporte para desenvolver em Dart também. Mais abaixo na mesma página, veremos instruções de como configurar o Dart para usar tais ferramentas.

Dentro de algum desses dois programas haverá uma barra de ferramentas na qual deve-se clicar em "Configurar > Plugins" para em seguida instalar a extensão que fornecerá suporte para trabalhar com Dart. Não utilizaremos esses softwares, entretanto.

Durante todo nosso curso, usaremos o Visual Studio Code, um editor de texto da Microsoft próprio para desenvolver em diversas linguagens. Na página dele há versões para o download adequadas a qualquer sistema operacional, Linux, Windows ou Mac. Fica a sugestão de baixar a ferramenta para acompanhar o curso.

Voltando ao site, teremos ainda alguns plugins disponíveis não-oficialmente para alguns editores de texto mantidos pela comunidade de desenvolvimento, como Emacs, Vim e Atom.

Se não quiser fazer essas instalações ainda, poderá utilizar o DartPad, ferramenta na qual o próprio navegador servirá como uma IDE, ou seja, bastará ter um navegador para trabalhar com o Dart. Para isso, bastará acessar o site [dartpad.dartlang.org](https://dartpad.dartlang.org/?). Ele funcionará no tablet, celular ou computador, qualquer aparelho em que acessarmos o navegador.

Do lado esquerdo da tela do DartPad escreveremos o código e do direito teremos a saída do console. pressionando o botão para executar. Mas não vamos iniciar nossa jornada com nenhuma das IDEs que mencionamos. Para mostrar que o código que estamos escrevendo não passa de texto, começaremos a escrevê-lo com o bloco de notas.

```Dart
void main() {
print("Ola, mundo");
}
```

Escrevemos o código-fonte do programa mais simples que existe. Ele imprimirá "Ola, mundo" na nossa tela. Digitamos "Olá" sem acento porque teremos um problema com extensões que discutiremos a seguir. Durante o curso vamos descobrir e nos aprofundar sobre o significado de cada um dos elementos no código. main() significa que esse será o ponto de partida do nosso programa, e é uma função. Uma função não é exclusivamente um ponto de partida, mas nesse caso ela será o ponto de partida. Nenhum programa do Dart funcionará sem a main().

O print() também será uma função. Logo após as funções sempre abriremos parênteses que deverão ser fechados em algum lugar. "Print" em Inglês significa "imprimir" e imprimiremos tudo que estiver entre parênteses e ente aspas, ou seja, "Ola, mundo". Terminamos essa linha com ponto e vírgula (:), diferentemente das demais. Veremos o porquê mais pra frente.

void denota algo vazio, que não possui nenhum retorno. Isso será melhor explicado quando aprendermos a respeito de funções e métodos. Estamos falando do programa mais básico existente em Dart. Escrevemos esse código no nosso bloco de notas e agora, para executá-lo, salvaremos o arquivo dando um nome genérico, como "programa", e deixaremos na nossa área de trabalho com a extensão ".txt" mesmo.

Como havíamos mencionado, usando o Windows, acessaremos "cmd" para o prompt de comando, e vamos executar o programa. Navegaremos para a área de trabalho em que o arquivo foi salvo, Desktop no nosso caso. Estando na pasta do usuário, digitaremos cd, uma abreviação de "change directory", do Inglês. "Mude o diretório" e escreveremos Desktop na sequência. Pressionando "Enter". abriremos essa pasta e com o comando dir serão mostrados todos os arquivos no interior.

Dentro da área de trabalho teremos o "programa.txt". Para executá-lo, chamaremos o programa do Dart no nosso terminal digitando dart programa.txt. Pressionaremos o "Enter" e a saída "Ola mundo" aparecerá na sequência.

Mas melhoraremos nosso programa a partir de agora, voltando ao bloco de notas. Iniciaremos toda linha de código que estiver dentro de uma função com um "Tab" para demonstrar hierarquia. Sendo assim, clicaremos no "Tab" antes do que estiver dentro da função main(), entre chaves, para o conteúdo ficar um pouco mais para a direita. Assim fica mais fácil visualizar o que está dentro ou fora da função. Quando fazemos programas mais complexos fica claro o quanto essa resolução é útil.

A única alteração efetuada foi o "Tab" antes do print(). Dessa vez salvaremos o programa como do Tipo "Todos os arquivos" em vez de "Documento de texto". Quanto ao nome, manteremos "programa", mas não usaremos a extensão ".txt" e sim ".dart". Essa será a extensão padrão para os nossos programas.

Voltando para o terminal, veremos que agora na área de trabalho temos um "programa.dart" além do "programa.txt" que ja tínhamos. Para executá-lo, iniciaremos digitando dart programa.dart. Executando, veremos que nada mudou, pois a alteração que fizemos do "Tab" não aparecerá no terminal.

### Para saber mais: código-fonte

O que você escreve é chamado de código-fonte, e possui esse nome porque contém os códigos (ou comandos) que seu computador utiliza como fonte para atingir um objetivo, seja imprimir uma linha de texto na tela, seja realizar cálculos mirabolantes. Um programa pode conter dezenas de milhares de linhas de código, e você provavelmente nunca vai atingir o limite. Portanto, saiba que sempre terá o espaço necessário para instruir seu computador a realizar qualquer tarefa que ele possa realizar.

### Impressão de texto

Jaqueline está aprendendo a linguagem Dart e quer escrever o seu primeiro programa. O programa vai escrever a frase “Olá, mundo! Meu nome é Jaqueline!” na tela.

Observe a linha abaixo:

```Dart
???(“Olá, mundo! Meu nome é Jaqueline!”);
```

Qual comando deve ser inserido no lugar indicado com ??? para que o programa cumpra o seu dever?

- main
- void
- **print**
  - ***Correto! O comando print é utilizado para imprimir texto na tela, e com ele Jaqueline consegue terminar seu programa.***

### O que aprendemos?

Nesta aula, aprendemos:

- Instalar o Dart.
- Executar o Dart no terminal com o comando dart.
- Que temos a liberdade de escrever nosso código-fonte no editor de texto de nossa preferência, ou até mesmo em nosso terminal.
- Instalar e configurar o Visual Studio Code.
- Que todo programa em Dart deve conter void main() {}.
- Que todos comandos devem terminar com ;.
- Que para imprimir algo na tela devemos utilizar o comando print().

## Tipos de variáveis

### Inteiros

Nas próximas aulas começaremos a tratar de tipos de variáveis, mais especificamente as que tratam de números.

Para nos manter organizados, criaremos uma pasta na área de trabalho chamada "sintaxe-variaveis-e-fluxo" em que manteremos tudo que for produzido durante o curso, como o código-fonte.

Abriremos o Visual Studio e antes de começar a escrever os códigos, ativaremos um plugin que facilitará nossa vida. Clicaremos no ícone de um quadrado na barra lateral esquerda da tela do programa referente às extensões, ou pressionaremos "Ctrl + Shift + X". Será aberta uma aba e na caixa de texto que aparecerá, digitaremos "Dart". A primeira opção da lista será a extensão do Dart para o Visual Studio. Então, clicaremos em "Install" para instalar essa opção e passar a tratar do código.

Como já criamos nossa pasta, clicaremos em "File > Open Folder" e abriremos nossa pasta criada, que ainda estará vazia. Pressionando "Ctrl + N", criaremos um novo arquivo. Começaremos a escrever um programa com a mesma estrutura inicial de "Ola, mundo". Mesmo sem termos escrito nada ainda, vamos salvar o programa e criar um nome para ele que será "testaVariaveisInteiras.dart".

Agora as palavras no código começarão a ficar coloridas porque cada uma terá um significado diferente. Usando o tema padrão do Visual Studio, as palavras amarelas serão funções. As azuis, serão palavras reservadas. As palavras reservadas são palavras que não podemos usar durante nosso programa se não for dentro de uma cadeia de caracteres.

Assim como começamos a fazer no primeiro programa, faremos um print() e escreveremos "Eu tenho 25 anos." dentro dos parênteses. A mensagem ficará vermelha e a função print() aparecerá amarela, assim como a main(). Chamaremos o conteúdo dentro das aspas de string. Então, com o plugin do Dart no Visual Studio, conseguiremos ter a noção visual dos elementos do código.

```Dart
void main() {
    print("Eu tenho 25 anos.");
}
```

Pressionaremos "Ctrl + S" para salvar o programa e para executar, abriremos o terminal, e entraremos na pasta em que ele estará digitando cd sintaxe-variaveis-e-fluxo\, mudando assim o diretório do terminal. Dentro da pasta teremos o programa que escreveremos. Para executá-lo, dart testaVariaveisInteiras.dart e pressionaremos "Enter". A saída será nossa mensagem "Eu tenho 25 anos."

Se uma pessoa tiver 25 anos hoje, ela não terá daqui a um ano. Porém, se o programa for executado daqui a um ano, a saída ainda será a mesma. È aí que começamos a utilizar variáveis no desenvolvimento. As variáveis são itens que podem ser modificados na execução, uma capacidade que queremos para a idade. Criaremos uma variável inteira.

Um número inteiro na matemática faz parte do conjunto de números que pode ser escrito sem a parte fracionada, seja ele positivo ou negativo . No Dart, o int indicará um valor inteiro, uma abreviação do inglês "integer". Escreveremos int idade; e o ponto e vírgula significará "acabei". Notaremos durante o desenvolvimento que a maioria das linhas terá

```Dart
void main() {
    int idade;
    print("Eu tenho 25 anos.");
}
```

Se salvarmos o programa e executarmos assim, nada acontecerá, porque só criamos a variável, mas não atribuímos nenhum valor a ela. Então, após a palavra idade colocaremos um sinal de igual e "25". O sinal de igual será o responsável por atribuir o valor "25" a variável idade. Assim, quando o programa estiver executando e chegar até a linha 2, dali em diante sempre que utilizarmos a variável idade ela terá esse valor, a não ser que seja modificada.

```Dart
void main() {
    int idade = 26;
    print("Eu tenho 25 anos.");
}
```

Salvaremos e executaremos novamente e nada será modificado porque não estamos utilizando essa variável. Se deixarmos o mouse em cima da variável, o próprio Visual Studio avisará isso com uma mensagem em Inglês. Criamos a variável e atribuímos valor a ela, mas nunca a utilizamos. Para isso, podemos excluir a mensagem declarando a idade e faremos o print com base apenas na variável. Colocaremos entre aspas e em vermelho por ser uma string.

```Dart
void main() {
    int idade = 26;
    print("idade");
}
```

Executando no terminal, o que nos será devolvida será a palavra "idade". Entretanto, não queríamos que aparecesse a idade literalmente, e sim o valor da variável. retiraremos as aspas, fazendo o print da variável print(idade).

Fazendo a execução novamente, aparecerá o valor "26" no terminal, pois o valor da variável idade mudou. Mas como podemos fazer para imprimir o valor naquela frase que tínhamos escrito?

O Dart apresenta facilita bastante nesse aspecto com relação a outras linguagens de programação, pois ele permite escrever a variável que queremos diretamente dentro de uma string. Se colocarmos $idadeo Dart entenderá que não esperamos a palavra "idade" e sim a variável.

```Dart
void main() {
    int idade = 26;
    print("Eu tenho $idade anos.");
}
```

Vamos salvar e executar o código e desta vez aparecerá a mensagem "Eu tenho 26 anos" no terminal. Podemos modificar o número para "27" também e utilizar o código daqui a 2 anos. Ao mesmo tempo, seria mais podemos usar operações matemáticas.

Vamos supor que numa família, a idade de um dos filhos é 25 anos. A do irmão, a idade do primeiro mais 2 anos, ou seja, dois anos mais velho. A idade do avô é igual a do primeiro rapaz mais a idade do irmão vezes 3, então são 3 vezes mais anos do que ambos os irmãos.

Para resolver esse problema, o valor da primeira idade será 25 anos. Criaremos a segunda variável, a idade idade do irmão 2 anos mais velho idade_irmao. Atribuiremos o valor idade + 2. Nós sabemos que o resultado da soma de 25 + 2 é 27, mas o programa ainda não. Quanto a idade_avo, será (idade + 2) * 3. Os parênteses serão necessários porque, assim como nas operações matemáticas, é efetuada primeiro a multiplicação, e devemos fazer a soma dentro dos parênteses primeiro. Por fim, imprimiremos as 3 idades.

```Dart
void main() {
    int idade = 25;
    int idade_irmao = idade + 2;
    int idade_avo = (idade + 2) * 3;
    print("Eu tenho $idade anos.");
    print("Meu irmao tem $idade_irmao anos.");
    print("Meu avo tem $idade_avo anos.");

}
```

Vamos salvar. Dessa vez teremos 3 variáveis. Vamos executar esse programa. Veremos a mensagem:

Eu tenho 25 anos.

Meu irmao tem 27 anos.

Meu avo tem 156 anos.

### Criando variáveis numéricas

Rafael precisa criar um programa capaz de fazer cálculos baseados na quantidade de dias que possuem em um ano, desconsiderando anos bissextos.

Quais das opções abaixo vão criar uma variável e atribuir a ela a quantidade de dias que um ano possui?

- **int dias = 365;**
  - ***Correto! A criação e atribuição de um valor a uma variável pode ser realizada na mesma linha, lembrando sempre terminar o comando com ;.***
- int dias dias = 365;
- void dias = 365;
- diasAno = 365;
- **int dias; dias = 365;**
  - ***Correto! A criação de uma variável pode ser em uma linha diferente da sua atribuição da, portanto, não é necessário atribuir um valor a uma variável na hora de sua criação.***

### Reais

Vamos continuar falando sobre números, mas agora falaremos sobre números com partes fracionais.

No programa que fizemos anteriormente, vimos os números inteiros, como 25,27 e 156. Criaremos um novo arquivo para trabalharmos com números reais. Vamos chamá-lo de "testaVariaveisReais.dart". Escreveremos nele a estrutura básica de um programa em Dart, void main().

Quando estivermos digitnado no Visual Studio, em diversos momentos surgirá uma janela com uma lista sugerindo o que podemos querer escrever, consequência de termos instalado a extensão do Dart. Digitando "prin...", por exemplo, nem precisaremos terminar de escrever a palavra e será sugerido a função print() como primeira opção. Pressionando o "Tab", a IDE colocará print(object) no código para nós, mesmo sem precisar terminar de escrever a palavra. Teremos que apagar o conteúdo dos parênteses.

Colocaremos aspas dentro de print() e completaremos com a mensagem Meu salário é de 1250.50". Devemos lembrar semore de colocar ponto e vírgula ao final de cada frase para o código funcionar.

```Dart
void main() {
    print("Meu salário é de 1250.50");
}
```

Vamos para o terminal e executaremos para saber se estará tudo certo. Digitaremos dart TestaVariaveisReais.dart, vamos rodar e será impressa a mensagem "Meu salário é de 1250.50".

Da mesma forma que tentamos escrever o programa anterior de forma mais dinâmica, tentaremos usar uma variável para poder alterar esse valor, já que daqui a um tempo o salário poderá mudar. Criaremos uma variáriável int para armazenar o salário.

```Dart
void main() {
    int salario = 1250.50;
    print("Meu salário é de 1250.50");
}
```

Vamos salvar e executar e veremos o erro gerado pela utilização do tipo errado. Haverá um texto em vermelho no terminal nos alertando sobre o erro de que um valor do tipo double não pode ser atribuído a uma variável do tipo int, em Inglês. Isso significa que o tipo que guarda valores inteiros não poderá guardar o número "1250.50", pois ele tem casas decimais.

Resolveremos isso usando outro tipo de variável, o tipodouble, feito especificamente para guardar um número inteiro com sua parte fracionada.

```Dart
void main() {
    double salario = 1250.50;
    print("Meu salário é de 1250.50");
}
```

Nem precisávamos ter executado o código para ver aquele erro. Modificando o tipo no código para int novamente, devido a instalação da extensão do Dart no VS Code, o valor "1250.50" ficará sublinhado em vermelho e se passarmos o mouse por cima dele, estará lá a mesma mensagem de erro do terminal.

Mudaremos o valor no print() apenas para $salario para fazer a impressão.

```Dart
void main() {
    double salario = 1250.50;
    print("Meu salário é de $salario"); 
}
```

Salvaremos o código e vamos para o terminal executá-lo. Será impresso: "Meu salário é de 1250.5". O "0" não aparecera mais, mas só quer dizer que o Dart está tentando minimizar os caracteres usados.

Vamos supor que no ano que vem o valor do salário dobrará. Para fazer o cálculo do salário no ano seguinte, bastará fazer uma multiplicação por 2. Também podemos usar as variáveis do tipo double em operações matemáticas normais.

```Dart
void main() {
    double salario = 1250.50 * 2;
    print("Meu salário é de $salario"); 
}
```

Salvaremos e executaremos e teremos a impressão do novo salário de 2501.0. Como o "0.5 * 2" será igual a 1, sem sobrar nenhuma fração,o programa acrescentará o ponto e o zero depois do resultado para simbolizar que a variável é do tipo double, ou seja, um valor fracionado. '

Nas operações matemáticas, o tipo double geralmente só será utilizado quando precisarmos fazer uma divisão. Por exemplo, se fizermos int divisao = 5/2 não dará certo, pois estaremos utilizando um valor inteiro para dividir um valor inteiro por outro, e o resultado seria um número real. Nossa IDE apontaria o mesmo erro anterior, de que um valor do tipo double não pode ser atribuído a uma variável int. Portanto, bastará alterarmos o tipo da variável para double.

Poderíamos pensar em utilizar variáveis double sempre, mas isso ficaria pesado, pois double, do Inglês, significa duplo justamente porque esse tipo utilizará duas vezes mais memória do computador para armazenar esse número, mesmo que utilizemos a variável para armazenar um número pequeno, pois o contador utilizará sempre a mesma quantidade de memória. Então, sempre que pudermos, utilizaremos o int para representar os números que não precisam ser quebrados.

Podemos fazer outras operações matemáticas a partir de então na mesma linha e isso não será um problema.

```Dart
void main() {
    double salario = 1250.50 * 2;
    print("Meu salário é de $salario"); 

    double divisao = 5/2 * 3;
}
```

Falaremos sobre inferência de tipo, algo que existe em quase todas as linguagens de programação. Sabemos que "5/2" é "2.50". "2.50 * 4" seria 10, um número inteiro. Se fizermos double divisao = 5/2 e int resultado = divisao * 4, apesar do resultado dessa operação ser um número inteiro, como estamos utilizando um valor fracionado, o da divisão, independentemente de quais forem os outros valores e o resultado, será necessário tipar como double, pois valores double não podem ser guardados como ints. Por fim, imprimiremos sem o uso de aspas, pois queremos o resultado diretamente.

```Dart
void main() {
    double salario = 1250.50 * 2;
    print("Meu salário é de $salario"); 

    double divisao = 5/2 * 3;
    double resultado = divisao * 4;
    print(resultado);
}
```

De cabeça, já sabemos que o resultado será 10, mas queremos vê-lo impresso. No terminal, após salvar e executar o programa, obteremos "10.0".

### Identificando tipos

Larissa estava ajudando seu amigo Lucas em seu programa feito em Dart e observa o seguinte código:

  ??? primeiro_numero = 42;
  ??? segundo_numero = primeiro_numero / 4;
  ??? terceiro_numero = primeiro_numero * 2;
  ??? quarto_numero = terceiro_numero - segundo_numero;COPIAR CÓDIGO
Lucas não conseguiu de imediato identificar quais os tipos de variáveis que devem ser atribuídos no código. Mas Larissa imediatamente conseguiu enxergar quais são eles.

Qual das opções abaixo contém os tipos que farão esse programa executar sem problemas?

- A

```Dart
int primeiro_numero 
double segundo_numero 
double terceiro_numero 
String quarto_numero   
```

- B

```Dart
double primeiro_numero 
double segundo_numero 
int terceiro_numero 
double quarto_numero   
```

- C

```Dart
int primeiro_numero 
int segundo_numero 
int terceiro_numero 
int quarto_numero   
```

- D

```Dart
double primeiro_numero 
int segundo_numero 
double terceiro_numero 
int quarto_numero   
```

- **F**

```Dart
int primeiro_numero 
double segundo_numero 
int terceiro_numero 
double quarto_numero   
```

***Correto! Apenas a divisão entre dois tipos inteiros gera uma variável do tipo double, mas quando usamos uma variável do tipo double em qualquer operação matemática, o resultado será outro tipo double.***

### Strings

### Juntando Strings

### Misturando int e double

### Convertendo tipos

### Tipagem de variáveis

### Faça como eu fiz na aula

### O que aprendemos?

## Condicionais

### Condicional if

### Faça como eu fiz na aula

### Simplificando o if

### Categorizando altura

### Condicionais Booleanas

### Tipo booleano

### Lucro ou prejuízo

### Mais do if

### Vogais e consoantes

### Maior de três números

### O que aprendemos?

## Laços de repetição

### Repetições com o while

### Faça como eu fiz na aula

### Diferença entre do/while

### Diminuindo valores

### Repetições com o for

### Diferenças entre while e for

### Somando tudo

### Reduções de operações

### Repetições com repetições

### Fatoriais

### O break

### O comando switch

### Conclusão

### O que aprendemos?

## Congratulations!

You have completed your course. Share your success on social media or email.

That's all folks!!!
___