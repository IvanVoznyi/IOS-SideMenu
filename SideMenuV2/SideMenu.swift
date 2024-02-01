//
//  SideMenu.swift
//  SideMenuV2
//
//  Created by Ivan Voznyi on 30.01.2024.
//

import SwiftUI

struct SideMenu: View {
    @Binding var page: Menus
    
    var body: some View {
        ZStack {
            HStack {
                VStack(alignment: .leading, spacing: 10) {
                    Image(systemName: "person.fill")
                        .font(.custom("", size:100))
                    VStack(alignment: .leading, spacing: 20) {
                        Text("Hey")
                            .font(.largeTitle)
                            .bold()
                        Text("John Doe")
                            .font(.largeTitle)
                            .bold()
                    }
                    ForEach(Menus.allCases, id: \.self) { menu in
                        if !menu.label.isEmpty {
                            Button(action: {
                                page = menu
                            }, label: {
                                HStack{
                                    Image(systemName: menu.icon)
                                    Text(menu.label)
                                        .font(.custom("", size: 20))
                                }
                                .foregroundStyle(page == menu ? .yellow : .black)
                                .font(.largeTitle)
                                Spacer()
                            })
                            .padding(10)
                            .frame(maxWidth: 170)
                            .background(page == menu ? .black : .clear)
                            .containerShape(RoundedRectangle(cornerRadius: 10))
                        }
                    }
                    Divider()
                        .frame(height: 2)
                        .frame(maxWidth: 200)
                        .overlay(.black)
                        .padding(.vertical, 20)
                    Button(action: {
                        page = .home
                    }, label: {
                        HStack{
                            Image(systemName: "rectangle.portrait.and.arrow.right.fill")
                            Text("Sign Out")
                                .font(.custom("", size: 20))
                        }
                        .foregroundStyle(.black)
                        .font(.largeTitle)
                    })
                    .padding(10)
                }
                .padding(.horizontal, 20)
                Spacer()
            }
        }
    }
}

#Preview {
    SideMenu(page: .constant(.home))
}
