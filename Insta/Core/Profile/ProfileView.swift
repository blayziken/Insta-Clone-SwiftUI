//
//  ProfileView.swift
//  Insta
//
//  Created by Blaze on 18/01/2024.
//

import SwiftUI

struct ProfileView: View {
    
    private let gridItems: [GridItem] = [
        .init(.flexible(), spacing: 1),
        .init(.flexible(), spacing: 1),
        .init(.flexible(), spacing: 1),
    ]
    
    var body: some View {
        NavigationStack {
            ScrollView {
                
                VStack(spacing: 10) {
                    //MARK: PROFILE COUNT
                    HStack {
                        Image("IMG_4624")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 80, height: 80)
                            .clipShape(Circle())
                        
                        Spacer()
                        
                        HStack(spacing: 8) {
                            ProfileStat(itemCount: "3", itemName: "Posts")
                            ProfileStat(itemCount: "625", itemName: "Followers")
                            ProfileStat(itemCount: "1,240", itemName: "Following")
                        }
                    }
                    .padding(.horizontal)
                    
                    //MARK: NAME
                    VStack(alignment: .leading, spacing: 4) {
                        Text("Toluwalope Oluyipe")
                            .fontWeight(.semibold)
                            .font(.headline)
                        
                        Text("Live fast!")
                            .font(.subheadline)
                    }
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.horizontal)
                    
                    
                    //MARK: EDIT PROFILE BUTTON
                    Button {
                        
                    } label: {
                        Text("Edit Profile")
                            .font(.headline) // subheadline
                            .fontWeight(.semibold)
                            .foregroundStyle(.black)
                            .frame(width: 360, height: 40)
                            .overlay(
                                RoundedRectangle(cornerRadius: 6)
                                    .stroke(Color.gray, lineWidth: 1)
                            )
                    }
                }
                .padding(.bottom, 10)
                
                //MARK: PROFILE GRID IMAGES
                LazyVGrid(columns:  gridItems, spacing: 1) {
                    ForEach(0...20, id: \.self) { index in
                        Image("20220213_181545")
                            .resizable()
                            .scaledToFill()
                    }
                    
    //                ForEach(MockData, id: \.self) { index in
    //                    Image(index)
    //                        .resizable()
    //                        .scaledToFill()
    //                        .frame(maxWidth: 100)
    //                        .background(.red)
    //                    
    //                }
                }
            }
            .navigationTitle("Profile")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    Button {
                        
                    } label: {
                        Image(systemName: "line.3.horizontal")
                            .foregroundStyle(.black)
                    }
                }
            }
        }
    }
}

#Preview {
    ProfileView()
}

