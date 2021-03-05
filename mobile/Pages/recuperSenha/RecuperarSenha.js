import React from 'react';
import { View, TextInput, Text, ImageBackground, TouchableOpacity, Modal, Button } from 'react-native';

import styles from './style';

function RecuperarSenha({navigation}) {  
   
  return (
    <View style={styles.fundoContainer}>   
    
      <View  style={styles.caixa}>
        <Text style={styles.titulo}>Recuperar Senha</Text>
        
        <Text  style={styles.corTextoBold}>Problemas para entrar?</Text>
        <Text style={styles.corTextoOne}>Digite a resposta da palavra secreta!</Text>
        <Text  style={styles.corTextoBlack}>Lembre-se: Primeira letra maiúscula e {"\n"} o restante minúscula</Text>
        
      <View style={styles.viewOne}>
        <Text style={styles.corText}>Email : </Text>
        <TextInput style={styles.input}>                
        </TextInput>
      </View>    
       
      <View style={styles.viewTwo}>
        <Text style={styles.corTextoBoldDesenho}>DICA: Desenho Preferido</Text>
        <TextInput style={styles.input} secureTextEntry={true}>
        </TextInput>
      </View>

       <TouchableOpacity 
       onPress={() =>{navigation.navigate('Modal')}}
        style={styles.button}>
          <Text style={styles.buttonText}>Enviar</Text>
       </TouchableOpacity>

       <Text>OU</Text>

        <TouchableOpacity onPress={()=>{navigation.navigate('Cadastro')}}>
            <Text  style={styles.corTextoOnee}>Criar uma nova conta </Text>
        </TouchableOpacity>

        <TouchableOpacity onPress={()=>{navigation.navigate('Login')}}>
            <Text style={styles.corTextoBlackk}> Voltar ao Login </Text>
        </TouchableOpacity>       
        
      </View >  

      



        
       
    </View>

    

      
        
      

        


      
    
  )
  
}

export default RecuperarSenha;