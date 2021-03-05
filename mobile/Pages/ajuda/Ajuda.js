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
            onPress={() => Linking.openURL('https://www.youtube.com/watch?v=Em9jwmqPpi0')}>
             Clique aqui e saiba como jogar
        </Text>
       
     
        
      </View>
      
      <View style={styles.fundoBlue}>
       <Text style={styles.tituloTwo}>Perguntas Frequentes</Text> 
       <View style={styles.container}>     

        <Text style={styles.tituloP}>Lorem Ipsum?</Text>
        <Text style={styles.respostas}>Lorem ipsum dolor sit, amet consectetur adipisicing elit. Amet commodi, dignissimos ipsum veritatis eos corporis libero molestiae possimus sit dolorum exercitationem cum quibusdam beatae debitis voluptatem mollitia accusantium vel cupiditate?</Text>  
        <Text style={styles.tituloP}>Lorem Ipsum?</Text>
        <Text style={styles.respostas}>
          Lorem ipsum dolor sit, amet consectetur adipisicing elit. Amet commodi, dignissimos ipsum veritatis eos corporis libero molestiae possimus sit dolorum exercitationem cum quibusdam beatae debitis voluptatem mollitia accusantium vel cupiditate?
        </Text>
        <Text style={styles.tituloP}>Lorem Ipsum?</Text>
        <Text style={styles.respostas}>
          Lorem ipsum dolor sit, amet consectetur adipisicing elit. Amet commodi, dignissimos ipsum veritatis eos corporis libero molestiae possimus sit dolorum exercitationem cum quibusdam beatae debitis voluptatem mollitia accusantium vel cupiditate?
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

 },

 
  })


  export default Ajuda;