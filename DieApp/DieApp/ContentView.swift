//
//  ContentView.swift
//  DieApp
//
//  Created by Apprenant 07 on 26/01/2023.
//

import SwiftUI
struct ContentView: View {
    @State var random: String = "questionmark.square.fill"
    var images = ["die.face.1.fill", "die.face.2.fill", "die.face.3.fill", "die.face.4.fill", "die.face.5.fill", "die.face.6.fill"]
    
    func rollsDice() -> String{
        let array = images
        let result = array.randomElement()!
        return result
    }
    var body: some View {
        ZStack{
            Color.black
                .edgesIgnoringSafeArea(.all)
            VStack {
                Spacer()
                ZStack{
                    Image(systemName: random)
                        .resizable()
                        .frame(width: 100, height: 100)
                        .foregroundColor(.white)
                        .bold()
                }
                Spacer()
                ZStack{
                    RoundedRectangle(cornerRadius: 10)
                        .frame(width: 250, height: 70)
                        .foregroundColor(.orange)
                    Button{
                        self.random = rollsDice()
                    } label: {
                        Text("Roll the dice")
                            .foregroundColor(.white)
                            .fontWeight(.bold)
                    }
                }
            }
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
