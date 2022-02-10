/*
 String exibirDados(String nome, {int idade, double altura} ){
  int novaIdade = idade ?? 0;
  double novaAltura = altura ?? 0;
  print("Olá $nome sua idade: $novaIdade sua altura: $novaAltura ");
}


String exibirDados(String nome, Function funcao){
  print("Olá $nome");
  funcao();
}*/
/*
void calcularBonus(){
  print("Bônus calculado");
}*/

abstract class Animal {
  
  String cor;
  
  Animal(this.cor);
  
  void dormir(){
    print("Dormir");
  }
  
  void correr(){
    print("Correr como um ");
  }
  
}

class Cao extends Animal {
  
  String corOrelha;
  
  Cao(String cor, this.corOrelha) : super(cor);
  
  void latir(){
    print("Latir");
  }
  
  @override
  void correr(){
    super.correr();
    print("cão");
  }
  
}

class Passaro extends Animal {
  
  String corBico;
  
  Passaro(String cor) : super(cor);
  
  void voar(){
    print("Voar");
  }
  
  @override
  void correr(){
    print("Correr como um passaro");
  }
  
}


/*
class Conta {
  
  double _saque = 0;
  
  double get saque {
    //ValidaçÕes
    
    return this._saque;
  }
  
  set saque(double saque){
    
    if( saque > 0 && saque <= 500 ){
      this._saque = saque;
    }
    
  }
  
}
*/

class Configuracoes {
  
  static String identificadorApp = "JLADS789789";
  
  static void configuracaoInicial(){
    print( "Executa configuracoes iniciais" );
  }
  
}

abstract class Presidenciavel {
  void participarEleicao();
}

class Cidadao {
  void direitosDeveres(){
    print("Todo cidadão tem direitos e deveres");
  }
}

class Obama extends Cidadao implements Presidenciavel {
  void participarEleicao(){
    print("Participar eleicão Estados Unidos");
  }
}

class Jamilton extends Cidadao {
  
}

class Usuario {
  
  String nome;
  int idade;
  
  Usuario(this.nome, this.idade);
  
}

void main() {
  
  /* Coleções - listas e mapas
   * */
  List<String> frutas = ["Morango", "Manga"];
  /*frutas.add("Melancia");
  frutas.insert(0, "Amora");
  frutas.removeAt(1);*/
  
  //print( frutas.contains("amora") );
  //print( frutas.length );
  
  /*List<Usuario> usuarios = List();

  usuarios.add( Usuario("Jamilton", 30) );
  usuarios.add( Usuario("José", 45) );
  usuarios.add( Usuario("Maria", 20) );
  
  for( Usuario usuario in usuarios ){
    print( "Nome: ${usuario.nome} idade: ${usuario.idade}" );
  }
  */
  
  //Chave -> valor
  Map<int, String> estados = Map();
  estados[10] = "São Paulo";
  estados[20] = "Minas Gerais";
  estados[30] = "Rio Janeiro";
  
  //print( estados );
  estados.forEach(
  	(chave, valor) => print("$chave - $valor")
  );
  
  /* Interface
   * */
  /*Obama obama = Obama();
  obama.participarEleicao();*/
  
  /* Modificadores static e final
   * */
  //Configuracoes config = Configuracoes();
  //Configuracoes.configuracaoInicial();
  //print(Configuracoes.identificadorApp);
  /*final Cao cao = Cao("Marrom", "Branca");
  print(cao.cor);*/
  
  /* Sobrescrita de métodos
   * */
  /*Cao cao = Cao("Marrom", "Branca");
  cao.correr();
  print(cao.cor);*/
  
  /* Classes abstratas
   * */
  /*Animal animal = Animal("Vermelho");
  print(animal.cor);*/

  
}