//
//  AuthenticationManager.swift
//  LocalAuthenticationSwiftUI
//
//  Created by Lucy on 02/09/22.
//

import Foundation
import LocalAuthentication

class AuthenticationManager: ObservableObject{
    
    @Published var isUnlocked = false
    
    func authenticate(){
        let context = LAContext()
        var error: NSError?
        
        if context.canEvaluatePolicy(.deviceOwnerAuthenticationWithBiometrics, error: &error){
            let reason = "We need to unlock this app"
            
            context.evaluatePolicy(.deviceOwnerAuthenticationWithBiometrics, localizedReason: reason){ success, error in
                if success {
                    self.isUnlocked = true
                     
                }else{
                    //
                }
            }
        } else{
            //
        }
        
    }
}
