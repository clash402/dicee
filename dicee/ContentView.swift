//
//  ContentView.swift
//  dicee
//
//  Created by Josh Courtney on 5/16/21.
//

import SwiftUI

struct ContentView: View {
    @State private var diceImage1 = "dice-one"
    @State private var diceImage2 = "dice-one"
    
    private var diceImages = ["dice-one", "dice-two", "dice-three", "dice-four", "dice-five", "dice-six"]
    
    var body: some View {
        ZStack {
            Image("background")
                .resizable()
                .edgesIgnoringSafeArea(.all)
                .aspectRatio(1, contentMode: .fill)
            VStack {
                Image("logo")
                    .padding(.vertical, 64)
                HStack(alignment: .center, spacing: 56) {
                    Image(diceImage1)
                    Image(diceImage2)
                }
                Spacer()
                Button(action: {
                    rolldDice()
                }, label: {
                    Text("Roll Dice")
                        .font(Font.custom("Helvetica Neue", size: 32))
                        .fontWeight(.bold)
                        .padding(.all, 24)
                        .padding(.horizontal, 48)
                        .background(Color.init(red: 155/255, green: 28/255, blue: 31/255))
                        .foregroundColor(.white)
                        .cornerRadius(40)
                })
                .padding(.bottom, 64)
            }
        }
    }
    
    func rolldDice() {
        diceImage1 = diceImages.randomElement()!
        diceImage2 = diceImages.randomElement()!
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
