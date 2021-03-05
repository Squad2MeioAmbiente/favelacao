import { StyleSheet } from 'react-native';



const styles = StyleSheet.create({
  fundoContainer: {
    flex : 1,
    backgroundColor : "#219EBC",
    alignItems: 'center',
    justifyContent: 'center',
    },

 caixaPerfil : {
   marginTop: 50,
   margin: "10%",
   alignItems:"center",
   width: "80%",
   height: 450,
   backgroundColor: "#fff",
   borderRadius: 20   
 },

 titulo: {
  marginTop: 25,
  fontSize: 30,
  color: "#219ebc",
  fontWeight: "bold",
  marginLeft: 10,
  alignItems: "center",
  justifyContent: "center"  
},

 imgBox:{
   marginTop: 40, 
   backgroundColor: "#219ebc",   
   width: 80,
   height: 80,
   borderRadius: 60,  
 },

 she: {
  width: 80,
  height: 80,
  borderRadius: 60,   
},

 nomeJogador: {
   color: "#023047",
   fontWeight: "bold",
   fontSize: 25,
   marginTop: 15,
   marginLeft: 10,
   alignItems: "center",
   justifyContent: "center"   
 },

 caixas: {
  width: "100%",
  padding: 16,
  justifyContent: 'center',
  alignItems: "center"
 }, 
 
 caixaMedalhas: {   
  width: "80%",  
  flexDirection: 'row',
  justifyContent:'space-between',
  alignItems: "center",
   
 },

 texto: {    
  fontSize: 12,
  color: "#219ebc", 
 },

 numbers: {   
  fontSize: 12,
  color: "#ffb703",  
  justifyContent:'space-between',   
 },

 btn : {
  margin : 10,
  alignItems: 'center',
  borderRadius : 10,
  backgroundColor : "#FFB703",
  width : "80%",
  height : 25
},

btnText:{
  color : "white",
  paddingTop : 2,
},

icon: {
  margin: 50,
  marginEnd: "20%"
  
}

});

export default styles