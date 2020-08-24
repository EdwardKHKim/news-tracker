//
//  CountryView.swift
//  newswatch
//
//  Created by Edward Kim on 2020-08-24.
//  Copyright © 2020 Edward Kim. All rights reserved.
//

import SwiftUI

struct CountryView: View {
    
    @Binding var showCountryView: Bool
    
    let countryImages = ["CA", "CN", "FR", "DE", "IE", "JP", "KR", "CH", "GB", "US"]
    let countries = ["Canada", "China", "France", "Germany", "India", "Japan", "South Korea"
    , "Switzerland", "United Kingdom", "United States"]
    let countryCode = ["ca", "cn", "fr", "de", "in", "jp", "kr", "ch", "gb", "us"]
    @State private var countrySelected = false
    @State private var selectedCountry = ""
    
    var body: some View {
        NavigationView {
            List {
                ForEach(0..<countries.count) {
                    index in
                    Button(action: {
                        print("\(self.countries[index]) selected")
                        self.countrySelected = true
                        self.selectedCountry = self.countries[index]
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
                print("Dismissing sheet view...")
                self.showCountryView = false
            }) {
                Text("Done").bold().accentColor(.red)
            })
        }
    }
}
