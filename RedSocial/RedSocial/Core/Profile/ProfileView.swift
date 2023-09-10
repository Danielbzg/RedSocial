//
//  ProfileView.swift
//  RedSocial
//
//  Created by Daniel Boza García on 9/9/23.
//

import SwiftUI

struct ProfileView: View {

    @State private var selectedFilter: TweetFilterViewModel = .tweets
    @Namespace var animation

    var body: some View {
        VStack(alignment: .leading){
            Text("Profile View")
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
