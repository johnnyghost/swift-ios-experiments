//
//  AppReducer.swift
//  test
//
//  Created by Joao Henriques on 24/01/2017.
//  Copyright © 2017 Joao Henriques. All rights reserved.
//

import ReSwift

struct AppReducer: Reducer {
  
  func handleAction(action: Action, state: AppState?) -> AppState {
    
    return AppState(
      counter: counterReducer(action: action, state: state?.counter)
    )
  }
  
}
