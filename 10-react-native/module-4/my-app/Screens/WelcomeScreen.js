import {
    ScrollView,
    View,
    Text,
    StyleSheet,
    Image,
    useColorScheme,
    Pressable,
} from 'react-native';

import * as React from 'react';

const WelcomeScreen = ({ navigation }) => {
    return (
        <View style={styles.container}>
            <Image
                style={styles.logo}
                source={require('../img/sample_image.jpg')}
            />
            <Text style={styles.title}>
                Little Lemon, your local Mediterranean Bistro
            </Text>
            <Pressable onPress={() => navigation.navigate('Menu')}>
                <Text style={styles.buttonText}>View Menu</Text>
            </Pressable>
        </View>
    );
};

const styles = StyleSheet.create({
    container: {
        flex: 1,
    },
    headerWrapper: {
        flexDirection: 'row',
        justifyContent: 'center',
        margin: 10,
    },
    headerText: {
        paddingRight: 10,
        paddingLeft: 20,
        paddingTop: 30,
        paddingBottom: 10,
        fontSize: 30,
        color: '#EDEFEE',
        textAlign: 'center',
    },
    regularText: {
        fontSize: 24,
        padding: 20,
        marginVertical: 8,
        color: '#EDEFEE',
        textAlign: 'center',
    },
    image: {
        width: 100,
        height: 100,
        borderRadius: 20,
    },
});

export default WelcomeScreen;