//
//  AlertScript.swift
//  the-xadraz
//
//  Created by Raul Braga on 14/12/22.
//

import Foundation

class AlertMessage: ObservableObject{
    @Published var numberOfPawns = 0
    @Published var numberOfPowerful: Int = 0
    @Published var titulo: String
    @Published var mensagem: String
    
//    @Published var previousPowers: [[String : Bool]] = [
//
//        ["Super Saya Rei": false, "Reforço de tropa" : false, "Grito do Cavaleiro" : false, "Crise do Clero": false, "Covardia de Guerra": false, "Sedução de Guerra": false], //Player 1
//
//        ["Super Saya Rei": false, "Reforço de tropa" : false, "Grito do Cavaleiro" : false, "Crise do Clero": false, "Covardia de Guerra": false, "Sedução de Guerra": false] //Player 2
//    ]
    
    init(titulo: String, mensagem: String){
        
        self.titulo = titulo
        self.mensagem = mensagem
        
    }
    
    func setAlert(buttonsStates: [Bool], number: Int, player: Int, pawn: Bool){
        
        self.numberOfPowerful = 0
        self.numberOfPawns = 0
        
        switch (number - 1){
            
        case 0, 7:
//            if (!(previousPowers[player]["Reforço de tropa"]!)){
                
//            if (!pawn){
                
                self.titulo = "Reforço de tropa"
                self.mensagem = "A torre passa a poder andar uma casa nas diagonais."
                
//            }
                
//                previousPowers[player]["Reforço de tropa"] = true;
//            }
            
            
        case 1, 6:
//            if (!(previousPowers[player]["Grito do Cavaleiro"]!)){
//            if (!pawn){
                self.titulo = "Grito do Cavaleiro"
                self.mensagem = "O cavalo pode capturar qualquer pessoa em seu movimento."
//            }
                
//                previousPowers[player]["Grito do Cavaleiro"] = true
//            }
            
        case 2, 5:
//            if (!(previousPowers[player]["Crise do Clero"]!)){
//            if (!pawn){
                    
                self.titulo = "Crise do Clero"
                self.mensagem = "O bispo passa a ter o movimento de uma casa para cada direção: (direita, esquerda, frente ou trás)."
                
//            }
                
//                previousPowers[player]["Crise do Clero"] = true
//            }
        default:
            break
        }
        
        
        
        for value in buttonsStates {
            
            if (pawn && value){
                self.numberOfPawns += 1
            }
            
            else if (!pawn && value){
                self.numberOfPowerful += 1
                
            }
            
        }
        
        
        if (self.numberOfPowerful == 7){
            self.titulo = "Super Saya rei"
            self.mensagem = "O rei passa a se mover como rainha e ainda pode pular sobre as outras peças(desde de que sejam suas)."
//            previousPowers[player]["Super Saya rei"] = true;
        }
        
        else if (self.numberOfPawns == 4){
            
            self.titulo = "Covardia de guerra"
            self.mensagem = "Os peões passam a capturar peças adversárias por trás e podem voltar casas"
            
        }
    
        else if (self.numberOfPowerful == 6 && !buttonsStates[3]){
            self.titulo = "Sedução de Guerra"
            self.mensagem = "Restando apenas as rainhas nas peças poderosas o rei inimigo não pode se mover"
            
//            previousPowers[player]["Sedução de Guerra"] = true;
            
        }
        
        
        
        
    }

        
    }
    
