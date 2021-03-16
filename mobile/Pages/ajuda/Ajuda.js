import React from 'react';
import { View, TextInput, Text, Image, TouchableOpacity, Button, StyleSheet, ScrollView, Linking } from 'react-native';

import ImageVideo from '../../assets/videoImg.jpeg'


function Ajuda({navigation}){
  return(
    <ScrollView > 
      <View style={styles.fundoWhite}>
        <Text style={styles.titulo}>Ajuda</Text>       
        <Image style={styles.ImageVideo} source={ImageVideo}></Image>
        <Text sytle={styles.btn}
            onPress={() => Linking.openURL('https://www.youtube.com/embed/i8aYhuTvEFo')}>
             Clique aqui e saiba como jogar
        </Text>
       
     
        
      </View>
      
      <View style={styles.fundoBlue}>
       <Text style={styles.tituloTwo}>Perguntas Frequentes
      </Text>       
       <View style={styles.container}>     

        <Text style={styles.tituloP}>
          A plataforma permite alterar informações cadastradas?
          </Text>
        <Text style={styles.respostas}>
          Sim. Na página PERFIL em EDITAR você poderá alterar todos os seus dados de usuário.
          </Text>  
        <Text style={styles.tituloP}>
          Preciso estar cadastrado(a) para jogar o FavelAção?
        </Text>
        <Text style={styles.respostas}>
        Sim. Caso já tenha cadastro, basta realizar login. Caso contrário, será necessário se cadastrar na plataforma e após realizar login, terá acesso ao jogo.
        </Text>
        <Text style={styles.tituloP}>
        Quantas vezes eu posso jogar o FavelAção?
          </Text>
        <Text style={styles.respostas}>
          Você poderá jogar quantas vezes quiser. 
        </Text>
        <Text style={styles.tituloP}>
        O jogo FavelAção é educativo?
          </Text>
        <Text style={styles.respostas}>
        Pode ser considerado educativo, voltado para a conscientização ambiental
        </Text>
        <Text style={styles.tituloP}>
        Para qual faixa etária o jogo FavelAção é indicado?
          </Text>
        <Text style={styles.respostas}>
        O jogo é indicado para crianças com idade entre 6 e 9 anos.
        Como posso ver as imagens que enviei durante as missões do jogo FavelAção? 
        Na página SOBRE O JOGO você encontrará todas as imagens enviadas ao longo das missões.
        </Text>
        <Text style={styles.tituloP}>
          Tenho uma sugestão ou dúvida sobre a plataforma e/ou sobre o jogo FavelAção, como posso comunicá-la?
          
          </Text>
          <Text style={styles.respostas}>
          No menu CONTATO você poderá deixar sua mensagem que será analisada por nossa equipe. Ou também pode entrar em contato pelo linkedin dos desenvolvedores, disponíveis na página QUEM SOMOS.
          </Text>
        
        </View>
      
         
      </View>

   </ScrollView>
    
  )
};




const styles = StyleSheet.create({
  fundoWhite: {     
      height:"60%",
      backgroundColor : "#fff",
      alignItems: 'center',
      justifyContent: 'center',
      },

  fundoBlue: {    
    height:"100%",
    backgroundColor : "#219EBC",
    alignItems: 'center',
    justifyContent: 'center',
  },

  titulo: {
    marginTop: 25,
    fontSize: 30,
    color: "#219ebc",
    fontWeight: "bold",
    marginLeft: 10,
    textAlign: "center" 
  },

 ImageVideo: {
  resizeMode : 'stretch',
  width : "65%",
  height : "50%",
  marginTop : 15

  }, 

  tituloTwo: {
    marginTop: 25,
    fontSize: 30,
    color: "#fff",
    fontWeight: "bold",
    marginLeft: 10,
    textAlign: "center" 
  },
  container: {
    width:"80%",
    height:"80%"
  },

  tituloP:{
   fontSize: 15,
    color: "#fff",
    padding: 8,
    fontWeight: 'bold'

  },
 respostas: {
   fontSize: 13,
   color: "#fff",  
   padding: 8, 

 },

 
  })


  export default Ajuda;