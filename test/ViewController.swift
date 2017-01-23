//
//  ViewController.swift
//  test
//
//  Created by Joao Henriques on 20/01/2017.
//  Copyright © 2017 Joao Henriques. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  
  var activityIndicator:ActivityIndicator!
  var httpBinService:HTTPBinService = HTTPBinService()
  
  @IBOutlet weak var resultLabel: UILabel!
  @IBOutlet weak var fetchButton: UIButton!
  
  
  /// <#Description#>
  override func viewDidLoad() {
    super.viewDidLoad()
    activityIndicator = ActivityIndicator(self.view)
    // Do any additional setup after loading the view, typically from a nib.
  }
  
  /// <#Description#>
  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }
  
  func fetchUrl () {
    _ = httpBinService
      .get()
      .then { response -> Void in
        self.resultLabel.text = (response.object(forKey: "url") as! String)
        self.activityIndicator.hide()
    }

  }
  
  /// <#Description#>
  ///
  /// - Parameter sender: <#sender description#>
  @IBAction func fetchAPIAction(_ sender: Any) {
    activityIndicator.show();
    
    fetchUrl();
  }
}

