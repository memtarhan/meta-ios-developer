import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            ZStack {
                Circle()
                    .foregroundColor(Color.gray.opacity(0.2))
                Circle()
                    .scale(x: 0.75, y: 0.75)
                    .foregroundColor(Color.yellow.opacity(0.5))
                VStack {
                    Image(systemName: "leaf.fill")
                        .imageScale(.large)
                        .foregroundColor(Color.green)
                    Text("Hello, nature!")
                    HStack {
                        Button("One") {}
                        Button("Two") {}
                    }
                }
            }
            .padding()
            
            ZStack(alignment: .leading) {
                Circle()
                    .foregroundColor(Color.gray.opacity(0.2))
                Circle()
                    .scale(x: 0.75, y: 0.75)
                    .foregroundColor(Color.yellow.opacity(0.5))
                VStack {
                    Image(systemName: "leaf.fill")
                        .imageScale(.large)
                        .foregroundColor(Color.green)
                    Spacer()
                    Text("Hello, nature!")
                    HStack(spacing: 20) {
                        Button("One") {}
                        Button("Two") {}
                    }
                }
            }
            .padding()
        }
        .padding()
    }
}
