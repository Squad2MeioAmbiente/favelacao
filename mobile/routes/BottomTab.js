import React, {useState} from 'react';

import { createMaterialBottomTabNavigator } from '@react-navigation/material-bottom-tabs';
import Icon from 'react-native-vector-icons/Ionicons';


import Game from '../Pages/Game';
import Login from '../Pages/Login';
import Home from '../Pages/home/Home'
import Perfil from '../Pages/perfil/Perfil';
import Ajuda from '../Pages/ajuda/Ajuda';
import Sobre from '../Pages/sobre/Sobre';


const Tab = createMaterialBottomTabNavigator();

function BottomTab (){
  return (
    <Tab.Navigator initialRouteName="Home" tabBarOptions={{labelStyles: {color:"#023047"}}}
    
    inactiveColor="rgba(255, 255, 255, 0.5)"
    activeColor="#023047"
    barStyle = { { backgroundColor : '#fff' } }  
     >

    <Tab.Screen name="Home" component={Home} 
    options={{
      tabBarLabel: 'Home',
      tabBarIcon: ({color}) => (
        <Icon name="home" size={25} color={"#023047"} />
      )
    }} />

    <Tab.Screen name="Sobre" component={Sobre}
        options={{
          tabBarLabel: 'Sobre',
          tabBarIcon: ({color}) => (
            <Icon name="book" size={25} color={"#023047"} />
          )
        }}
      />    

      <Tab.Screen name="Ajuda" component={Ajuda}
     options={{
      tabBarLabel: 'Ajuda',
      tabBarIcon: ({color}) => (
        <Icon name="help" size={25} color={"#023047"} />
      )
    }} 
    />  

    <Tab.Screen name="Game" component={Game}
    options={{
      tabBarLabel: 'Play',
      tabBarIcon: ({color}) => (
        <Icon name="play" size={25} color={"#023047"} />
      )
    }}
    />
   
    
    <Tab.Screen name="Perfil" component={Perfil}
     options={{
      tabBarLabel: 'Perfil',
      tabBarIcon: ({color}) => (
        <Icon name="person" size={25} color={"#023047"} />
      )
    }} />

    

     
    
  </Tab.Navigator>
  )
}

export default BottomTab;