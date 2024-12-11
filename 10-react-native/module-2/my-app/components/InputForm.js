import React, {useState} from 'react';
import {Alert, ScrollView, StyleSheet, Text, TextInput} from 'react-native';

/*
------ placeholder

As the name suggests, this is the placeholder string displayed before the user enters anything into the text input box.
By default, this will be empty.


------ multiline

The multiline prop is Boolean; when set to true, the text input can be multiple lines. By default, it is set to false,
and all the text that cannot fit within a single line is truncated and not visible to the user.

------ maxLength

As the name suggests, this prop limits the maximum number of characters that can be entered.

------ keyboardType
number-pad, decimal-pad, numeric, email-address, phone-pad, url, and other platform-specific keyboard types.
 */

/*
------- METHODS

-- onFocus

This call-back method is called when the text input is focused.

-- onBlur

This call-back method is called when the text input is blurred or loses focus

-- clearButtonMode

This is an exciting prop that is available only on iOS. It displays a clear button on the right side of the text view.
This is only supported on single-line text inputs and iOS.
The value is set to never by default and accepts other values such as always, unless-editing, and while-editing.
 */
const InputForm = () => {
    // declare the variables
    const [firstName, onChangeFirstName] = useState('');
    const [lastName, onChangeLastName] = useState('');
    const [message, onChangeMessage] = useState('');
    const [phoneNumber, onChangePhoneNumber] = useState('');

    return (
        <ScrollView style={styles.container}>
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
                placeholder={'First Name'}
                onFocus={() => {Alert.alert("First name is focussed")}}
                onBlur={() => {Alert.alert("First name is blurred")}}
                clearButtonMode={"always"}
            />
            <TextInput
                style={styles.input}
                value={lastName}
                onChangeText={onChangeLastName}
                placeholder={'Last Name'}
            />
            <TextInput
                style={styles.input}
                value={phoneNumber}
                onChangeText={onChangePhoneNumber}
                placeholder={'Phone Number'}
                keyboardType={"phone-pad"}
            />
            <TextInput
                style={styles.messageInput}
                value={message}
                onChangeText={onChangeMessage}
                placeholder={'Please leave feedback'}
                multiline={true}
                maxLength={250}
            />
        </ScrollView>
    );
};

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

export default InputForm;