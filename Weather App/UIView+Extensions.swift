//
//  UIView+Extensions.swift
//  Weather App
//
//  Created by Johann Pires on 28/12/2023.
//

import Foundation
import UIKit

extension UIView {
    func setConstraintstoParent(_ parent: UIView) {
        NSLayoutConstraint.activate([
        self.topAnchor.constraint(equalTo: parent.topAnchor),
        self.bottomAnchor.constraint(equalTo: parent.bottomAnchor),
        self.leadingAnchor.constraint(equalTo: parent.leadingAnchor),
        self.trailingAnchor.constraint(equalTo: parent.trailingAnchor)
        ])
    }
}

