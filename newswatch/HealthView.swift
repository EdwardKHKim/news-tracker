//
//  HealthView.swift
//  newswatch
//
//  Created by Edward Kim on 2020-08-23.
//  Copyright © 2020 Edward Kim. All rights reserved.
//

import SwiftUI
import SwiftyJSON
import SDWebImageSwiftUI
import WebKit

struct HealthView: View {
    init() {
        UITableView.appearance().separatorStyle = .none
    }
    
    @State var showCountryView = false
    
    @ObservedObject var listCanada = HealthDataCanada()
    @ObservedObject var listChina = HealthDataChina()
    @ObservedObject var listFrance = HealthDataFrance()
    @ObservedObject var listGermany = HealthDataGermany()
    @ObservedObject var listIndia = HealthDataIndia()
    @ObservedObject var listJapan = HealthDataJapan()
    @ObservedObject var listSouthKorea = HealthDataSouthKorea()
    @ObservedObject var listSwitzerland = HealthDataSwitzerland()
    @ObservedObject var listUnitedKingdom = HealthDataUnitedKingdom()
    @ObservedObject var listUnitedStates = HealthDataUnitedStates()
    
    let countryOptions = ["ca", "cn", "fr", "de", "in", "jp", "kr", "ch", "gb", "us"]
    
