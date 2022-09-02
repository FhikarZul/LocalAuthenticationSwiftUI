//
//  ContentView.swift
//  LocalAuthenticationSwiftUI
//
//  Created by Lucy on 02/09/22.
//

import SwiftUI
import LocalAuthentication

struct ContentView: View {
    
    @StateObject var am = AuthenticationManager()
    
    var body: some View {
        VStack{
            Text(am.isUnlocked ? "Unlocked" : "Locked")
        }
        .onAppear{
            am.authenticate()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
