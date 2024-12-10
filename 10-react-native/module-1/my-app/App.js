import {StatusBar} from 'expo-status-bar';
import {StyleSheet, Text, View} from 'react-native';
import LittleLemonHeader from "./components/LittleLemonHeader";
import LittleLemonFooter from "./components/LittleLemonFooter";

export default function App() {
    return (
        <>
            <View style={{flex: 1, backgroundColor: '#495E57'}}>
                <LittleLemonHeader/>
            </View>
            <View style={{backgroundColor: '#495E57'}}>
                <LittleLemonFooter/>
            </View>
        </>
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
