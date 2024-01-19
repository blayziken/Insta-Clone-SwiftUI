//
//  UserStatView.swift
//  Insta
//
//  Created by Blaze on 19/01/2024.
//

import SwiftUI

struct ProfileStat: View {
    
    let itemCount, itemName: String
    
    var body: some View {
        VStack {
            Text(itemCount)
                .font(.headline)
                .fontWeight(.semibold)
            
            Text(itemName)
                .font(.footnote)
        }
        .frame(width: 75)
    }
}


#Preview {
    ProfileStat(itemCount: "69", itemName: "Hmm Hmm")
}
