//
//  PowerSelectionView.swift
//  the-xadraz
//
//  Created by maxwel gomes dos santos on 24/11/22.
//
import SwiftUI



struct PowerSelectionPlayer1View: View {

    @EnvironmentObject private var settingOfPlayers: SettingsOfPlayers
    
    
    var body: some View {

        

        VStack{

            Picker("Selecione o poder do player", selection: $settingOfPlayers.Power1){

                ForEach(rowPowers, id: \.self) { power in
PowerSelectionRowPlayer1View(power: power)
                            
            }
                    
                    
            }.pickerStyle(.automatic)
        }
    }
    
    
}



struct PowerSelectionView_Previews: PreviewProvider {

    static var previews: some View {

        PowerSelectionPlayer1View()

    }

}



