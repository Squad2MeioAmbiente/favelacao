import { StyleSheet } from 'react-native';



const styles = StyleSheet.create({
 fundo: {
   width: "100%",
   height: "100%",   
 },
 container: {
   margin: 30,
   alignItems:"center",
   width: 300,
   height: 850,
   backgroundColor: "#fff",
   borderRadius: 20   
 },

 titulo: {
   marginTop: 25,
   fontSize: 30,
   color: "#219ebc",
   fontWeight: "bold",
 },
 margin: {
  marginTop: 20,
 },

 text: {
   margin: 8,
  padding: 0,
  fontSize: 15,
  color: "#219ebc",
  fontWeight: "bold"

 },
 input: {
   backgroundColor: "#f8f9fa",
   width: 200,
   margin: 2,
   borderWidth: 0.3,
  },

  inputEscolha: {
  backgroundColor: "#f8f9fa",
   width: 200,
   marginLeft: 40,   
   borderWidth: 0.3,
   
  }, 

 btn: {
  backgroundColor: "#ffb703",
  width: 150,
  height: 40,
  padding: 8,
  marginTop: 12,  
  borderRadius: 30,
  
 },
  salvar: {
   color: "#fff",
   fontWeight: "bold",
   fontSize: 18,
   textAlign: 'center',
 },

 box: {
  flexDirection: 'row',
  justifyContent: 'space-around',    
 },

 she: {
   width: 80,
   height: 80,
   borderRadius: 60,
   
 },
 boy:{
  width: 80,
  height: 80,
  borderRadius: 60
 },
 boyblond:{
  width:80,
  height: 80,
  borderRadius: 60
 }

});

export default styles