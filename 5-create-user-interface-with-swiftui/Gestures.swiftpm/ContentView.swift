import SwiftUI

struct ContentView: View {
    @State private var offset = CGSize.zero
    @State private var rotateAmount = Angle.zero
    @State private var rotateFinalAmount = Angle.zero
    @State private var magnificationAmount: CGFloat = 0.0
    @State private var magnificationFinalAmount: CGFloat = 1.0

    var body: some View {
        VStack(spacing: 64) {
//            DragGestureView(offset: $offset)
//            RotationGestureView(amount: $rotateAmount, finalAmount: $rotateFinalAmount)
            MagnificationGestureView(amount: $magnificationAmount, finalAmount: $magnificationFinalAmount)
        }
    }
}

struct DragGestureView: View {
    @Binding var offset: CGSize

    var body: some View {
        Image(systemName: "leaf")
            .font(.system(size: 120))
            .foregroundColor(.accentColor)
            .offset(offset)
            .gesture(
                DragGesture()
                    .onChanged({ gesture in
                        offset = gesture.translation
                    })
                    .onEnded({ gesture in
                        print(gesture)
                    })
            )
    }
}

struct RotationGestureView: View {
    @Binding var amount: Angle
    @Binding var finalAmount: Angle

    var body: some View {
        Image(systemName: "fish")
            .font(.system(size: 120))
            .foregroundColor(.accentColor)
            .rotationEffect(amount + finalAmount)
            .gesture(
                RotationGesture()
                    .onChanged { value in
                        amount = value
                    }
                    .onEnded { _ in
                        finalAmount += amount
                        amount = .zero
                    }
            )
    }
}

struct MagnificationGestureView: View {
    @Binding var amount: CGFloat
    @Binding var finalAmount: CGFloat

    var body: some View {
        Image(systemName: "fish")
            .font(.system(size: 120))
            .foregroundColor(.accentColor)
            .scaleEffect(amount + finalAmount)
            .gesture(
                MagnificationGesture()
                    .onChanged { value in
                        amount = value - 1
                    }
                    .onEnded { _ in
                        finalAmount += amount
                        amount = 0
                    }
            )
    }
}
