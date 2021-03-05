import React from 'react';
import { View, TextInput, Text, ImageBackground, TouchableOpacity, Image } from 'react-native';
import styles from './style';
import Icon from 'react-native-vector-icons/Ionicons';

import She from '../../assets/she.png';



  function Perfil({navigation}) {
   
  return (
    <View style={styles.fundoContainer}>   
    
      <View  style={styles.caixaPerfil}>
          <Text style={styles.titulo}>Perfil</Text>
        
          <View style={styles.imgBox}>
            <Image source={She} style={styles.she}/>
          </View>
          <Text style={styles.nomeJogador}>Anna</Text>
        

        <View style={styles.caixas}>
          <View style={styles.caixaMedalhas}>       
              <Text style={styles.texto}>Nível</Text>
              <Text style={styles.numbers}>2</Text>
            </View>
            
            <View style={styles.caixaMedalhas}>
              <Text style={styles.texto}>Medalhas Conquistadas</Text>
              <Text style={styles.numbers}>8</Text>
            </View>

            <View style={styles.caixaMedalhas}>
              <Text style={styles.texto}>Colocação no Ranking</Text>
              <Text style={styles.numbers}>5°</Text>
          </View> 
        </View>
          
        <TouchableOpacity style={styles.btn} 
          onPress={()=> navigation.navigate('Login')}>
          <Text style={styles.btnText}>Salvar</Text>
        </TouchableOpacity>

        <Icon 
        style={styles.icon} 
        name="trash-sharp" 
        size={20}
        color={"red"} 
        />
          

        

      </View>
      
      
    </View>
  )
  
}

export default Perfil;