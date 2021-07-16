//
//  ContentView.swift
//  weatherApp
//
//  Created by VB on 16.07.2021.
//  Copyright © 2021 VB. All rights reserved.
//
//Icon set is : SF Symbols

import SwiftUI


struct ContentView: View {
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [.blue, Color("lightBlue")]),//Background Color
                           startPoint: .topLeading,
                           endPoint: .bottomTrailing)
                .edgesIgnoringSafeArea(.all)
            VStack {
                Text("Kartal, Istanbul"  )
                    .font(.system(size: 32, weight: .medium, design: .default))
                    .foregroundColor(.white)
                    .padding()
                
                VStack(spacing: 10){
                    Image(systemName:"sun.max.fill")
                        .renderingMode(.original)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 180, height: 180)
                    Text("  30°")
                        .font(.system(size:70, weight: .medium))
                        .foregroundColor(.white)
                    
                }
                
                Spacer()//for space from top screen
                
                HStack (spacing: 30 ){
                        
                        WeatherDay(week: "SAL", image: "cloud.sun.fill", tempature: 31)
                        WeatherDay(week: "ÇRŞ", image: "sun.max.fill", tempature: 34)
                        WeatherDay(week:"PRŞ", image: "sun.max.fill", tempature: 36)
                        WeatherDay(week: "CUM", image: "cloud.sun.rain.fill", tempature: 27)
                        WeatherDay(week: "CMT", image: "cloud.rain.fill", tempature: 21)
                    }
                Spacer()
                }
            }
        }
    }

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct WeatherDay:View {
    var week: String
    var image: String
    var tempature:Int
    var body: some View {
        VStack(spacing:30){
            Text(week)
            .font(.system(size: 16, weight: .medium, design: .default))//"Sal" text preferences
                .foregroundColor(.white)
            Image(systemName: image)//Icon
                .renderingMode(.original)
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: 40, height: 40)
            Text("\(tempature)°")
            .font(.system(size:28, weight: .medium))//Tempature texT
            .foregroundColor(.white)
        }
    }
}
