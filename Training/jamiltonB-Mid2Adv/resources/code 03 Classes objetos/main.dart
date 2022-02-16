//Classe
class Casa {
  
  //Atributos
  String cor;
  
  //Métodos
  //void abrirJanela(int qtdJanelas){
  void abrirJanela(){
    print("Abrir janela da casa $cor ");
    //print("Janelas: $qtdJanelas ");
  }
  
  void abrirPorta(){
    print("Abrir porta da casa $cor ");
  }
  
  void abrirCasa(){
    this.abrirJanela();
    this.abrirPorta();
  }
  
}

class Usuario {
  
  String usuario;
  String senha;
  
  void autenticar(){
    
    //Recuperar de um banco de dados
    var usuario = "jamilton@gmail.com";
    var senha = "123456";
    
    if( this.usuario == usuario && this.senha == senha ){
      print("Usuário autenticado");
    }else{
      print("Usuário não autenticado");
    }
    
  }
  
}

void main() {
  
  Usuario usuario = Usuario();
  
  //Digitados pelo usuario do seu App
  usuario.usuario = "jamilton@gmail.com";
  usuario.senha = "12345";
  
  usuario.autenticar();
  
  /*
  Casa minhaCasa = Casa();
  minhaCasa.cor = "Amarela";
  //minhaCasa.abrirJanela();
  //minhaCasa.abrirPorta();
  minhaCasa.abrirCasa();
  
  
  
  /*
  Casa minhaCasa2 = Casa();
  minhaCasa2.cor = "Vermelha";
  minhaCasa2.abrirJanela(3);*/
  
  //print( minhaCasa.cor );*/
  
}