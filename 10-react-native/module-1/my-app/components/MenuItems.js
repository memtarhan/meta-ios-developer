import React from 'react';
import {View, Text, ScrollView, StyleSheet} from 'react-native';

const menuItemsToDisplay = [
    'Hummus \nMoutabal \nFalafel \nMarinated Olives \nKofta \nEggplant Salad \nLentil Burger \nSmoked Salmon \nKofta Burger \nTurkish Kebab \nFries \nButtered Rice \nBread Sticks \nPita Pocket \nLentil Soup \nGreek Salad \nRice Pilaf \nBaklava \nTartufo \nTiramisu \nPanna Cotta',
];

const MenuItems = () => {
    return (
        <View style={menuStyles.container}>
            <ScrollView
                horizontal={false}
                indicatorStyle={'white'}
                style={menuStyles.innerContainer}>
                <Text style={menuStyles.headerText}>View Menu</Text>
                <Text style={menuStyles.itemText}>{menuItemsToDisplay[0]}</Text>
            </ScrollView>
        </View>
    );
};

const menuStyles = StyleSheet.create({
    container: {
        flex: 0.75,
    },
    innerContainer: {
        paddingHorizontal: 40,
        paddingVertical: 40,
        backgroundColor: 'black',
    },
    headerText: {
        color: 'white',
        fontSize: 40,
        flexWrap: 'wrap',
    },
    itemText: {
        color: '#F4CE14',
        fontSize: 36,
    },
});

export default MenuItems;

