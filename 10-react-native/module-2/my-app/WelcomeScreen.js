import {
    ScrollView,
    Image,
    StyleSheet,
    Text,
    useColorScheme,
} from 'react-native';

const Welcome = () => {
    const colorScheme = useColorScheme();

    return (
        <ScrollView
            style={[
                styles.container,
                colorScheme === 'light'
                    ? {backgroundColor: '#fff'}
                    : {backgroundColor: '#333333'},
            ]}>
            {' '}
            <Image
                style={styles.logo}
                source={require('./img/sample_image.jpg')}
                resizeMode="center"
                accessible={true}
                accessibilityLabel={'Little Lemon Logo'}
            />
            <Text style={styles.regular}>Color Scheme: {colorScheme}{' '} </Text>
        </ScrollView>
    );
};

const styles = StyleSheet.create({
    logo: {
        height: 100,
        width: 300,
    },
    container: {
        flex: 1,
        padding: 24,
        marginTop: 25,
    },
    regular: {
        fontSize: 18,
        textAlign: 'center',
    },
});

export default Welcome;
