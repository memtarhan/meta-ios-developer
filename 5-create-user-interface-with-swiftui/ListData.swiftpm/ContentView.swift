import SwiftUI

// MARK: SwiftUI view can have max of 10 views inside.

struct ContentView: View {
    let images = ["camera.macro", "carrot.fill", "ladybug.fill"]

    var body: some View {
        NavigationView {
            VStack {
                ScrollView {
                    Image(systemName: "leaf.fill")
                    Image(systemName: "drop.fill")
                    Image(systemName: "laurel.leading")
                }

                Spacer()

                List {
                    Image(systemName: "leaf.fill")
                    Image(systemName: "drop.fill")
                    Image(systemName: "laurel.leading")
                }
                .listStyle(.grouped)

                Spacer()

                List {
                    Section(header: NatureHeaderView()) {
                        Text("This is all about nature")
                            .font(.headline)
                    }

                    ForEach(images, id: \.self) { image in
                        NavigationLink(destination: NatureHeaderView()) {
                            Image(systemName: image)
                                .font(.largeTitle)
                        }
                    }
                    .foregroundColor(.accentColor)

                    Section(footer: NatureFooterView()) {
                        Text("Did you enjoy it?")
                    }
                }
            }
        }
    }
}

struct NatureHeaderView: View {
    var body: some View {
        HStack {
            Image(systemName: "leaf")
            Text("NATURE")
                .font(.headline.uppercaseSmallCaps())
            Image(systemName: "leaf")
        }
    }
}

struct NatureFooterView: View {
    var body: some View {
        HStack {
            Image(systemName: "leaf.fill")
            Text("NATURE")
                .font(.headline.uppercaseSmallCaps())
            Image(systemName: "leaf.fill")
        }
        .foregroundColor(.green)
    }
}