    var body: some View {
        NavigationView {
            if CountryVariables.countryOption == "ca" {
                List(listCanada.data) {i in
                    
                    NavigationLink(destination:
                        HealthWebView(url: i.url).navigationBarTitle("", displayMode: .inline)
                    ) {
                        HStack(spacing: 15) {
                            VStack(alignment: .leading, spacing: 10) {
                                if i.urlToImage != "" {
                                    WebImage(url: URL(string: i.urlToImage)!, options: .highPriority, context: nil).resizable().frame(width: 375, height: 230).cornerRadius(10)
                                }
                                Text(i.title).fontWeight(.heavy)
                                Text(i.description).lineLimit(2)
                            }
                        }
                        .padding(.vertical, 15)
                    }
                }
                .navigationBarTitle("Health")
                .navigationBarItems(
                    trailing: Button(action: {
                        print("Country List")
                        self.showCountryView = true
                    }, label: {
                        Image(CountryVariables.countryImage).renderingMode(.original)
                    }))
            } else if CountryVariables.countryOption == "cn" {
                List(listChina.data) {i in
                    
                    NavigationLink(destination:
                        HealthWebView(url: i.url).navigationBarTitle("", displayMode: .inline)
                    ) {
                        HStack(spacing: 15) {
                            VStack(alignment: .leading, spacing: 10) {
                                if i.urlToImage != "" {
                                    WebImage(url: URL(string: i.urlToImage)!, options: .highPriority, context: nil).resizable().frame(width: 375, height: 230).cornerRadius(10)
                                }
                                Text(i.title).fontWeight(.heavy)
                                Text(i.description).lineLimit(2)
                            }
                        }
                        .padding(.vertical, 15)
                    }
                }
                .navigationBarTitle("Health")
                .navigationBarItems(
                    trailing: Button(action: {
                        print("Country List")
                        self.showCountryView = true
                    }, label: {
                        Image(CountryVariables.countryImage).renderingMode(.original)
                    }))
            } else if CountryVariables.countryOption == "fr" {
                List(listFrance.data) {i in
                    
                    NavigationLink(destination:
                        HealthWebView(url: i.url).navigationBarTitle("", displayMode: .inline)
                    ) {
                        HStack(spacing: 15) {
                            VStack(alignment: .leading, spacing: 10) {
                                if i.urlToImage != "" {
                                    WebImage(url: URL(string: i.urlToImage)!, options: .highPriority, context: nil).resizable().frame(width: 375, height: 230).cornerRadius(10)
                                }
                                Text(i.title).fontWeight(.heavy)
                                Text(i.description).lineLimit(2)
                            }
                        }
                        .padding(.vertical, 15)
                    }
                }
                .navigationBarTitle("Health")
                .navigationBarItems(
                    trailing: Button(action: {
                        print("Country List")
                        self.showCountryView = true
                    }, label: {
                        Image(CountryVariables.countryImage).renderingMode(.original)
                    }))
            } else if CountryVariables.countryOption == "de" {
                List(listGermany.data) {i in
                    
                    NavigationLink(destination:
                        HealthWebView(url: i.url).navigationBarTitle("", displayMode: .inline)
                    ) {
                        HStack(spacing: 15) {
                            VStack(alignment: .leading, spacing: 10) {
                                if i.urlToImage != "" {
                                    WebImage(url: URL(string: i.urlToImage)!, options: .highPriority, context: nil).resizable().frame(width: 375, height: 230).cornerRadius(10)
                                }
                                Text(i.title).fontWeight(.heavy)
                                Text(i.description).lineLimit(2)
                            }
                        }
                        .padding(.vertical, 15)
                    }
                }
                .navigationBarTitle("Health")
                .navigationBarItems(
                    trailing: Button(action: {
                        print("Country List")
                        self.showCountryView = true
                    }, label: {
                        Image(CountryVariables.countryImage).renderingMode(.original)
                    }))
            } else if CountryVariables.countryOption == "in" {
                List(listIndia.data) {i in
                    
                    NavigationLink(destination:
                        HealthWebView(url: i.url).navigationBarTitle("", displayMode: .inline)
                    ) {
                        HStack(spacing: 15) {
                            VStack(alignment: .leading, spacing: 10) {
                                if i.urlToImage != "" {
                                    WebImage(url: URL(string: i.urlToImage)!, options: .highPriority, context: nil).resizable().frame(width: 375, height: 230).cornerRadius(10)
                                }
                                Text(i.title).fontWeight(.heavy)
                                Text(i.description).lineLimit(2)
                            }
                        }
                        .padding(.vertical, 15)
                    }
                }
                .navigationBarTitle("Health")
                .navigationBarItems(
                    trailing: Button(action: {
                        print("Country List")
                        self.showCountryView = true
                    }, label: {
                        Image(CountryVariables.countryImage).renderingMode(.original)
                    }))
            } else if CountryVariables.countryOption == "jp" {
                List(listJapan.data) {i in
                    
                    NavigationLink(destination:
                        HealthWebView(url: i.url).navigationBarTitle("", displayMode: .inline)
                    ) {
                        HStack(spacing: 15) {
                            VStack(alignment: .leading, spacing: 10) {
                                if i.urlToImage != "" {
                                    WebImage(url: URL(string: i.urlToImage)!, options: .highPriority, context: nil).resizable().frame(width: 375, height: 230).cornerRadius(10)
                                }
                                Text(i.title).fontWeight(.heavy)
                                Text(i.description).lineLimit(2)
                            }
                        }
                        .padding(.vertical, 15)
                    }
                }
                .navigationBarTitle("Health")
                .navigationBarItems(
                    trailing: Button(action: {
                        print("Country List")
                        self.showCountryView = true
                    }, label: {
                        Image(CountryVariables.countryImage).renderingMode(.original)
                    }))
            } else if CountryVariables.countryOption == "kr" {
                List(listSouthKorea.data) {i in
                    
                    NavigationLink(destination:
                        HealthWebView(url: i.url).navigationBarTitle("", displayMode: .inline)
                    ) {
                        HStack(spacing: 15) {
                            VStack(alignment: .leading, spacing: 10) {
                                if i.urlToImage != "" {
                                    WebImage(url: URL(string: i.urlToImage)!, options: .highPriority, context: nil).resizable().frame(width: 375, height: 230).cornerRadius(10)
                                }
                                Text(i.title).fontWeight(.heavy)
                                Text(i.description).lineLimit(2)
                            }
                        }
                        .padding(.vertical, 15)
                    }
                }
                .navigationBarTitle("Health")
                .navigationBarItems(
                    trailing: Button(action: {
                        print("Country List")
                        self.showCountryView = true
                    }, label: {
                        Image(CountryVariables.countryImage).renderingMode(.original)
                    }))
            } else if CountryVariables.countryOption == "ch" {
                List(listSwitzerland.data) {i in
                    
                    NavigationLink(destination:
                        HealthWebView(url: i.url).navigationBarTitle("", displayMode: .inline)
                    ) {
                        HStack(spacing: 15) {
                            VStack(alignment: .leading, spacing: 10) {
                                if i.urlToImage != "" {
                                    WebImage(url: URL(string: i.urlToImage)!, options: .highPriority, context: nil).resizable().frame(width: 375, height: 230).cornerRadius(10)
                                }
                                Text(i.title).fontWeight(.heavy)
                                Text(i.description).lineLimit(2)
                            }
                        }
                        .padding(.vertical, 15)
                    }
                }
                .navigationBarTitle("Health")
                .navigationBarItems(
                    trailing: Button(action: {
                        print("Country List")
                        self.showCountryView = true
                    }, label: {
                        Image(CountryVariables.countryImage).renderingMode(.original)
                    }))
            } else if CountryVariables.countryOption == "gb" {
                List(listUnitedKingdom.data) {i in
                    
                    NavigationLink(destination:
                        HealthWebView(url: i.url).navigationBarTitle("", displayMode: .inline)
                    ) {
                        HStack(spacing: 15) {
                            VStack(alignment: .leading, spacing: 10) {
                                if i.urlToImage != "" {
                                    WebImage(url: URL(string: i.urlToImage)!, options: .highPriority, context: nil).resizable().frame(width: 375, height: 230).cornerRadius(10)
                                }
                                Text(i.title).fontWeight(.heavy)
                                Text(i.description).lineLimit(2)
                            }
                        }
                        .padding(.vertical, 15)
                    }
                }
                .navigationBarTitle("Health")
                .navigationBarItems(
                    trailing: Button(action: {
                        print("Country List")
                        self.showCountryView = true
                    }, label: {
                        Image(CountryVariables.countryImage).renderingMode(.original)
                    }))
            } else if CountryVariables.countryOption == "us" {
                List(listUnitedStates.data) {i in
                    
                    NavigationLink(destination:
                        HealthWebView(url: i.url).navigationBarTitle("", displayMode: .inline)
                    ) {
                        HStack(spacing: 15) {
                            VStack(alignment: .leading, spacing: 10) {
                                if i.urlToImage != "" {
                                    WebImage(url: URL(string: i.urlToImage)!, options: .highPriority, context: nil).resizable().frame(width: 375, height: 230).cornerRadius(10)
                                }
                                Text(i.title).fontWeight(.heavy)
                                Text(i.description).lineLimit(2)
                            }
                        }
                        .padding(.vertical, 15)
                    }
                }
                .navigationBarTitle("Health")
                .navigationBarItems(
                    trailing: Button(action: {
                        print("Country List")
                        self.showCountryView = true
                    }, label: {
                        Image(CountryVariables.countryImage).renderingMode(.original)
                    }))
            }
        }
        .sheet(isPresented: $showCountryView) {
            CountryView(showCountryView: self.$showCountryView)
        }
    }
}

