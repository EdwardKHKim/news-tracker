//
//  TechnologyView.swift
//  newswatch
//
//  Created by Edward Kim on 2020-08-23.
//  Copyright © 2020 Edward Kim. All rights reserved.
//

import SwiftUI
import SwiftyJSON
import SDWebImageSwiftUI
import WebKit

struct Source {
    static var source = "https://newsapi.org/v2/top-headlines?country=\(CountryVariables.countryOption)&category=technology&apiKey=b47d5df2c8294f3d81f073996c53bb4a"
}

struct TechnologyView: View {
    
    init() {
        UITableView.appearance().separatorStyle = .none
        UINavigationBar.appearance().largeTitleTextAttributes = [.foregroundColor: UIColor.black]
        UINavigationBar.appearance().titleTextAttributes = [.foregroundColor: UIColor.black]
    }
    
    // "Canada", "China", "France", "Germany", "India", "Japan", "South Korea", "Switzerland", "United Kingdom", "United States"
    // "ca", "cn", "fr", "de", "in", "jp", "kr", "ch", "gb", "us"
    @State var showCountryView = false
    
    @ObservedObject var listCanada = TechnologyDataCanada()
    @ObservedObject var listChina = TechnologyDataChina()
    @ObservedObject var listFrance = TechnologyDataFrance()
    @ObservedObject var listGermany = TechnologyDataGermany()
    @ObservedObject var listIndia = TechnologyDataIndia()
    @ObservedObject var listJapan = TechnologyDataJapan()
    @ObservedObject var listSouthKorea = TechnologyDataSouthKorea()
    @ObservedObject var listSwitzerland = TechnologyDataSwitzerland()
    @ObservedObject var listUnitedKingdom = TechnologyDataUnitedKingdom()
    @ObservedObject var listUnitedStates = TechnologyDataUnitedStates()
    
