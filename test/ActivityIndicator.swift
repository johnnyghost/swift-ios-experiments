//
//  File.swift
//  test
//
//  Created by Joao Henriques on 22/01/2017.
//  Copyright © 2017 Joao Henriques. All rights reserved.
//

import UIKit

public class ActivityIndicator:NSObject {
  let view:UIView
  let activityIndicator:UIActivityIndicatorView = UIActivityIndicatorView();
  
  
  /// <#Description#>
  ///
  /// - Parameter view: <#view description#>
  init(_ view:UIView) {
    self.view = view
  }
  
  
  /// <#Description#>
  func show () {
    activityIndicator.center = self.view.center
    activityIndicator.hidesWhenStopped = true
    self.view.addSubview(activityIndicator)
    
    activityIndicator.startAnimating()
  }
  
  
  /// <#Description#>
  func hide() {
    activityIndicator.stopAnimating()
  }
}
