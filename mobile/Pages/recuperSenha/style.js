import { StyleSheet } from 'react-native';



const styles = StyleSheet.create({
  fundoContainer: {
    flex : 1,
    backgroundColor : "#219EBC",
    alignItems: 'center',
    justifyContent: 'center',
    position: 'relative'
    },

  caixa: {
    borderRadius : 25,
    backgroundColor : "white",
    width : "90%",
    height : 420,
    alignItems: 'center',

},

 titulo: {
  marginTop: 25,
  fontSize: 30,
  color: "#219ebc",
  fontWeight: "bold",
  marginLeft: 10,
  textAlign: "center" 
},

corTextoOne :{
  color : "#219EBC",
  textAlign: "center",
  fontSize: 12,  
},

corText :{
  color : "#219EBC",  
  marginLeft: 10,
},

corTextoBold:{
  marginTop: 20,
  textAlign: "center",
  color : "#219EBC",
  fontWeight: "bold",
  fontSize: 15, 
},

corTextoBlack:{ 
  fontSize: 12, 
  textAlign: "center", 
},

corTextoBoldDesenho:{
  color : "#219EBC",
  fontWeight: "bold",
  marginLeft: 10,
},

viewOne:{
  marginTop: 32,
  
},

viewTwo:{
  marginTop: 10,
  
},

 input : {
  height : 25,
  width : "72vw",
  borderStyle : "solid",
  borderColor : "black",
  borderWidth : 1,
  borderRadius : 5
},

senha : {
  color : "#219EBC",
  fontSize : 12,  
},

button : {
  margin : 8,
  alignItems: 'center',
  borderRadius : 5,
  backgroundColor : "#FFB703",
  width : "80%",
  height : 25
},

buttonText:{
  color : "white",
  paddingTop : 2,
},

corTextoOnee :{
  color : "#219EBC",
  textAlign: "center",
  fontSize: 12, 
  marginTop: 12,
},


corTextoBlackk:{ 
  fontSize: 12, 
  textAlign: "center",
  marginTop: 12,
},

modal: {
  position:  'absolute',
  top: 0,
  right: 0,
  left: 0,
  bottom: 0,
  flex: 1,
  backgroundColor: "rgb(179, 237, 255)",
  justifyContent: "center",
  alignItems: "center"
},

modalMenor: {
  borderRadius : 25,
  backgroundColor : "white",
  width : "70%",
  height : 300,
 
}
 

});

export default styles