    var body: some View {
        NavigationView {
            if CountryVariables.countryOption == "ca" {
                List(listCanada.data) {i in
                    NavigationLink(destination:
                        TechnologyWebView(url: i.url).navigationBarTitle("", displayMode: .inline)
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
                .navigationBarTitle("Technology")
                .navigationBarItems(
                    trailing: Button(action: {
                        print("Country List and \(Source.source) and CountryOption is \(CountryVariables.countryOption)")
                        
                        self.showCountryView = true
                    }, label: {
                        Image(CountryVariables.countryImage).renderingMode(.original)
                    }))
            } else if CountryVariables.countryOption == "cn" {
                List(listChina.data) {i in
                    NavigationLink(destination:
                        TechnologyWebView(url: i.url).navigationBarTitle("", displayMode: .inline)
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
                .navigationBarTitle("Technology")
                .navigationBarItems(
                    trailing: Button(action: {
                        print("Country List and \(Source.source) and CountryOption is \(CountryVariables.countryOption)")
                        
                        self.showCountryView = true
                    }, label: {
                        Image(CountryVariables.countryImage).renderingMode(.original)
                    }))
            } else if CountryVariables.countryOption == "fr" {
                List(listFrance.data) {i in
                    NavigationLink(destination:
                        TechnologyWebView(url: i.url).navigationBarTitle("", displayMode: .inline)
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
                .navigationBarTitle("Technology")
                .navigationBarItems(
                    trailing: Button(action: {
                        print("Country List and \(Source.source) and CountryOption is \(CountryVariables.countryOption)")
                        
                        self.showCountryView = true
                    }, label: {
                        Image(CountryVariables.countryImage).renderingMode(.original)
                    }))
            } else if CountryVariables.countryOption == "de" {
                List(listGermany.data) {i in
                    NavigationLink(destination:
                        TechnologyWebView(url: i.url).navigationBarTitle("", displayMode: .inline)
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
                .navigationBarTitle("Technology")
                .navigationBarItems(
                    trailing: Button(action: {
                        print("Country List and \(Source.source) and CountryOption is \(CountryVariables.countryOption)")
                        
                        self.showCountryView = true
                    }, label: {
                        Image(CountryVariables.countryImage).renderingMode(.original)
                    }))
            } else if CountryVariables.countryOption == "in" {
                List(listIndia.data) {i in
                    NavigationLink(destination:
                        TechnologyWebView(url: i.url).navigationBarTitle("", displayMode: .inline)
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
                .navigationBarTitle("Technology")
                .navigationBarItems(
                    trailing: Button(action: {
                        print("Country List and \(Source.source) and CountryOption is \(CountryVariables.countryOption)")
                        
                        self.showCountryView = true
                    }, label: {
                        Image(CountryVariables.countryImage).renderingMode(.original)
                    }))
            } else if CountryVariables.countryOption == "jp" {
                List(listJapan.data) {i in
                    NavigationLink(destination:
                        TechnologyWebView(url: i.url).navigationBarTitle("", displayMode: .inline)
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
                .navigationBarTitle("Technology")
                .navigationBarItems(
                    trailing: Button(action: {
                        print("Country List and \(Source.source) and CountryOption is \(CountryVariables.countryOption)")
                        
                        self.showCountryView = true
                    }, label: {
                        Image(CountryVariables.countryImage).renderingMode(.original)
                    }))
            } else if CountryVariables.countryOption == "kr" {
                List(listSouthKorea.data) {i in
                    NavigationLink(destination:
                        TechnologyWebView(url: i.url).navigationBarTitle("", displayMode: .inline)
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
                .navigationBarTitle("Technology")
                .navigationBarItems(
                    trailing: Button(action: {
                        print("Country List and \(Source.source) and CountryOption is \(CountryVariables.countryOption)")
                        
                        self.showCountryView = true
                    }, label: {
                        Image(CountryVariables.countryImage).renderingMode(.original)
                    }))
            } else if CountryVariables.countryOption == "ch" {
                List(listSwitzerland.data) {i in
                    NavigationLink(destination:
                        TechnologyWebView(url: i.url).navigationBarTitle("", displayMode: .inline)
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
                .navigationBarTitle("Technology")
                .navigationBarItems(
                    trailing: Button(action: {
                        print("Country List and \(Source.source) and CountryOption is \(CountryVariables.countryOption)")
                        
                        self.showCountryView = true
                    }, label: {
                        Image(CountryVariables.countryImage).renderingMode(.original)
                    }))
            } else if CountryVariables.countryOption == "gb" {
                List(listUnitedKingdom.data) {i in
                    NavigationLink(destination:
                        TechnologyWebView(url: i.url).navigationBarTitle("", displayMode: .inline)
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
                .navigationBarTitle("Technology")
                .navigationBarItems(
                    trailing: Button(action: {
                        print("Country List and \(Source.source) and CountryOption is \(CountryVariables.countryOption)")
                        
                        self.showCountryView = true
                    }, label: {
                        Image(CountryVariables.countryImage).renderingMode(.original)
                    }))
            } else if CountryVariables.countryOption == "us" {
                List(listUnitedStates.data) {i in
                    NavigationLink(destination:
                        TechnologyWebView(url: i.url).navigationBarTitle("", displayMode: .inline)
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
                .navigationBarTitle("Technology")
                .navigationBarItems(
                    trailing: Button(action: {
                        print("Country List and \(Source.source) and CountryOption is \(CountryVariables.countryOption)")
                        
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

struct TechnologyView_Previews: PreviewProvider {
    static var previews: some View {
        TechnologyView()
    }
}

struct TechnologyDataTypeCanada: Identifiable {
    var id: String
    var title: String
    var description: String
    var url: String
    var urlToImage: String
}

struct TechnologyDataTypeChina: Identifiable {
    var id: String
    var title: String
    var description: String
    var url: String
    var urlToImage: String
}

struct TechnologyDataTypeFrance: Identifiable {
    var id: String
    var title: String
    var description: String
    var url: String
    var urlToImage: String
}

struct TechnologyDataTypeGermany: Identifiable {
    var id: String
    var title: String
    var description: String
    var url: String
    var urlToImage: String
}

struct TechnologyDataTypeIndia: Identifiable {
    var id: String
    var title: String
    var description: String
    var url: String
    var urlToImage: String
}

struct TechnologyDataTypeJapan: Identifiable {
    var id: String
    var title: String
    var description: String
    var url: String
    var urlToImage: String
}

struct TechnologyDataTypeSouthKorea: Identifiable {
    var id: String
    var title: String
    var description: String
    var url: String
    var urlToImage: String
}

struct TechnologyDataTypeSwitzerland: Identifiable {
    var id: String
    var title: String
    var description: String
    var url: String
    var urlToImage: String
}

struct TechnologyDataTypeUnitedKingdom: Identifiable {
    var id: String
    var title: String
    var description: String
    var url: String
    var urlToImage: String
}

struct TechnologyDataTypeUnitedStates: Identifiable {
    var id: String
    var title: String
    var description: String
    var url: String
    var urlToImage: String
}

//let countryOptions = ["ch", "gb",]
class TechnologyDataCanada: ObservableObject {
    @Published var data = [TechnologyDataTypeCanada]()
    
    init() {
        let source = "https://newsapi.org/v2/top-headlines?country=ca&category=technology&apiKey=b47d5df2c8294f3d81f073996c53bb4a"
        
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
                    self.data.append(TechnologyDataTypeCanada(id: id, title: title, description: description, url: url, urlToImage: urlToImage))
                    
                }
            }
        }.resume()
    }
}

class TechnologyDataChina: ObservableObject {
    @Published var data = [TechnologyDataTypeChina]()
    
    init() {
        let source = "https://newsapi.org/v2/top-headlines?country=cn&category=technology&apiKey=b47d5df2c8294f3d81f073996c53bb4a"
        
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
                    self.data.append(TechnologyDataTypeChina(id: id, title: title, description: description, url: url, urlToImage: urlToImage))
                    
                }
            }
        }.resume()
    }
}

class TechnologyDataFrance: ObservableObject {
    @Published var data = [TechnologyDataTypeFrance]()
    
    init() {
        let source = "https://newsapi.org/v2/top-headlines?country=fr&category=technology&apiKey=b47d5df2c8294f3d81f073996c53bb4a"
        
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
                    self.data.append(TechnologyDataTypeFrance(id: id, title: title, description: description, url: url, urlToImage: urlToImage))
                    
                }
            }
        }.resume()
    }
}

class TechnologyDataGermany: ObservableObject {
    @Published var data = [TechnologyDataTypeGermany]()
    
    init() {
        let source = "https://newsapi.org/v2/top-headlines?country=de&category=technology&apiKey=b47d5df2c8294f3d81f073996c53bb4a"
        
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
                    self.data.append(TechnologyDataTypeGermany(id: id, title: title, description: description, url: url, urlToImage: urlToImage))
                    
                }
            }
        }.resume()
    }
}

class TechnologyDataIndia: ObservableObject {
    @Published var data = [TechnologyDataTypeIndia]()
    
    init() {
        let source = "https://newsapi.org/v2/top-headlines?country=in&category=technology&apiKey=b47d5df2c8294f3d81f073996c53bb4a"
        
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
                    self.data.append(TechnologyDataTypeIndia(id: id, title: title, description: description, url: url, urlToImage: urlToImage))
                    
                }
            }
        }.resume()
    }
}

class TechnologyDataJapan: ObservableObject {
    @Published var data = [TechnologyDataTypeJapan]()
    
    init() {
        let source = "https://newsapi.org/v2/top-headlines?country=jp&category=technology&apiKey=b47d5df2c8294f3d81f073996c53bb4a"
        
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
                    self.data.append(TechnologyDataTypeJapan(id: id, title: title, description: description, url: url, urlToImage: urlToImage))
                    
                }
            }
        }.resume()
    }
}

class TechnologyDataSouthKorea: ObservableObject {
    @Published var data = [TechnologyDataTypeSouthKorea]()
    
    init() {
        let source = "https://newsapi.org/v2/top-headlines?country=kr&category=technology&apiKey=b47d5df2c8294f3d81f073996c53bb4a"
        
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
                    self.data.append(TechnologyDataTypeSouthKorea(id: id, title: title, description: description, url: url, urlToImage: urlToImage))
                    
                }
            }
        }.resume()
    }
}


class TechnologyDataUnitedStates: ObservableObject {
    @Published var data = [TechnologyDataTypeUnitedStates]()
    
    init() {
        let source = "https://newsapi.org/v2/top-headlines?country=us&category=technology&apiKey=b47d5df2c8294f3d81f073996c53bb4a"
        
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
                    self.data.append(TechnologyDataTypeUnitedStates(id: id, title: title, description: description, url: url, urlToImage: urlToImage))
                    
                }
            }
        }.resume()
    }
}

class TechnologyDataSwitzerland: ObservableObject {
    @Published var data = [TechnologyDataTypeSwitzerland]()
    
    init() {
        let source = "https://newsapi.org/v2/top-headlines?country=ch&category=technology&apiKey=b47d5df2c8294f3d81f073996c53bb4a"
        
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
                    self.data.append(TechnologyDataTypeSwitzerland(id: id, title: title, description: description, url: url, urlToImage: urlToImage))
                    
                }
            }
        }.resume()
    }
}

class TechnologyDataUnitedKingdom: ObservableObject {
    @Published var data = [TechnologyDataTypeUnitedKingdom]()
    
    init() {
        let source = "https://newsapi.org/v2/top-headlines?country=gb&category=technology&apiKey=b47d5df2c8294f3d81f073996c53bb4a"
        
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
                    self.data.append(TechnologyDataTypeUnitedKingdom(id: id, title: title, description: description, url: url, urlToImage: urlToImage))
                    
                }
            }
        }.resume()
    }
}

struct TechnologyWebView: UIViewRepresentable {
    
    var url: String
    
    func makeUIView(context: UIViewRepresentableContext<TechnologyWebView>) -> WKWebView {
        let view = WKWebView()
        view.load(URLRequest(url: URL(string: url)!))
        return view
    }
    
    func updateUIView(_ uiView: WKWebView, context: UIViewRepresentableContext<TechnologyWebView>) {
    }
}
