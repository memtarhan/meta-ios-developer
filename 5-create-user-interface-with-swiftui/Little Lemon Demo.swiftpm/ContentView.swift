import SwiftUI

struct ContentView: View {
//    @State var showLogo = true
//    @ObservedObject var myClass = MyClass()

    var body: some View {
        let sophisticatedString = try! AttributedString(markdown: "Sign up to our Newsletter and get **30%** off!")

        @State var inputValue = ""
        @State var name = ""

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
                    .fixedSize(horizontal: false, vertical: true)
            }
            Spacer()
            
            VStack {
                TextField("Type Your Name", text: $inputValue)
                    .textFieldStyle(.roundedBorder)
            }
            .padding()

            Form {
                Text("Your name is ")
                TextField("Enter your name", text: $name)
            }

            Spacer()

            VStack {
                Label("Lightning", systemImage: "bolt.fill")
            }
        }
    }
}
