import React from 'react';
import { Text, View, StyleSheet, Image, TextInput, TouchableOpacity } from 'react-native';
import logo from '../assets/logo.png'

export default function Login ({navigation}){
    return(
        <View style={style.fundo}>
            <View style={style.div}>               
                <Image style={style.logo} source={logo} ></Image>

                <Text style={style.corTexto}>Email : </Text>
                <TextInput style={style.input}>
                
                </TextInput>

                <Text style={style.corTexto} >Senha : </Text>
                <TextInput style={style.input} secureTextEntry={true}>

                </TextInput>

                <TouchableOpacity style={style.button}>
                    <Text style={style.buttonText}>Próximo</Text>
                </TouchableOpacity>

                <Text style={style.senha}>Esqueceu a senha ? </Text>

               <TouchableOpacity onPress={()=>{navigation.navigate('Cadastro')}}>
                    <Text style={style.senha}>Ainda não tem uma conta ? Clique aqui! </Text>
               </TouchableOpacity>
                
            </View>
        </View>
    )
}
const style = StyleSheet.create({
    fundo: {
        flex : 1,
        backgroundColor : "#219EBC",
        alignItems: 'center',
        justifyContent: 'center',
        },
    div : {
        borderRadius : 25,
        backgroundColor : "white",
        width : "80%",
        height : 380,
        alignItems: 'center',

    },
    logo : {
        resizeMode : 'stretch',
        width : "65%",
        height : "30%",
        marginTop : 15
        
    },
    input : {
        width : "80%",
        borderStyle : "solid",
        borderColor : "black",
        borderWidth : 1,
        borderRadius : 10
    },
    corTexto :{
        color : "#219EBC",
        marginRight : "60%",
    },
    senha : {
        color : "#219EBC",
        fontSize : 12,
        paddingVertical : 10
    },
    button : {
        margin : 10,
        alignItems: 'center',
        borderRadius : 10,
        backgroundColor : "#FFB703",
        width : "80%",
        height : 25
    },
    buttonText:{
        color : "white",
        paddingTop : 2,
    }
    })

