//
//  ContentView.swift
//  newswatch
//
//  Created by Edward Kim on 2020-08-23.
//  Copyright © 2020 Edward Kim. All rights reserved.
//

import SwiftUI
import SwiftyJSON
import SDWebImageSwiftUI
import WebKit

struct ContentView: View {
    var body: some View {
        
        TabView {
            
            TechnologyView()
                .tabItem {
                    Image("technology").renderingMode(.template)
                    Text("Technology")
            }
            
            ScienceView()
                .tabItem {
                    Image("science").renderingMode(.template)
                    Text("Science")
            }
            
            BusinessView()
                .tabItem {
                    Image("business").renderingMode(.template)
                    Text("Business")
            }
            
            HealthView()
                .tabItem {
                    Image("health").renderingMode(.template)
                    Text("Health")
            }
            

        }.accentColor(.red)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
