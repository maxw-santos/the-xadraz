//
//  the_xadrazApp.swift
//  the-xadraz
//
//  Created by maxwel gomes dos santos on 04/11/22.
//

import SwiftUI

@main
struct the_xadrazApp: App {
    var body: some Scene {
        WindowGroup {
            FirstView()
                .environmentObject(PowerOfPlayer1(Power: .bombardeioDeGuerra))
                .environmentObject(PowerOfPlayer2(Power: .bombardeioDeGuerra))
        }
    }
}
