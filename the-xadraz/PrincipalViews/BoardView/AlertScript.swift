//
//  AlertScript.swift
//  the-xadraz
//
//  Created by Raul Braga on 14/12/22.
//

import Foundation

class AlertMessage: ObservableObject, Identifiable {
    
    @Published var numberOfPawns: Int = 0
    @Published var counter: Int = 0
    @Published var titulo: String
    @Published var mensagem: String
    @Published var previousPowers: [[String : Bool]] = [
        
        ["Super Saya Rei": false, "Reforço de tropa" : false, "Grito do Cavaleiro" : false, "Crise do Clero": false, "Covardia de Guerra":   false], //Player 1
        
        ["Super Saya Rei": false, "Reforço de tropa" : false, "Grito do Cavaleiro" : false, "Crise do Clero": false, "Covardia de Guerra": false] //Player 2
    ]
    
    init(titulo: String, mensagem: String){
        self.titulo = titulo
        self.mensagem = mensagem
        
    }
    
    func setAlert(buttonsStates: [Bool], number: Int, player: Int){
        
        for value in buttonsStates {
            
            if (!value){
                self.counter += 1
            }
            
        }
        
        
        
        if (counter == 1){
            self.titulo = "Super Saya rei"
            self.mensagem = "O rei passa a se mover como rainha e ainda pode pular sobre as outras peças(desde de que sejam suas) eventos muito raros."
            previousPowers[player]["Super Saya rei"] = true;
        }
        
        
        switch (number - 1){
            
        case 0, 7:
            if (!(previousPowers[player]["Reforço de tropa"]!)){
                self.titulo = "Reforço de tropa"
                self.mensagem = "A torre passa a andar em todas a direções porém em apenas uma casa nas diagonais"
                previousPowers[player]["Reforço de tropa"] = true;
            }
            
            
        case 1, 6:
            if (!(previousPowers[player]["Grito do Cavaleiro"]!)){
                self.titulo = "Grito do Cavaleiro"
                self.mensagem = "O cavalo pode ataca todos as peças em seu caminho para forma o L"
                previousPowers[player]["Grito do Cavaleiro"] = true
            }
            
        case 2, 5:
            if (!(previousPowers[player]["Crise do Clero"]!)){
                self.titulo = "Crise do Clero"
                self.mensagem = "O bispo passa a andar em todas a direções porém em apenas uma casa nas direções frente, trás, direita e esquerda"
                previousPowers[player]["Crise do Clero"] = true
            }
        default:
            break
        }
        
        
    }
    
    func setAlert2(buttonsStates: [Bool], number: Int, player: Int){
        
        self.numberOfPawns = 0
        
        for value in buttonsStates{
            if (value == true){
                self.numberOfPawns += 1
            }
        }
        
        if (self.numberOfPawns >= 4 ){
            
            self.titulo = "Covardia de guerra"
            self.mensagem = "Os peões passam a capturar peças adversárias por trás e podem voltar casas"
            previousPowers[player]["Covardia de guerra"] = true
            
        }
    }
        

        
    }
    
