import React, {useState} from 'react';
import { NavigationContainer } from '@react-navigation/native';
import { createStackNavigator } from '@react-navigation/stack';
import BottomTab from './BottomTab';

import Login from '../Pages/Login';
import Cadastro from '../Pages/cadastro/Cadastro';
import AlterarPerfil from '../Pages/alterar/AlterarPerfil';
import RecuperarSenha from '../Pages/recuperSenha/RecuperarSenha'
import Modal from '../Pages/recuperSenha/Modal'
const { Navigator, Screen } = createStackNavigator();


function Stack(){
  return(
    <NavigationContainer>
      <Navigator screenOptions={{headerShown:false}}>
        <Screen name="Home" component={BottomTab} />
        <Screen name="Login" component={Login} />
        <Screen  name="Cadastro" component={Cadastro} />
        <Screen  name="AlterarPerfil" component={AlterarPerfil} />
        <Screen  name="RecuperarSenha" component={RecuperarSenha} />
        <Screen name="Modal" component={Modal} />
      </Navigator>   
      
    </NavigationContainer>
  )
}

export default Stack;
