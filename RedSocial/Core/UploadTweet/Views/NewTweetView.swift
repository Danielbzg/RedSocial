//
//  NewTweetView.swift
//  RedSocial
//
//  Created by Daniel Boza García on 17/9/23.
//

import SwiftUI

struct NewTweetView: View {
    @State private var caption = ""
    @Environment(\.presentationMode) var presentationMode

    var body: some View {
        VStack{
            HStack {
                Button {
                    print("Dismiss")
                    presentationMode.wrappedValue.dismiss()
                } label: {
                    Text("Cancel")
                        .foregroundColor(Color(.systemBlue))
                }

                Spacer()

                Button {
                    print("Tweet")
                } label: {
                    Text("Tweet")
                        .bold()
                        .padding(.horizontal)
                        .padding(.vertical, 8)
                        .background(Color(.systemBlue))
                        .foregroundColor(.white)
                        .clipShape(Capsule())
                }
            }
            .padding()

            HStack(alignment: .top) {
                Circle()
                    .frame(width: 64, height: 64)

                TextArea("What's happenning?", text: $caption)
            }
            .padding()
        }
    }
}

struct NewTweetView_Previews: PreviewProvider {
    static var previews: some View {
        NewTweetView()
    }
}
