//
//  Request.swift
//  test
//
//  Created by Joao Henriques on 23/01/2017.
//  Copyright © 2017 Joao Henriques. All rights reserved.
//

import UIKit
import Alamofire
import PromiseKit

class Request: NSObject {
  
  /// <#Description#>
  func makeRequest (url:String) -> Promise<Any> {
    UIApplication.shared.isNetworkActivityIndicatorVisible = true
    
    return Alamofire
      .request(url)
      .responseJSON()
      .catch { error in
        print(error)
      }
      .always {
        UIApplication.shared.isNetworkActivityIndicatorVisible = false
    }

  }
}
