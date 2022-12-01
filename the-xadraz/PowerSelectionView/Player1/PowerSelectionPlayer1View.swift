//
//  PowerSelectionView.swift
//  the-xadraz
//
//  Created by maxwel gomes dos santos on 24/11/22.
//
import SwiftUI



struct PowerSelectionPlayer1View: View {

    @State private var selectedPower: Int = 1
    

    var rowPowers: [PowerSelectionRow] = [

        PowerSelectionRow(

            iconName: "Cannon" ,

            title: .bombardeioDeGuerra
            

        ),

        PowerSelectionRow(

            iconName: "CampoFechado",

            title: .campoFechado
            

        ),

        PowerSelectionRow(

            iconName: "AtaqueAoPosto",

            title: .ataqueAoPosto
        

        ),

        PowerSelectionRow(

            iconName: "AcordoDeMercenarios",

            title: .acordoDeMercenarios
            

        )

    ]

    var body: some View {

        

        VStack{

            Picker("Selecione o poder do player", selection: $selectedPower){

                ForEach(rowPowers, id: \.title.rawValue) { model in
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



