import {StatusBar} from 'expo-status-bar';
import {StyleSheet, Text, View} from 'react-native';
import LittleLemonHeader from "./components/LittleLemonHeader";

export default function App() {
    return (
        <View style={{flex: 1, backgroundColor: '#fff'}}>
            <LittleLemonHeader/>
        </View>
    );
}

const styles = StyleSheet.create({
    container: {
        flex: 1,
        backgroundColor: '#fff',
        alignItems: 'center',
        justifyContent: 'center',
    },
});
