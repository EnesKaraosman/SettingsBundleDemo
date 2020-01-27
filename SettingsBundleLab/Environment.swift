//
//  Environment.swift
//  SettingsBundleLab
//
//  Created by Enes Karaosman on 26.01.2020.
//  Copyright © 2020 Etiya. All rights reserved.
//

import Foundation

enum Environment: String {
    case production = "production"
    case development = "development"
    
    var url: String {
        switch self {
        case .development:
            return "https://development.base.url/"
        case .production:
            return "https://production.base.url/"
        }
    }
    
    static var selected: Environment {
        // Settings.bundle dosyasından okuma yapalım
        let defaultValue = Environment.production
        
        if let environment = UserDefaults.standard.string(forKey: "environment") {
            return Environment(rawValue: environment) ?? defaultValue
        }
        
        return defaultValue
        // Settings.bundle' ı göz ardı etmek isteyeceğimiz bir durum olursa,
        // burada istediğimiz case i dönebiliriz
    }
    
}
