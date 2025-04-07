//
//  Data.swift
//  Assessement1
//
//  Created by Vaibhav Upadhyay on 30/01/25.
//
import Foundation

struct Setting: Identifiable {
    let id = UUID()
    let name: String
    let iconName: String
    let type: SettingsEnum
    
    static private let settings: [Setting] = [
        Setting(name: SettingsEnum.editProfile.rawValue, iconName: "person", type: SettingsEnum.account),
        Setting(name: SettingsEnum.security.rawValue, iconName: "shield", type: SettingsEnum.account),
        Setting(name: SettingsEnum.notification.rawValue, iconName: "bell", type: SettingsEnum.account),
        Setting(name: SettingsEnum.privacy.rawValue, iconName: "lock", type: SettingsEnum.account),
        
        Setting(name: SettingsEnum.mySubscription.rawValue, iconName: "creditcard", type: SettingsEnum.supportAndAbout),
        Setting(name: SettingsEnum.helpAndSupport.rawValue, iconName: "bell", type: SettingsEnum.supportAndAbout),
        Setting(name: SettingsEnum.termsAndPolicy.rawValue, iconName: "lock", type: SettingsEnum.supportAndAbout),
        
        ///Cache & Cellular
        Setting(name: SettingsEnum.freeUpSpace.rawValue, iconName: "xmark.bin", type: SettingsEnum.cacheAndCellular),
        Setting(name: SettingsEnum.dataSaver.rawValue, iconName: "lock", type: SettingsEnum.cacheAndCellular),
        
        ///Action
        Setting(name: SettingsEnum.reportProblem.rawValue, iconName: "creditcard", type: SettingsEnum.action),
        Setting(name: SettingsEnum.addAccount.rawValue, iconName: "bell", type: SettingsEnum.action),
        Setting(name: SettingsEnum.logout.rawValue, iconName: "lock", type: SettingsEnum.action)
    ]
    
    // Computed property to group fruits by type
    static var groupedSettings: [String: [Setting]] {
        Dictionary(grouping: settings, by: { $0.type.rawValue })
    }
}

enum SettingsEnum: String {
    /// Header
    case account = "Account"
    case supportAndAbout = "Support & About"
    case cacheAndCellular = "Cache & Cellular"
    case action = "Action"
    
//    var list: [String] {
//        switch self {
//        case .account:
//            ["Edit Profile", "Security", "Notification", "Privacy"]
//        case .supportAndAbout:
//            ["My Subscription", "Help & Support", "Terms & Policy"]
//        case .cacheAndCellular:
//            ["Free up space", "Data Saver"]
//        case .action:
//            ["Report A Problem", "Add Account", "Logout"]
//        }
//    }
    
    ///Menu
    ///
    ///account
    case editProfile = "Edit Profile"
    case security = "Security"
    case notification = "Notification"
    case privacy = "Privacy"
    
    ///subscription
    case mySubscription = "My Subscription"
    case helpAndSupport = "Help & Support"
    case termsAndPolicy = "Terms & Policy"

    ///Cache & Cellular
    case freeUpSpace = "Free up space"
    case dataSaver = "Data Saver"
    
    ///actions
    case reportProblem = "Report A Problem"
    case addAccount = "Add Account"
    case logout = "Logout"
}


struct HomeFlower: Identifiable {
    let id = UUID()
    let title: String
    let image: String
    
    static let list: [HomeFlower] = [
        HomeFlower(title: "All", image: "home_1"),
        HomeFlower(title: "Bouquet", image: "home_2"),
        HomeFlower(title: "Table", image: "home_3"),
        HomeFlower(title: "Aisle", image: "home_4"),
        HomeFlower(title: "Accessories", image: "home_5")
    ]
}
