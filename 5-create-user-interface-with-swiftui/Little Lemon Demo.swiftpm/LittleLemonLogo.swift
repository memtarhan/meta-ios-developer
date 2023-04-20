//
//  LittleLemonLogo.swift
//  Little Lemon Demo
//
//  Created by Mehmet Tarhan on 19/04/2023.
//

import SwiftUI

struct LittleLemonLogo: View {
//    @Binding var bindingVariable: Bool
     var myClass: MyClass
    
    var body: some View {
        VStack {
            Image("sunrise.circle.fill")
            Button {
                myClass.showLogo.toggle()
            } label: {
                Text("Toggle Logo Visibility")
                    .font(.title2)
            }

        }
    }
}

struct LittleLemonLogo_Previews: PreviewProvider {
    static var previews: some View {
        LittleLemonLogo(myClass: MyClass())
    }
}
