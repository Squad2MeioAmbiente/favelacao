import React from 'react';
import { Text, View, ImageBackground, StyleSheet, Image, TouchableOpacity } from 'react-native';
import Icon from 'react-native-vector-icons/Ionicons';

import backfavela from '../assets/backfavela.jpg'
import helio from '../assets/helio.png'

export default function Game({navigation}){
    return(
        <View style={style.view}>
            <ImageBackground source={backfavela}style={style.container}imageStyle={style.image}>
                
                <View style={style.personagem}>
                    <Image source={helio}
                        style={style.helio}
                    ></Image>
                </View>

                <Text style={style.talk}>
                    Oi tudo bem? Prazer sou o Hélio!
                </Text>

            <TouchableOpacity style={style.button}>
                <Text style= {{color : 'white'}}>Próximo</Text>
            </TouchableOpacity>

            <TouchableOpacity style={style.buttonHome} onPress={()=>{navigation.navigate('Home')}} >
            <Icon name="home" size={25} color={"#023047"} />
            </TouchableOpacity>

            </ImageBackground>
            
        </View>
    )
}
const style = StyleSheet.create({
    container: {
      flex: 1,
        },
    image : {
        flex : 1,
        resizeMode : 'cover'
    },
    view : {
        flex : 1
    },
    talk : {
        backgroundColor : "white",
        height: "18%",
        width : "100%",
        position : "absolute",
        bottom : 0,
        borderRadius : 25,
        fontSize : 20,
        padding : 20
    },
    button : {
        backgroundColor : "#219EBC",
        width : "20%",
        height : "5%",
        position : "absolute",
        bottom : 15,
        marginLeft : "70%",
        alignItems: 'center',
        justifyContent: 'center',
        borderRadius : 10,        
    },
    buttonHome :{
        width : "20%",
        height : "5%",
        position : "absolute",
        bottom : "89%",
        marginLeft : "70%",
        alignItems: 'center',
        justifyContent: 'center',
        borderRadius : 10,
    },
    personagem :{
        position : "absolute",
        bottom : 0,
        height : '60%',
        width : '100%',
        paddingLeft : '40%',
               
    },
    helio :{
        flex : 1,
        resizeMode : 'stretch',
        width : '100%'        
    }
  });