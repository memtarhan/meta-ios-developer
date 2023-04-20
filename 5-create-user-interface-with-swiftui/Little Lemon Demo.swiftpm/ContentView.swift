import SwiftUI

struct ContentView: View {
//    @State var showLogo = true
    @ObservedObject var myClass = MyClass()
    
    var body: some View {
        VStack {
            if myClass.showLogo {
                LittleLemonLogo(myClass: myClass)
            }
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
