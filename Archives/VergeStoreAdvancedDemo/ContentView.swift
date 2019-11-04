//
//  ContentView.swift
//  VergeNeueAdvancedDemo
//
//  Created by muukii on 2019/09/21.
//  Copyright © 2019 muukii. All rights reserved.
//

import SwiftUI

struct ContentView: View {
  var body: some View {
    MainTabView(store: AppContainer.store)
      .environmentObject(AppContainer.store)
      .edgesIgnoringSafeArea(.all)
  }
}