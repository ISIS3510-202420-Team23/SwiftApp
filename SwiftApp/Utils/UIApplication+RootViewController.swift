//
//  UIApplication+RootViewController.swift
//  SwiftApp
//
//  Created by Daniel Arango Cruz on 18/09/24.
//

import Foundation
import UIKit

extension UIApplication {
  var currentKeyWindow: UIWindow? {
    UIApplication.shared.connectedScenes
      .compactMap { ($0 as? UIWindowScene)?.keyWindow }
      .first
  }

  var rootViewController: UIViewController? {
    currentKeyWindow?.rootViewController
  }
}
