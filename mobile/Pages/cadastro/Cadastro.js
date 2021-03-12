import React, {useState} from 'react';
import { View, TextInput, ScrollView, Text, ImageBackground, TouchableOpacity, Image } from 'react-native';
import { CheckBox } from 'react-native-elements';
import {Picker} from '@react-native-picker/picker'


import styles from './style';

import Fundo from '../../assets/fundo.png'
import She from '../../assets/she.png'
import Boy from '../../assets/boy.png'
import Boyblond from '../../assets/boyblond.png'


function Cadastro({navigation}) {
   
  const [isSelected, setSelected] = useState(false)
  const [isSelected2, setSelected2] = useState(false)
  const [isSelected3, setSelected3] = useState(false)

  const [tipoDeSenha] = useState(
    ['Desenho Preferido','Super herói preferido', 'Nome de animal de estimação','Nome do seu melhor amigo']
    );
    const [categoriaSenha, setCategoriaSenha] = useState([])
 
   
  return (
    <ScrollView>
      
      <ImageBackground source={Fundo} style={styles.fundo}>
    
      <View style={styles.container}>

        <View>
         <Text style={styles.titulo}> Cadastro</Text>
        </View>
        
        <View style={styles.margin}>
          <Text style={styles.text} >Nome:</Text>
          <TextInput style={styles.input} />
         
        </View>
        <View>
          <Text style={styles.text}>Data de Nascimento:</Text>
          <TextInput style={styles.input} />
        </View>
        <View>
          <Text style={styles.text}>E-mail:</Text>
          <TextInput style={styles.input} />
        </View>
        <View>
          <Text style={styles.text}>Telefone:</Text>
          <TextInput style={styles.input} />
        </View>
        <View>
          <Text style={styles.text}>Senha:</Text>
          <TextInput style={styles.input} secureTextEntry={true} />
        </View>
        <View>
          <Text style={styles.text}>Confirme a senha:</Text>
          <TextInput style={styles.input}  secureTextEntry={true} />
        </View>
        <View>
          <Text  style={styles.text}>Escolha a categoria da palavra secreta:</Text>
          <Picker 
           style={styles.inputEscolha}
            selectedValue={categoriaSenha}                       
            onValueChange={(itemValue) => 
              setCategoriaSenha(itemValue)}
          >
            {
              tipoDeSenha.map(cr => {
                return <Picker.Item label={cr} value={cr} />
              })
            }
                 
          </Picker>
    </View>
        <View>
          <Text style={styles.text}>Resposta da palavra secreta:</Text>
          <TextInput 
          style={styles.input} 
          placeholder="Primeira letra maiúscula e o restante minúscula"
          />
        </View>
        <View>
          <Text style={styles.text}>Apelido:</Text>
          <TextInput style={styles.input} label={"Primeira Letra maiúscula e o restante minúscula"}/>
        </View>
        <View>
          <Text style={styles.text}>Apelido:</Text>
          <TextInput style={styles.input} />
        </View>
        <View>
          <Text style={styles.text}>Avatar:</Text>
        </View>
        
        <View style={styles.box}>              
            <Image source={She} style={styles.she}/>

            <CheckBox checkedIcon="check-square" uncheckedIcon="square-o" checkedColor="black"
              uncheckedColor="black" checked={isSelected}
              onPress={()=> {setSelected(!isSelected), setSelected2(false), setSelected3(false)}}
            />        
          
            <Image source={Boy} style={styles.boy}/>

            <CheckBox checkedIcon="check-square" uncheckedIcon="square-o" checkedColor="black"
              uncheckedColor="black" checked={isSelected2}
              onPress={()=> {setSelected2(!isSelected2), setSelected(false), setSelected3(false) }}
            />  


            <Image source={Boyblond} style={styles.boyblond}/>

            <CheckBox checkedIcon="check-square" uncheckedIcon="square-o" checkedColor="black"
              uncheckedColor="black" checked={isSelected3}
              onPress={()=> {setSelected3(!isSelected3),setSelected(false), setSelected2(false)}}
            />         
            
        
        </View>

        <TouchableOpacity style={styles.btn} onPress={()=>{navigation.navigate('Game')}}>
            <Text style={styles.salvar}>Salvar</Text>          
        </TouchableOpacity>
        
        


      </View>
      </ImageBackground>
    </ScrollView>
  )
  
}

export default Cadastro;