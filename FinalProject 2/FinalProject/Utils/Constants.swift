//
//  Constants.swift
//  FinalProject
//
//  Created by Yernur Makenov on 06.12.2022.
//

import Foundation
import UIKit

struct Constants {
    
    static var hasTopNotch: Bool {
        guard #available(iOS 11, *), let window  = UIApplication.shared.windows.filter({$0.isKeyWindow}).first else { return false }
        return window.safeAreaInsets.top >= 44
    }
}
