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
                .environmentObject(SettingsOfPlayers(Power1: .bombardeioDeGuerra, Power2: .bombardeioDeGuerra))
                .environmentObject(AlertMessage(titulo: "", mensagem: ""))
        }
    }
}
