//
//  ContentView.swift
//  SWPDemo
//
//  Created by huabin on 4/30/24.
//

import SwiftUI
import InformationCheck

struct ContentView: View {
	
    var body: some View {
        VStack {
						Text("Hello display")
					
						// return false
						if InformationCheck.ValidationType.email("thisisnotaemailaddress").isRight {
								Text("Valid email address")
										.foregroundColor(.green)
						} else {
								Text("Invalid email address")
										.foregroundColor(.red)
						}
						
					  // return true
						if InformationCheck.ValidationType.email("thisis@emailaddress.com").isRight {
								Text("Valid email address")
										.foregroundColor(.green)
						} else {
								Text("Invalid email address")
										.foregroundColor(.red)
						}
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