struct HealthView_Previews: PreviewProvider {
    static var previews: some View {
        HealthView()
    }
}

struct HealthDataTypeCanada: Identifiable {
    var id: String
    var title: String
    var description: String
    var url: String
    var urlToImage: String
}

struct HealthDataTypeChina: Identifiable {
    var id: String
    var title: String
    var description: String
    var url: String
    var urlToImage: String
}

struct HealthDataTypeFrance: Identifiable {
    var id: String
    var title: String
    var description: String
    var url: String
    var urlToImage: String
}

struct HealthDataTypeGermany: Identifiable {
    var id: String
    var title: String
    var description: String
    var url: String
    var urlToImage: String
}

struct HealthDataTypeIndia: Identifiable {
    var id: String
    var title: String
    var description: String
    var url: String
    var urlToImage: String
}

struct HealthDataTypeJapan: Identifiable {
    var id: String
    var title: String
    var description: String
    var url: String
    var urlToImage: String
}

struct HealthDataTypeSouthKorea: Identifiable {
    var id: String
    var title: String
    var description: String
    var url: String
    var urlToImage: String
}

struct HealthDataTypeSwitzerland: Identifiable {
    var id: String
    var title: String
    var description: String
    var url: String
    var urlToImage: String
}

struct HealthDataTypeUnitedKingdom: Identifiable {
    var id: String
    var title: String
    var description: String
    var url: String
    var urlToImage: String
}

