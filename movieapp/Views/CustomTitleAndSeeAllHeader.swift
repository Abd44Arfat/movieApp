import SwiftUI

struct CustomTitleView: View {
    var title: String

    var body: some View {
        HStack {
            Text(title)
                .font(.title2)
                .fontWeight(.medium)
                .foregroundColor(.black) // اللون الأسود

            Spacer()

            Button(action: {
                print("See All pressed for \(title)")
            }) {
                Text("See All")
                    .font(.subheadline)
                    .foregroundColor(.gray)
            }
        }
        .padding(.horizontal)
    }
}
