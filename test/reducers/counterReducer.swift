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

  
func counterReducer(action: Action, state: CounterState?) -> CounterState {
    
  // if no state has been provided, create the default state
  var state = state ?? CounterState()
  
  switch action {
  case _ as counterActionIncrease:
    state.value += 1
  case _ as counterActionDecrease:
    state.value -= 1
  default:
    break
  }
    
  return state
}

