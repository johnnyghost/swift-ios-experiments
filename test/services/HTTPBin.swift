//
//  HTTPBin.swift
//  test
//
//  Created by Joao Henriques on 23/01/2017.
//  Copyright © 2017 Joao Henriques. All rights reserved.
//

import UIKit
import PromiseKit

class HTTPBinService: NSObject {
  let request = Request()
  
  func get() -> Promise<NSDictionary> {
    return request
      .makeRequest(url: "https://httpbin.org/get")
      .then { result -> NSDictionary in
        return result as! NSDictionary
      }
  }
}
