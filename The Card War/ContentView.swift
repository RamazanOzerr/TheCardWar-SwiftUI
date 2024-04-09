//
//  ContentView.swift
//  The Card War
//
//  Created by Ramazan Ozer on 9.04.2024.
//

import SwiftUI

struct ContentView: View {
    
    @State var playerCard: String = "card2"
    @State var cpuCard: String = "card13"
    @State var playerPoint = 0
    @State var cpuPoint = 0
    let PLAYERNAME1 = "PLAYER"
    let PLAYERNAME2 = "CPU"
    
    
    var body: some View {
        
        ZStack{
            Image("background-plain")
                .ignoresSafeArea()
            
            VStack{
                Image("logo")
                    .padding()
                
                HStack{
                    Spacer()
                    Image(playerCard)
                    Spacer()
                    Image(cpuCard)
                    Spacer()
                }
                .padding()
                
                Button(action: {
                    buttonPressed()
                }, label: {
                    Image("button")
                })
               
                /*
                Image("button")
                    .padding()
                */
                HStack{
                    
                    Spacer()
                    
                    VStack{
                        Text(PLAYERNAME1)
                        Text(String(playerPoint))
                    }
                    
                    Spacer()
                    
                    VStack{
                        Text(PLAYERNAME2)
                        Text(String(cpuPoint))
                    }
                    .padding()
                    
                    Spacer()
                    
                }
                .font(.title)
                .foregroundColor(.white)
                .padding()
            }
            
        }
        
        
        /*
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
        }
        .padding()
         */
    }
    
    func buttonPressed(){
        var playerCardValue = Int.random(in: 2...14)
        playerCard = "card" + String(playerCardValue)
        
        var cpuCardValue = Int.random(in: 2...14)
        cpuCard = "card" + String(cpuCardValue)
        
        if(playerCardValue > cpuCardValue){
            playerPoint += 1
        } else if(cpuCardValue > playerCardValue){
            cpuPoint += 1
        }
    }
}

#Preview {
    ContentView()
}
