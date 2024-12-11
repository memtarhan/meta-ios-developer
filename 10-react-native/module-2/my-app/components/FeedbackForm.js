import React, {useState} from 'react';
import {ScrollView, StyleSheet, Text, TextInput} from 'react-native';
import { KeyboardAvoidingView } from 'react-native';
import { Platform } from 'react-native';
/*
KeyboardAvoidingView

Another handy component for managing the virtual keyboard is the KeyboardAvoidingView. As the name suggests,
it is a component that automatically adjusts its height, position, or bottom padding based on the keyboard’s height
so that it remains visible. In contrast, the virtual keyboard is still displayed
 */

const FeedbackForm = () => {
    const [firstName, onChangeFirstName] = useState('');
    const [lastName, onChangeLastName] = useState('');
    const [message, onChangeMessage] = useState('');
    const [phoneNumber, onChangePhoneNumber] = useState('');

    return (
        <KeyboardAvoidingView
            style={styles.container}
            behavior={Platform.OS === 'ios' ? 'padding' : 'height'}>
            <ScrollView keyboardDismissMode="on-drag">
                <Text style={styles.headingSection}>
                    How was your visit to Little Lemon?
                </Text>
                <Text style={styles.infoSection}>
                    Little Lemon is a charming neighborhood bistro that serves simple food
                    and classic cocktails in a lively but casual environment. We would love
                    to hear your experience with us!
                </Text>
                <TextInput
                    style={styles.input}
                    value={firstName}
                    onChangeText={onChangeFirstName}
                />
                <TextInput
                    style={styles.input}
                    value={lastName}
                    onChangeText={onChangeLastName}
                />
                <TextInput
                    style={styles.messageInput}
                    value={message}
                    onChangeText={onChangeMessage}
                />
            </ScrollView>
        </KeyboardAvoidingView>
    )
}

const styles = StyleSheet.create({
    container: {
        flex: 1,
    },
    input: {
        height: 40,
        margin: 12,
        borderWidth: 1,
        padding: 10,
        fontSize: 16,
        borderColor: 'EDEFEE',
        backgroundColor: '#F4CE14',
    },
    messageInput: {
        height: 100,
        margin: 12,
        borderWidth: 1,
        padding: 10,
        fontSize: 16,
        backgroundColor: '#F4CE14',
    },
    infoSection: {
        fontSize: 24,
        padding: 20,
        marginVertical: 8,
        color: '#EDEFEE',
        textAlign: 'center',
        backgroundColor: '#495E57',
    },
    headingSection: {
        fontSize: 28,
        padding: 20,
        marginVertical: 8,
        color: '#EDEFEE',
        textAlign: 'center',
        backgroundColor: '#495E57',
    },
});

export default FeedbackForm;