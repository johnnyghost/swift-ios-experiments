//
//  ViewController.swift
//  test
//
//  Created by Joao Henriques on 20/01/2017.
//  Copyright © 2017 Joao Henriques. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  
//  var activityIndicator:ActivityIndicator!
  var httpBinService:HTTPBinService = HTTPBinService()
  
  @IBOutlet weak var resultLabel: UILabel!
  @IBOutlet weak var fetchButton: UIButton!
  
  
  /// <#Description#>
  override func viewDidLoad() {
    super.viewDidLoad()
    
    // Do any additional setup after loading the view, typically from a nib.
//    activityIndicator = ActivityIndicator(self.view)
  }
  
  /// <#Description#>
  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }
  
  /// <#Description#>
  ///
  /// - Parameter sender: <#sender description#>
  @IBAction func fetchAPIAction(_ sender: Any) {
    self.showLoading();
    
    _ = httpBinService
      .get()
      .then { response -> Void in
        self.resultLabel.text = (response.object(forKey: "url") as! String)
        self.hideLoading()
    }
  }
}

