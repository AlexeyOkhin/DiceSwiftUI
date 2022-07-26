//
//  ContentView.swift
//  DiceUISwift
//
//  Created by Djinsolobzik on 08.02.2022.
//

import SwiftUI

struct ContentView: View {
    @State var leftDiceNum = 1
    @State var rightDiceNum = 1
    
    var body: some View {
        ZStack{
            Image("background").resizable().edgesIgnoringSafeArea(.all)
            
            VStack{
                Image("diceeLogo")
                Spacer()
                HStack{
                    Dice(num: leftDiceNum)
                    Dice(num: rightDiceNum)
                    
                }.padding()
                Spacer()
                Button(action: {
                    self.leftDiceNum = Int.random(in: 1...6)
                    self.rightDiceNum = Int.random(in: 1...6)
                }) {
                    Text("Roll")
                        .font(.system(size: 49))
                        .fontWeight(.heavy)
                        .padding(.horizontal)
                        .foregroundColor(.white)
                }.background(Color(.red))
                
                
            }
            
        }
        
    }
}


struct Dice: View {
    let num: Int
    var body: some View {
        Image("dice\(num)")
            .resizable()
            .aspectRatio(1, contentMode: .fit)
            .padding()
    }
}






struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


