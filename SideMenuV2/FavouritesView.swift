//
//  Favourites.swift
//  SideMenuV2
//
//  Created by Ivan Voznyi on 31.01.2024.
//

import SwiftUI

struct FavouritesView: View {
    @Binding var showSideMenu: Bool
    
    var body: some View {
        ZStack {
            VStack(alignment: .leading) {
                Button(action: {
                    withAnimation {
                        showSideMenu.toggle()
                    }
                }, label: {
                    HStack {
                        Image(systemName: showSideMenu ? "xmark" : "line.3.horizontal")
                            .font(.custom("", size:25))
                        Text("Favourite")
                            .font(.custom("", size:25))
                    }
                    .foregroundStyle(.white)
                })
                .padding(.horizontal, 15)
                .padding(.bottom, 25)
                List {
                    ForEach(0..<5) { _ in
                        VStack(alignment: .leading, spacing: 10) {
                            Rectangle()
                                .frame(width: 250, height: 10)
                            Rectangle()
                                .frame(width: 100, height: 10)
                            Rectangle()
                                .frame(width: 178, height: 10)
                        }
                        .padding(10)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .foregroundStyle(.white.opacity(0.8))
                        .background{
                            RoundedRectangle(cornerRadius: 10.0)
                        }
                    }
                    .listRowBackground(Color.clear)
                }
                .scrollIndicators(.hidden)
                .scrollContentBackground(.hidden)
                
            }
        }
    }
}

#Preview {
    FavouritesView(showSideMenu: .constant(false))
}
