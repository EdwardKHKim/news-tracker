//
//  CountryView.swift
//  newswatch
//
//  Created by Edward Kim on 2020-08-24.
//  Copyright © 2020 Edward Kim. All rights reserved.
//

import SwiftUI

struct CountryVariables {
    static var countryOption = "us"
    static var countryImage = "US"
}

struct CountryView: View {
    
    @Binding var showCountryView: Bool
    
    let countryImages = ["CA", "CN", "FR", "DE", "IN", "JP", "KR", "CH", "GB", "US"]
    let countries = ["Canada", "China", "France", "Germany", "India", "Japan", "South Korea"
    , "Switzerland", "United Kingdom", "United States"]
    let countryOptions = ["ca", "cn", "fr", "de", "in", "jp", "kr", "ch", "gb", "us"]
    
    @State private var countrySelected = false
    @State private var selectedCountry = ""
   
    var body: some View {
        NavigationView {
            List {
                ForEach(0..<countries.count) {
                    index in
                    Button(action: {
                        self.countrySelected = true
                        self.selectedCountry = self.countries[index]
                        
                        CountryVariables.countryOption = self.countryOptions[index]
                        CountryVariables.countryImage = self.countryImages[index]
                        Source.source = "https://newsapi.org/v2/top-headlines?country=\(CountryVariables.countryOption)&category=technology&apiKey=b47d5df2c8294f3d81f073996c53bb4a"
                        
                        print("\(self.countries[index]) image, \(CountryVariables.countryOption) selected and \(Source.source)")
                        
                    }) {
                        VStack(spacing: 10) {
                            HStack(spacing: 15) {
                                Image(self.countryImages[index]).renderingMode(.original)
                                Text(self.countries[index])
                                Spacer(minLength: 1)

                                if self.countrySelected == true {
                                    if self.countries[index] == self.selectedCountry {
                                        Text("Selected").foregroundColor(Color.red)
                                    }
                                }
                            }
                        }
                    }
                }
            }
            .navigationBarTitle(Text("Country List"), displayMode: .inline)
            .navigationBarItems(trailing: Button(action: {
                print("Dismissing sheet view... and countryOption is \(CountryVariables.countryOption)")
                self.showCountryView = false
            }) {
                Text("Done").bold().accentColor(.red)
            })
        }
    }
}
