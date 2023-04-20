import SwiftUI

struct ContentView: View {
//    @State var showLogo = true
//    @ObservedObject var myClass = MyClass()

    @State var inputValue: String = ""
    @State var name: String = ""

    var body: some View {
        let sophisticatedString = try! AttributedString(markdown: "Sign up to our Newsletter and get **30%** off!")

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
                Text("Your name is \(name)")
                TextField("Enter your name", text: $name, onEditingChanged: { edited in
                    print("edited ? \(edited)")
                })
                .onChange(of: name, perform: { newValue in
                    print(newValue)
                })
                .onSubmit {
                    print("Submitted")
                }
                .padding()
            }

            Spacer()

            VStack {
                Label("Lightning", systemImage: "bolt.fill")
            }
        }
    }
}
