//
//  ContentView.swift
//  EmiCard
//
//  Created by Emiliano Fumis on 02/07/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View{
    
    ZStack {
        Color(UIColor(red: 0.09, green: 0.63, blue: 0.52, alpha: 1.00)).edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
        VStack {
            
            Image("emi")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 150.0, height: 150.0)
                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                .overlay(Circle().stroke(Color.white, lineWidth: 5))
            
            Text("Emiliano Fumis")
                .font(Font.custom("Pacifico-Regular", size: 40))
                .bold()
                .foregroundColor(.white)
            Text("Swift Developer")
                .foregroundColor(.white)
                .font(.system(size: 25))
            
            Divider()
            InfoView(text: "+549 341 456 789", imageName: "phone.fill")
            InfoView(text: "emilianofumis@email.com", imageName: "envelope.fill")
            

        }
 
    }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


