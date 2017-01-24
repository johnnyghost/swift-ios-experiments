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
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
    
    mainStore.subscribe(self)
  }
  
  func newState(state: AppState) {
    // when the state changes, the UI is updated to reflect the current state
    counterLabel.text = "\(mainStore.state.counter)"
  }
  
  @IBAction func stepperAction(_ sender: UIStepper) {
    if Int(sender.value) > mainStore.state.counter {
      mainStore.dispatch(counterActionIncrease())
    } else {
      mainStore.dispatch(counterActionDecrease())
    }
  }
}
