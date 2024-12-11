import * as React from 'react';
import {View, StyleSheet} from 'react-native';

import LittleLemonHeader from './components/LittleLemonHeader';
import LittleLemonFooter from './components/LittleLemonFooter';
import MenuItems from './components/MenuItemsSectioned';
import FeedbackForm from "./components/FeedbackForm";
import WelcomeScreen from "./WelcomeScreen";
import LoginScreen from "./LoginScreen";
import InputForm from "./components/InputForm";

export default function App() {
    return (
        <>
            <View style={styles.container}>
                <LittleLemonHeader/>
                <InputForm/>
            </View>
            <View style={styles.footerContainer}>
                <LittleLemonFooter/>
            </View>
        </>
    );
}

const styles = StyleSheet.create({
    container: {
        flex: 1,
        backgroundColor: '#333333',
    },
    footerContainer: {backgroundColor: '#333333'},
});