import { StyleSheet } from 'react-native';

const stylesModal = StyleSheet.create({
modal: {
  position:  'absolute',
  top: 0,
  right: 0,
  left: 0,
  bottom: 0,
  flex: 1,
  backgroundColor: "rgb(179, 237, 255 )",
  justifyContent: "center",
  alignItems: "center"
},

modalMenor: {
  borderRadius : 25,
  backgroundColor : "white",
  width : "70%",
  height : 300,
  display: "flex",
 
},

corTextoBold:{
  marginTop: 20,
  textAlign: "center",
  color : "#219EBC",
  fontWeight: "bold",
  fontSize: 15, 
},

corTextOne:{
  marginTop: 50,  
  color : "#219EBC",    
  textAlign: "center",
},

corText: {
  marginTop: 10,
  color : "#219EBC",    
  textAlign: "center",
},

input : {
  height : 25,
  width : "60%",
  borderStyle : "solid",
  borderColor : "black",
  borderWidth : 1,
  borderRadius : 5,
  marginLeft: "20%"
 
}, 

button:{
  margin : 8,
  alignItems: 'center',
  borderRadius : 5,
  backgroundColor : "#FFB703",
  width : "50%",
  height : 25,  
  marginLeft: "25%"
},

buttonText:{
  color : "white",
  paddingTop : 2,
}
});

export default stylesModal;