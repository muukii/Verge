//
//  WrapperTests.swift
//  VergeStoreTests
//
//  Created by muukii on 2020/04/16.
//  Copyright © 2020 muukii. All rights reserved.
//

import Foundation

import VergeStore

fileprivate struct MyState: StateType {
  
}

fileprivate enum MyActivity {}

fileprivate final class MyStore: Store<MyState, MyActivity> {}

fileprivate final class MyViewModel: StoreWrapperType {
      
  var store: MyStore { fatalError() }
            
}

fileprivate final class MyViewModel2: StoreWrapperType {
  
  struct State: StateType {
    
  }
  
  enum Activity {}
  
  var store: Store<State, Activity> {
    fatalError()
  }
  
  var hoge: Store<State, WrappedStore.Activity> {
    fatalError()
  }
    
  var scope_: State { fatalError() }
}
