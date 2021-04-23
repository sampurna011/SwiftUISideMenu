//
//  SideMenuViewModel.swift
//  SwiftUISideMenu
//
//  Created by Deepu Mishra on 23/04/21.
//

import Foundation

enum SideMenuModel: Int, CaseIterable {
    case profile
    case list
    case bookmark
    case message
    case notification
    case logout
    
    var title: String {
        switch self {
        case .profile: return "Profile"
        case .list: return "List"
        case .bookmark: return "Bookmarks"
        case .message: return "Message"
        case .notification: return "Notification"
        case .logout: return "Logout"
        }
    }
    
    var image: String {
        switch self {
        case .profile: return "person.fill"
        case .list: return "list.bullet.rectangle"
        case .bookmark: return "bookmark.fill"
        case .message: return "message.fill"
        case .notification: return "bell.fill"
        case .logout: return "power"
      }
    }
}
