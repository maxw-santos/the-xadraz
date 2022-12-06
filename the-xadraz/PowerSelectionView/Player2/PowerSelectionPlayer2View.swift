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

    @State var selectedPower: powers = .bombardeioDeGuerra
    

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

                ForEach(rowPowers, id: \.title) { model in
PowerSelectionRowPlayer2View(model: model)
                            
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




