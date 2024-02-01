//
//  ContentView.swift
//  SideMenuV2
//
//  Created by Ivan Voznyi on 30.01.2024.
//

import SwiftUI

struct ContentView: View {
    @State var showSideMenu = false
    @State var pages: Menus = .home
    var body: some View {
        GeometryReader { geometry in
            ZStack {
                SideMenu(page: $pages)
                
                VStack(spacing: 0) {
                    switch pages {
                    case .home:
                        HomeView(showSideMenu: $showSideMenu)
                    case .cart:
                        CartView(showSideMenu: $showSideMenu)
                    case .favourite:
                        FavouritesView(showSideMenu: $showSideMenu)
                    case .orders:
                        OrdersView(showSideMenu: $showSideMenu)
                    }
                }
                .background {
                    MyBackground()
                        .fill(.black.opacity(0.9))
                        .offset(x: 0, y: -geometry.safeAreaInsets.top)
                }
                .padding(.top, geometry.safeAreaInsets.top)
                .background(.white)
                .cornerRadius(showSideMenu ? 30 : 0)
                .scaleEffect(showSideMenu ? 0.9 : 1)
                .offset(x: showSideMenu ? UIScreen.main.bounds.width/2 : 0, y: showSideMenu ? 15 : 0)
                .rotationEffect(.init(degrees: showSideMenu ? -5 : 0))
            }
            .onChange(of: pages, { oldValue, newValue in
                withAnimation {
                    showSideMenu.toggle()
                }
            })
            .ignoresSafeArea()
            .shadow(radius: 20)
        }
    }
}

#Preview {
    ContentView()
}
