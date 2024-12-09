import SwiftUI

struct FrameView: View {
    var image: CGImage?
    private let label = Text("frame")
    @State private var classifier = Classifier()

    var body: some View {
        ZStack {
            if let image = image {
                ZStack {
                    Image(image, scale: 1.0, orientation: .up, label: label)
                        .onChange(of: image) { oldValue, newValue in
                            classifier.detect(ciImage: CIImage(cgImage: image))
                        }
                }
            } else {
                Color.black
            }
            VStack {
                Text(classifier.results ?? "")
                    .padding()
                    .background(Color.black.gradient)
                    .foregroundStyle(.white)
                    .cornerRadius(10)
            }
            .padding(.top, 400)
        }
    }
}

struct FrameView_Previews: PreviewProvider {
    static var previews: some View {
        FrameView()
    }
}
