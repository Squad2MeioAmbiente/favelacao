import React from 'react';
import { View, TextInput, Text, ImageBackground, TouchableOpacity, Button } from 'react-native';

import stylesModal from './modalStyle';


function Modal({navigation}){
  return(
    <View style={stylesModal.modal}> 
        <View style={stylesModal.modalMenor}>
        <Text  style={stylesModal.corTextoBold}>Digite a sua nova Senha</Text>
        <Text style={stylesModal.corTextOne}
        >Senha </Text>
        <TextInput style={stylesModal.input}
        secureTextEntry={true}>                
        </TextInput>
        <Text style={stylesModal.corText}>Confirme a sua Senha </Text>
        <TextInput style={stylesModal.input}
        secureTextEntry={true}>                
        </TextInput>
        <TouchableOpacity 
        onPress={() =>{navigation.navigate('Login')}}
        style={stylesModal.button}>
          <Text style={stylesModal.buttonText}>Salvar</Text>
       </TouchableOpacity>


        </View>
      </View>
  )
}

export default Modal;

