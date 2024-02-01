//
//  SideMenu.swift
//  SideMenuV2
//
//  Created by Ivan Voznyi on 01.02.2024.
//

enum Menus: CaseIterable {
    case home
    case cart
    case favourite
    case orders
    
    var label: String {
        switch self {
        case .cart:
            return "Cart"
        case .favourite:
            return "Faourite"
        case .orders:
            return "Orders"
        default:
            return ""
        }
    }
    
    var icon: String {
        switch self {
        case .cart:
            return "cart.fill"
        case .favourite:
            return "heart.fill"
        case .orders:
            return "clipboard.fill"
        default :
            return ""
        }
    }
}
