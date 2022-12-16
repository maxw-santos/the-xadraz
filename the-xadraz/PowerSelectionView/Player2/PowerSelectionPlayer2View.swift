//
//  PowerSelectionPlayer2View.swift
//  the-xadraz
//
//  Created by Raul Braga on 01/12/22.
//

import SwiftUI

//
//  PowerSelectionView.swift
//  the-xadraz
//
//  Created by maxwel gomes dos santos on 24/11/22.
//



struct PowerSelectionPlayer2View: View {

    @EnvironmentObject private var settingsOfPlayers: SettingsOfPlayers

    var body: some View {

        

        VStack{

            Picker("Selecione o poder do player", selection: $settingsOfPlayers.Power2){

                ForEach(rowPowers, id: \.self) { power in
PowerSelectionRowPlayer2View(power: power)
                            
            }
                    
                    
            }.pickerStyle(.automatic)
        }
    
        
    }
    
    
    
}



struct PowerSelectionPlayer2View_Previews: PreviewProvider {

    static var previews: some View {

        PowerSelectionPlayer2View()

    }

}




