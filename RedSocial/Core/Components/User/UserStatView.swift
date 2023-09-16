//
//  UserStatView.swift
//  RedSocial
//
//  Created by Daniel Boza García on 16/9/23.
//

import SwiftUI

struct UserStatView: View {
    var body: some View {
        HStack(spacing: 24) {
            HStack(spacing: 4) {
                Text("807")
                    .font(.subheadline)
                    .bold()

                Text("Following")
                    .font(.caption)
                    .foregroundColor(.gray)
            }

            HStack(spacing: 4) {
                Text("6.9M")
                    .font(.subheadline)
                    .bold()

                Text("Followers")
                    .font(.caption)
                    .foregroundColor(.gray)
            }
        }
    }
}

struct UserStatView_Previews: PreviewProvider {
    static var previews: some View {
        UserStatView()
    }
}
