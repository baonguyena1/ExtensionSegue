//
//  SegueHandler.swift
//  ExtensionSegue
//
//  Created by Bao Nguyen on 10/6/17.
//  Copyright © 2017 Bao Nguyen. All rights reserved.
//

import UIKit

protocol SegueHandler {
    associatedtype SegueIdentifier: RawRepresentable
}

extension SegueHandler where Self: UIViewController, SegueIdentifier.RawValue == String {
    func segueIdentifier(for segue:UIStoryboardSegue) -> SegueIdentifier {
        guard let identifier = segue.identifier,
            let segueIdentifier = SegueIdentifier(rawValue: identifier) else {
                fatalError("Unknow segue: \(segue)")
        }
        return segueIdentifier
    }
}
