//

//  HelpView.swift

//  the-xadraz

//

//  Created by maxwel gomes dos santos on 14/12/22.

//



import SwiftUI



struct HelpView: View {

    var body: some View {

        ZStack {

            Image("tela2")

                .resizable()

                .edgesIgnoringSafeArea(.all)

                .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)

            

            

            VStack {

                

                ScrollView {

                    

                    VStack{

                        Text("O Jogo")

                            .font( .system (size: 25))

                            .padding(10)

                        

                        Text("Bem vindo ao Xadraz nossa proposta aqui é  elevear seu desafio no  famoso xadrez durante, o jogo surgirão eventos aleatoriós então fique atento e divirta-se.")

                            .padding(10)

                    }

                    VStack{

                        Text ("Poderes")

                            .font( .system (size: 25))

                        

                        Text ("as habilidades que voê escolheu no inicio serão usadas na partida. (não nessa versão) e cada uma tem uma habilidade unica  vamos falar de cada uma aqui.")

                            .padding(10)

                    }

                    VStack{

                        Text( "Bombardeio de guerra")

                            .font( .system (size: 25))

                        

                        Text ("bombardeio de guerra, habilidade que usa dos todos os recurso da nação atacando metade do tabuleiro causando dano em 25% matando qualquer peça atingida. do inicio da zona iminiga até a zona desmilitarizada do inimiga vão ser bombardeados aleatoriamente")

                            .padding(10)

                    }

                    VStack{

                        Text( "Ataque ao posto ")

                            .font( .system (size: 25))

                        

                        Text ("destrói um posto de guerra inimiga e recupera um soldado. recupere uma peça aleatória na zona desmilitarizada (linhas 5 e 4 do tabuleiro) ")

                            .padding(10)

                    }

                    VStack{

                        Text("ajuda de mercenários")

                            .font( .system (size: 25))

                        

                        Text ("com o avanço da guerra uma ajuda se faz necessária porém a um grande preço (torne uma peça sua em qualquer outra peça por x turno ao fim do período você perde duas peças) ")

                            .padding(10)

                    }

                    VStack{

                        Text( "campo fechado ")

                            .font( .system (size: 25))

                        Text ("campo fechado, seu oponente não vai poder pisar em algumas casa determinadas aleatoriamente por X turnos")

                            .padding(10)

                    }

                }

            }

            

            .background(Color.white)

            .cornerRadius(20)

            .padding(.horizontal, 20)

            .padding(.vertical, 50)

        }

    }

}



struct HelpView_Previews: PreviewProvider {

    static var previews: some View {

        HelpView()

    }

}
