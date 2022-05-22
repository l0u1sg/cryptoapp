import { StyleSheet, TextInput } from 'react-native';
import { Text, View } from '../components/Themed';
import React from 'react'

export default function TabTwoScreen() {

  const [text, setText] = React.useState('');
 
  return (
    <View style={styles.container}>
      <Text style={styles.title}>Settings</Text>
      <View style={styles.separator} lightColor="#eee" darkColor="rgba(255,255,255,0.1)" />
      <TextInput placeholder='XBackBones API Key' onChangeText={text => setText(text)}></TextInput>
    </View>
  );
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
    alignItems: 'center',
    justifyContent: 'center',
  },
  title: {
    fontSize: 20,
    fontWeight: 'bold',
  },
  separator: {
    marginVertical: 30,
    height: 1,
    width: '80%',
  },
});

