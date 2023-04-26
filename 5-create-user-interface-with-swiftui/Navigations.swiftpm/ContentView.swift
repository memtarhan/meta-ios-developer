import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            NavigationView {
                NavigationLink {
                    Text("Shared Up")
                } label: {
                    Text("Share")
                }
            }
            .tabItem({
                Label("Share", systemImage: "square.and.arrow.up")
            })

            NavigationView {
                NavigationLink {
                    Text("Shared Down")
                } label: {
                    Text("Contact")
                }
            }
            .tabItem({
                Label("Constact", systemImage: "square.and.arrow.down")
            })
        }
    }
}
