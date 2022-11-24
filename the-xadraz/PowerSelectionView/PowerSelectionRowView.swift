//
//  PowerSelectionRowView.swift
//  the-xadraz
//
//  Created by maxwel gomes dos santos on 24/11/22.
//
import SwiftUI



struct PowerSelectionRowView: View {

    let model: PowerSelectionRow

    

    var body: some View {

        HStack(){

            Image(model.iconName)
            Text(model.title)

        }

    }

}
