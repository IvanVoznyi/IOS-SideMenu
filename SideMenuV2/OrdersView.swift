//
//  OrdersView.swift
//  SideMenuV2
//
//  Created by Ivan Voznyi on 31.01.2024.
//

import SwiftUI

struct OrdersView: View {
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
                        Text("Orders")
                            .font(.custom("", size:25))
                    }
                    .foregroundStyle(.white)
                })
                .padding(.horizontal, 15)
                .padding(.bottom, 25)
                List {
                    ForEach(0..<1) { _ in
                        VStack(alignment: .leading, spacing: 10) {
                            Rectangle()
                                .frame(width: 250, height: 10)
                            Rectangle()
                                .frame(width: 150, height: 10)
                            Rectangle()
                                .frame(width: 90, height: 10)
                        }
                        .foregroundStyle(.white.opacity(0.8))
                        .frame(maxWidth: .infinity, alignment: .leading)
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
    OrdersView(showSideMenu: .constant(false))
}
