//
//  PowerSelectionView.swift
//  the-xadraz
//
//  Created by maxwel gomes dos santos on 24/11/22.
//
import SwiftUI



struct PowerSelectionPlayer1View: View {

    @State var selectedPower: powers = .bombardeioDeGuerra
    @EnvironmentObject private var powerOfPlayer1: PowerOfPlayer1
    
    
    var body: some View {

        

        VStack{

            Picker("Selecione o poder do player", selection: $powerOfPlayer1.Power){

                ForEach(rowPowers, id: \.title) { model in
PowerSelectionRowPlayer1View(model: model)
                            
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



