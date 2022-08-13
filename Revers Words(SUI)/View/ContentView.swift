//
//  ContentView.swift
//  Revers Words(SUI)
//
//  Created by Максим Бакулин on 08.08.2022.
//

import SwiftUI

struct ContentView: View {
    @State private var defaultText = ""
    @State var textToReverse = ""
    @State var nameButton = "Reverse"
    
    var body: some View {
        ZStack {
            VStack {
                Spacer()
                mainLabel()
                CustomTextFieldView(defaultText: $defaultText, textToReverse: $textToReverse, nameButton: $nameButton)
                
                
            }
        }
    }
}



struct mainLabel: View {
    var body: some View {
        VStack {
            Text("Reverse Words")
                .bold()
                .font(.largeTitle)
                .padding()
            Text("This application will reverse your words. Please type text below")
                .multilineTextAlignment(.center)
                .padding()
                .opacity(0.5)
        }
    }
}

struct CustomTextFieldView: View {
    @Binding var defaultText: String
    @Binding var textToReverse: String
    @Binding var nameButton: String
    
    
    func reverse() {
        
        var text = defaultText
        textToReverse = String(text.reversed())
        
        
        
        print(textToReverse)
    }
    
    func clearText() {
        nameButton = "Clear"
//        textToReverse = ""
//        defaultText = ""
    }
    
    var body: some View {
        
        
        
        VStack {
            
            TextField("Text to reverse", text: $defaultText)
                .textFieldStyle(.roundedBorder)
            //            .padding()
            
            Text("\(textToReverse)")
                .foregroundColor(Color.blue)
                .font(.title)
                .multilineTextAlignment(.leading)
//                .lineLimit(1)
//                .scaledToFit()
                
            Spacer()
            VStack {
                Button("\(nameButton)") {
                   reverse()
                   clearText()
                }
                //                .disabled(defaultText.isEmpty)
            }
            
            .foregroundColor(Color.white)
            .padding()
            .frame(width: 343, height: 60)
            .background(Color.blue)
            .cornerRadius(14)
        }
        .padding()
    }
}

//struct reverseLabel: View {
//
//
//    var body: some View {
//
//    }
//}


//struct button: View {
//
//
//
//    var body: some View {
//
//
//
//    }
//}






struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
