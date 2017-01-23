//
//  HTTPBin.swift
//  test
//
//  Created by Joao Henriques on 23/01/2017.
//  Copyright © 2017 Joao Henriques. All rights reserved.
//

import UIKit
import Alamofire
import PromiseKit

class HTTPBinService: NSObject {
  
  @discardableResult
  func get() -> Promise<NSDictionary> {
    return Alamofire
      .request("https://httpbin.org/get")
      .responseJSON()
      .then { result in
        return result as! NSDictionary
      }
      .catch { error in
        print(error)
    }
    
  }
}
