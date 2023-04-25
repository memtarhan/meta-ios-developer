import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            VStack {
                Image(systemName: "leaf.fill")
                    //                .imageScale(.large)
                    .resizable()
                    .scaledToFit()
                    .foregroundColor(.accentColor)

                Image(systemName: "leaf.fill")
                    .resizable(resizingMode: .tile) // repeated
                    .foregroundColor(.accentColor)

                Image(systemName: "leaf.fill")
                    .font(.system(size: 100))
                    .frame(width: 200, height: 200, alignment: .center)
                    .foregroundColor(.accentColor)
                    .padding()
                    .background(.black)
                    .cornerRadius(20)
                
                // Grouping with Text
                HStack() {
                    Text(Image(systemName: "leaf")) +
                    Text("Leaf")
                }
            }
        }
        .padding()
    }
}