struct HealthDataTypeUnitedStates: Identifiable {
    var id: String
    var title: String
    var description: String
    var url: String
    var urlToImage: String
}

class HealthDataCanada: ObservableObject {
    @Published var data = [HealthDataTypeCanada]()
    
    init() {
        let source = "https://newsapi.org/v2/top-headlines?country=ca&category=health&apiKey=b47d5df2c8294f3d81f073996c53bb4a"
        
        let url = URL(string: source)!
        
        let session = URLSession(configuration: .default)
        
        session.dataTask(with: url) {
            (data, _, error) in
            if error != nil {
                print((error?.localizedDescription)!)
                return
            }
            
            let json = try! JSON(data: data!)
            
            for i in json["articles"] {
                let title = i.1["title"].stringValue
                let description = i.1["description"].stringValue
                let url = i.1["url"].stringValue
                let urlToImage = i.1["urlToImage"].stringValue
                let id = i.1["publishedAt"].stringValue
                
                DispatchQueue.main.async {
                    self.data.append(HealthDataTypeCanada(id: id, title: title, description: description, url: url, urlToImage: urlToImage))
                    
                }
            }
        }.resume()
    }
}

class HealthDataChina: ObservableObject {
    @Published var data = [HealthDataTypeChina]()
    
    init() {
        let source = "https://newsapi.org/v2/top-headlines?country=cn&category=health&apiKey=b47d5df2c8294f3d81f073996c53bb4a"
        
        let url = URL(string: source)!
        
        
        let session = URLSession(configuration: .default)
        
        session.dataTask(with: url) {
            (data, _, error) in
            if error != nil {
                print((error?.localizedDescription)!)
                return
            }
            
            let json = try! JSON(data: data!)
            
            for i in json["articles"] {
                let title = i.1["title"].stringValue
                let description = i.1["description"].stringValue
                let url = i.1["url"].stringValue
                let urlToImage = i.1["urlToImage"].stringValue
                let id = i.1["publishedAt"].stringValue
                
                DispatchQueue.main.async {
                    self.data.append(HealthDataTypeChina(id: id, title: title, description: description, url: url, urlToImage: urlToImage))
                    
                }
            }
        }.resume()
    }
}

class HealthDataFrance: ObservableObject {
    @Published var data = [HealthDataTypeFrance]()
    
    init() {
        let source = "https://newsapi.org/v2/top-headlines?country=fr&category=health&apiKey=b47d5df2c8294f3d81f073996c53bb4a"
        
        let url = URL(string: source)!
        
        
        let session = URLSession(configuration: .default)
        
        session.dataTask(with: url) {
            (data, _, error) in
            if error != nil {
                print((error?.localizedDescription)!)
                return
            }
            
            let json = try! JSON(data: data!)
            
            for i in json["articles"] {
                let title = i.1["title"].stringValue
                let description = i.1["description"].stringValue
                let url = i.1["url"].stringValue
                let urlToImage = i.1["urlToImage"].stringValue
                let id = i.1["publishedAt"].stringValue
                
                DispatchQueue.main.async {
                    self.data.append(HealthDataTypeFrance(id: id, title: title, description: description, url: url, urlToImage: urlToImage))
                    
                }
            }
        }.resume()
    }
}

