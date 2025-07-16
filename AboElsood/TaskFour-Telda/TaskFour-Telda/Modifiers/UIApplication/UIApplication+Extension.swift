//
//  UIApplication+Extension.swift
//  TaskFour-Telda
//
//  Created by Ahmed Abo Elsood on 07/07/2025.
//

import UIKit

extension UIApplication {
    var safeAreaTop: CGFloat {
        let topInset = (connectedScenes.first as? UIWindowScene)?
            .windows
            .first { $0.isKeyWindow }?
            .safeAreaInsets.top

        return topInset ?? 44
    }
}
