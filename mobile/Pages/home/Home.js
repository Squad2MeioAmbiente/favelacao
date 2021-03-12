import React from 'react';
import { Text,  ScrollView,View, ImageBackground,TouchableOpacity, Button} from 'react-native';
import styles from './style';
import Fundo from '../../assets/homepage.png';




function Home({navigation}){ 
   
  return (
    <View style={styles.caixa}>     
     
      <ImageBackground source={Fundo} style={styles.fundo}>
        
        <View> 

          <TouchableOpacity style={styles.btn} onPress={()=>{navigation.navigate('Login')}}>
              <Text style={styles.texto}>JOGAR</Text>
          </TouchableOpacity>
                  
          

        </View>
        
      </ImageBackground>
   
    </View>
  )
  
}
export default Home;