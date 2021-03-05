import React, { useCallback } from "react";
import { Alert, Button, Linking, StyleSheet, View, Image, } from "react-native";

import logo from '../../assets/logo.png'

const supportedURL = "http://favelacao.epizy.com/favelacao/frontend/pages/sobreJogo.php";

const unsupportedURL = "http://favelacao.epizy.com/favelacao/frontend/pages/sobreJogo.php";

const URLButton = ({ url, children }) => {
  const handlePress = useCallback(async () => {
    
    const supported = await Linking.canOpenURL(url);

    if (supported) {
      
      await Linking.openURL(url);
    } else {
      Alert.alert(`Não sei como abrir este URL: ${url}`);
    }
  }, [url]);

  return <Button title={children} onPress={handlePress} />;
};

const Sobre = () => {
  return (
    <View style={styles.container}>
      <Image style={styles.logo} source={logo} ></Image>
      
      <URLButton style={styles.button} url={supportedURL}>Saiba Mais</URLButton>
            
      
    </View>
  );
};

const styles = StyleSheet.create({
  container: { 
    flex : 1,
    backgroundColor : "#219EBC",
    alignItems: 'center',
    justifyContent: 'center',
  },
  
  logo: {
    width: 150,
    height: 80,
    marginRight: 20,
  },
  

});

export default Sobre;