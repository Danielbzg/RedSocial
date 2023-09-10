//
//  TweetRowView.swift
//  RedSocial
//
//  Created by Daniel Boza García on 9/9/23.
//

import SwiftUI

struct TweetRowView: View {
    var body: some View {
        VStack(alignment: .leading) {
            HStack(alignment: .top, spacing: 12) {

                Circle()
                    .frame(width: 56, height: 56)
                    .foregroundColor(Color(.systemIndigo))

                //Información usuario y espacio del tweet
                VStack(alignment: .leading, spacing: 4) {
                    HStack{
                        Text("Nombre")
                            .font(.subheadline).bold()

                        Text("@Usuario")
                            .font(.caption)
                            .foregroundColor(.gray)
                    }

                    Text("Contenido interior y textual del tweet")
                        .font(.subheadline)
                        .multilineTextAlignment(.leading)
                }
            }
            
            Divider()

            //Botones de interacción con el tweet
            HStack(alignment: .center){
                Button {

                } label: {
                    Image(systemName: "bubble.left")
                        .font(.subheadline)
                }

                Spacer()

                Button {

                } label: {
                    Image(systemName: "arrow.2.squarepath")
                        .font(.subheadline)
                }
                Spacer()

                Button {

                } label: {
                    Image(systemName: "heart")
                        .font(.subheadline)
                }

                Spacer()

                Button {

                } label: {
                    Image(systemName: "bookmark")
                        .font(.subheadline)
                }
            }
            .padding(EdgeInsets(top: 2, leading: 5, bottom: 2, trailing: 5))
            .foregroundColor(.gray)

            Divider()
        }
        .padding()
    }
}

struct TweetRowView_Previews: PreviewProvider {
    static var previews: some View {
        TweetRowView()
    }
}