class HealthDataGermany: ObservableObject {
    @Published var data = [HealthDataTypeGermany]()
    
    init() {
        let source = "https://newsapi.org/v2/top-headlines?country=de&category=health&apiKey=b47d5df2c8294f3d81f073996c53bb4a"
        
        let url = URL(string: source)!
        
        
        let session = URLSession(configuration: .default)
        
        session.dataTask(with: url) {
            (data, _, error) in
            if error != nil {
                print((error?.localizedDescription)!)
                return
            }
            
            let json = try! JSON(data: data!)
            
            for i in json["articles"] {
                let title = i.1["title"].stringValue
                let description = i.1["description"].stringValue
                let url = i.1["url"].stringValue
                let urlToImage = i.1["urlToImage"].stringValue
                let id = i.1["publishedAt"].stringValue
                
                DispatchQueue.main.async {
                    self.data.append(HealthDataTypeGermany(id: id, title: title, description: description, url: url, urlToImage: urlToImage))
                    
                }
            }
        }.resume()
    }
}

class HealthDataIndia: ObservableObject {
    @Published var data = [HealthDataTypeIndia]()
    
    init() {
        let source = "https://newsapi.org/v2/top-headlines?country=in&category=health&apiKey=b47d5df2c8294f3d81f073996c53bb4a"
        
        let url = URL(string: source)!
        
        
        let session = URLSession(configuration: .default)
        
        session.dataTask(with: url) {
            (data, _, error) in
            if error != nil {
                print((error?.localizedDescription)!)
                return
            }
            
            let json = try! JSON(data: data!)
            
            for i in json["articles"] {
                let title = i.1["title"].stringValue
                let description = i.1["description"].stringValue
                let url = i.1["url"].stringValue
                let urlToImage = i.1["urlToImage"].stringValue
                let id = i.1["publishedAt"].stringValue
                
                DispatchQueue.main.async {
                    self.data.append(HealthDataTypeIndia(id: id, title: title, description: description, url: url, urlToImage: urlToImage))
                    
                }
            }
        }.resume()
    }
}

class HealthDataJapan: ObservableObject {
    @Published var data = [HealthDataTypeJapan]()
    
    init() {
        let source = "https://newsapi.org/v2/top-headlines?country=jp&category=health&apiKey=b47d5df2c8294f3d81f073996c53bb4a"
        
        let url = URL(string: source)!
        
        
        let session = URLSession(configuration: .default)
        
        session.dataTask(with: url) {
            (data, _, error) in
            if error != nil {
                print((error?.localizedDescription)!)
                return
            }
            
            let json = try! JSON(data: data!)
            
            for i in json["articles"] {
                let title = i.1["title"].stringValue
                let description = i.1["description"].stringValue
                let url = i.1["url"].stringValue
                let urlToImage = i.1["urlToImage"].stringValue
                let id = i.1["publishedAt"].stringValue
                
                DispatchQueue.main.async {
                    self.data.append(HealthDataTypeJapan(id: id, title: title, description: description, url: url, urlToImage: urlToImage))
                    
                }
            }
        }.resume()
    }
}

class HealthDataSouthKorea: ObservableObject {
    @Published var data = [HealthDataTypeSouthKorea]()
    
    init() {
        let source = "https://newsapi.org/v2/top-headlines?country=kr&category=health&apiKey=b47d5df2c8294f3d81f073996c53bb4a"
        
        let url = URL(string: source)!
        
        
        let session = URLSession(configuration: .default)
        
        session.dataTask(with: url) {
            (data, _, error) in
            if error != nil {
                print((error?.localizedDescription)!)
                return
            }
            
            let json = try! JSON(data: data!)
            
            for i in json["articles"] {
                let title = i.1["title"].stringValue
                let description = i.1["description"].stringValue
                let url = i.1["url"].stringValue
                let urlToImage = i.1["urlToImage"].stringValue
                let id = i.1["publishedAt"].stringValue
                
                DispatchQueue.main.async {
                    self.data.append(HealthDataTypeSouthKorea(id: id, title: title, description: description, url: url, urlToImage: urlToImage))
                    
                }
            }
        }.resume()
    }
}

