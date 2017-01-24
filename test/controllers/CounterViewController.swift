//
//  CounterViewController.swift
//  test
//
//  Created by Joao Henriques on 23/01/2017.
//  Copyright © 2017 Joao Henriques. All rights reserved.
//

import UIKit
import ReSwift

class CounterViewController: UIViewController, StoreSubscriber {
  
  typealias StoreSubscriberStateType = AppState
  
  @IBOutlet weak var counterLabel: UILabel!
  @IBOutlet weak var stepper: UIStepper!
  
  /// <#Description#>
  var counterValue: Int {
    get {
      return mainStore.state.counter.value
    }
  }
  
  /// <#Description#>
  override func viewDidLoad() {
    super.viewDidLoad()
    
    // Do any additional setup after loading the view, typically from a nib.
    mainStore.subscribe(self)
    stepper.value = Double(counterValue)
  }
  
  /// <#Description#>
  ///
  /// - Parameter state: <#state description#>
  func newState(state: AppState) {
    
    // when the state changes, the UI is updated to reflect the current state
    counterLabel.text = "\(counterValue)"
  }
  
  /// <#Description#>
  ///
  /// - Parameter sender: <#sender description#>
  @IBAction func stepperAction(_ sender: UIStepper) {
    if Int(sender.value) >= counterValue {
      mainStore.dispatch(counterActionIncrease())
    } else {
      mainStore.dispatch(counterActionDecrease())
    }
  }
}
