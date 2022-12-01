//
//  TimeSelectionView.swift
//  the-xadraz
//
//  Created by Raul Braga on 30/11/22.
//

import SwiftUI

struct TimeSelectionView: View {
    @State var selectedTime: String = ""
    
    let rowTimes: [TimeSelectionRow] = [

        TimeSelectionRow(
            time: "Sem tempo",
            value: 1
        ),
        TimeSelectionRow(
            time: "15 minutos",
            value: 2
        ),
        TimeSelectionRow(
            time: "20 minutos",
            value: 3
        )

    ]
    
    var body: some View {
        VStack{

                Picker("Selecione o tempo do player", selection: $selectedTime){

                        ForEach(rowTimes, id: \.time) { model in

                           TimeSelectionRowView(model: model)

                    }

                    

                }.pickerStyle(.automatic)

            

            

        }
    }
}

struct TimeSelectionView_Previews: PreviewProvider {
    static var previews: some View {
        TimeSelectionView()
    }
}
