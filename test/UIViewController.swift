//
//  File.swift
//  test
//
//  Created by Joao Henriques on 22/01/2017.
//  Copyright © 2017 Joao Henriques. All rights reserved.
//
import UIKit

extension UIViewController {
  
  var activityIndicatorTag: Int { return 9999999 }
  
  
  /// <#Description#>
  func showLoading() {
    
    DispatchQueue.main.async {

      let activityIndicator:UIActivityIndicatorView = UIActivityIndicatorView()
      
      activityIndicator.tag = self.activityIndicatorTag
      activityIndicator.center = self.view.center
      activityIndicator.hidesWhenStopped = true
      self.view.addSubview(activityIndicator)
    
      activityIndicator.startAnimating()
    }
  }
  
  
  /// <#Description#>
  func hideLoading() {
    
    DispatchQueue.main.async {
      if let activityIndicator = self.view.subviews.filter({
        $0.tag == self.activityIndicatorTag
      }).first as? UIActivityIndicatorView {
        activityIndicator.stopAnimating()
        activityIndicator.removeFromSuperview()
      }
    }
  }
}
