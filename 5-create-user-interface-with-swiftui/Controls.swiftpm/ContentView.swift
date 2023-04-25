import SwiftUI

/*
 // Controls in SwiftUI

 - Buttons
 - Toggle
 - Steppers
 - Sliders
 - ProgressView
 - DatePicker
 - Labels

 */

struct ContentView: View {
    @State private var isShowing = true // toggle state
    @State private var value = 1
    @State private var size: CGFloat = 0.1
    @State private var progress = 0.5
    @State private var selectedDate = Date()
    
    var dateClosedRange: ClosedRange<Date> {
        let min = Calendar.current.date(byAdding: .day, value: -1, to: Date())!
        let max = Calendar.current.date(byAdding: .day, value: 1, to: Date())!
        return min...max
    }
    
    var body: some View {
        VStack {
            Button(
                action: {
                    // action
                }, label: {
                    Text("Press me")
                }
            )

            Toggle(isOn: $isShowing) {
                Text("Switch")
            }

            HStack {
                Text("Current value: \(value)")
                Stepper("", value: $value, in: 1 ... 20)
            }
            .padding()

            VStack {
                Text("Font size")
                    .font(.system(size: size * 50))
                Slider(value: $size)
            }
            .padding()

            VStack {
                ProgressView(value: progress)
                Button("Loading") {
                    progress += 0.05
                }
            }
            
            Form {
                Section {
                    DatePicker(selection: $selectedDate, in: dateClosedRange, displayedComponents: .date) {
                        Text("Due Date")
                    }
                }
            }
            
            Label("Website", systemImage: "leaf.fill")
                .labelStyle(.titleAndIcon)
        }
        .padding()
    }
}
