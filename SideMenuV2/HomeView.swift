//
//  HomeView.swift
//  SideMenuV2
//
//  Created by Ivan Voznyi on 30.01.2024.
//

import SwiftUI

struct HomeView: View {
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
                            Text("Home")
                                .font(.custom("", size:25))
                        }
                        .foregroundStyle(.white)
                    })
                    .padding(.horizontal, 15)
                    .padding(.bottom, 25)
                    List {
                        ForEach(0..<10) { _ in
                            VStack(alignment: .leading, spacing: 10) {
                                Rectangle()
                                    .frame(width: 150, height: 10)
                                Rectangle()
                                    .frame(width: 220, height: 10)
                                Rectangle()
                                    .frame(width: .infinity, height: 10)
                            }
                            .foregroundStyle(.white.opacity(0.8))
                            .padding(10)
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
    GeometryReader { geometry in
        HomeView(showSideMenu: .constant(false))
            .background {
                MyBackground()
                    .fill(.black.opacity(0.9))
                    .offset(x:0, y: -geometry.safeAreaInsets.top)
            }
    }
}
