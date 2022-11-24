//
//  PowerSelectionView.swift
//  the-xadraz
//
//  Created by maxwel gomes dos santos on 24/11/22.
//
import SwiftUI



struct PowerSelectionView: View {

    @State private var selectedPower = ""

    

    var rowPowers: [PowerSelectionRow] = [

        PowerSelectionRow(

            iconName: "Cannon" ,

            title: "Bombardeio de Guerra"

        ),

        PowerSelectionRow(

            iconName: "CampoFechado",

            title: "Campo Fechado"

        ),

        PowerSelectionRow(

            iconName: "AtaqueAoPosto",

            title: "Ataque ao Posto"

        ),

        PowerSelectionRow(

            iconName: "AcordoDeMercenarios",

            title: "Acordo de Mercenários"

        )

    ]

    var body: some View {

        

        VStack{

                Picker("Selecione o poder do player 1", selection: $selectedPower){

                        ForEach(rowPowers, id: \.title) { model in

                           PowerSelectionRowView(model: model)

                    }

                    

                }.pickerStyle(.automatic)

            

            

        }

    }

}



struct PowerSelectionView_Previews: PreviewProvider {

    static var previews: some View {

        PowerSelectionView()

    }

}