class HealthDataSwitzerland: ObservableObject {
    @Published var data = [HealthDataTypeSwitzerland]()
    
    init() {
        let source = "https://newsapi.org/v2/top-headlines?country=ch&category=health&apiKey=b47d5df2c8294f3d81f073996c53bb4a"
        
        let url = URL(string: source)!
        
        
        let session = URLSession(configuration: .default)
        
        session.dataTask(with: url) {
            (data, _, error) in
            if error != nil {
                print((error?.localizedDescription)!)
                return
            }
            
            let json = try! JSON(data: data!)
            
            for i in json["articles"] {
                let title = i.1["title"].stringValue
                let description = i.1["description"].stringValue
                let url = i.1["url"].stringValue
                let urlToImage = i.1["urlToImage"].stringValue
                let id = i.1["publishedAt"].stringValue
                
                DispatchQueue.main.async {
                    self.data.append(HealthDataTypeSwitzerland(id: id, title: title, description: description, url: url, urlToImage: urlToImage))
                    
                }
            }
        }.resume()
    }
}

class HealthDataUnitedKingdom: ObservableObject {
    @Published var data = [HealthDataTypeUnitedKingdom]()
    
    init() {
        let source = "https://newsapi.org/v2/top-headlines?country=gb&category=health&apiKey=b47d5df2c8294f3d81f073996c53bb4a"
        
        let url = URL(string: source)!
        
        
        let session = URLSession(configuration: .default)
        
        session.dataTask(with: url) {
            (data, _, error) in
            if error != nil {
                print((error?.localizedDescription)!)
                return
            }
            
            let json = try! JSON(data: data!)
            
            for i in json["articles"] {
                let title = i.1["title"].stringValue
                let description = i.1["description"].stringValue
                let url = i.1["url"].stringValue
                let urlToImage = i.1["urlToImage"].stringValue
                let id = i.1["publishedAt"].stringValue
                
                DispatchQueue.main.async {
                    self.data.append(HealthDataTypeUnitedKingdom(id: id, title: title, description: description, url: url, urlToImage: urlToImage))
                    
                }
            }
        }.resume()
    }
}

class HealthDataUnitedStates: ObservableObject {
    @Published var data = [HealthDataTypeUnitedStates]()
    
    init() {
        let source = "https://newsapi.org/v2/top-headlines?country=us&category=health&apiKey=b47d5df2c8294f3d81f073996c53bb4a"
        
        let url = URL(string: source)!
        
        
        let session = URLSession(configuration: .default)
        
        session.dataTask(with: url) {
            (data, _, error) in
            if error != nil {
                print((error?.localizedDescription)!)
                return
            }
            
            let json = try! JSON(data: data!)
            
            for i in json["articles"] {
                let title = i.1["title"].stringValue
                let description = i.1["description"].stringValue
                let url = i.1["url"].stringValue
                let urlToImage = i.1["urlToImage"].stringValue
                let id = i.1["publishedAt"].stringValue
                
                DispatchQueue.main.async {
                    self.data.append(HealthDataTypeUnitedStates(id: id, title: title, description: description, url: url, urlToImage: urlToImage))
                    
                }
            }
        }.resume()
    }
}

struct HealthWebView: UIViewRepresentable {
    
    var url: String
    
    func makeUIView(context: UIViewRepresentableContext<HealthWebView>) -> WKWebView {
        let view = WKWebView()
        view.load(URLRequest(url: URL(string: url)!))
        return view
    }
    
    func updateUIView(_ uiView: WKWebView, context: UIViewRepresentableContext<HealthWebView>) {
        
    }
}

