//
//  counterReducer.swift
//  test
//
//  Created by Joao Henriques on 24/01/2017.
//  Copyright © 2017 Joao Henriques. All rights reserved.
//

import ReSwift

// the reducer is responsible for evolving the application state based
// on the actions it receives
struct CounterReducer: Reducer {
  typealias ReducerStateType = AppState
  
  
  func handleAction(action: Action, state: AppState?) -> AppState {
    
    // if no state has been provided, create the default state
    var state = state ?? AppState()
    
    switch action {
    case _ as counterActionIncrease:
      state.counter += 1
    case _ as counterActionDecrease:
      state.counter -= 1
    default:
      break
    }
    
    return state
  }
  
}
