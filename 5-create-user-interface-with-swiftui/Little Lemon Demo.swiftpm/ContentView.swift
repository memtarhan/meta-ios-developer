import SwiftUI

struct ContentView: View {
//    @State var showLogo = true
//    @ObservedObject var myClass = MyClass()

    var body: some View {
        let sophisticatedString = try! AttributedString(markdown: "Sign up to our Newsletter and get **30%** off!")

        @State var inputValue = ""

        VStack {
            VStack {
                Text("Subscribe Now")

                // Styling

                Text("Subscribe Now")
                    .font(.system(size: 36, weight: .light, design: .serif))
                    .italic()

                Text(sophisticatedString)
                    .font(.system(size: 36, weight: .thin, design: .serif))
                    .italic()
//                    .lineLimit(1)
            }
            Spacer()
            VStack {
                TextField("Type Your Name", text: $inputValue)
                    .textFieldStyle(.roundedBorder)
            }
            .padding()
        }
    }
}
