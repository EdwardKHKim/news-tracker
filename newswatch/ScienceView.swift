//
//  ScienceView.swift
//  newswatch
//
//  Created by Edward Kim on 2020-08-23.
//  Copyright © 2020 Edward Kim. All rights reserved.
//

import SwiftUI
import SwiftyJSON
import SDWebImageSwiftUI
import WebKit

struct ScienceView: View {
    init() {
        UITableView.appearance().separatorStyle = .none 
    }
    
    @State var showCountryView = false
    
    @ObservedObject var listCanada = ScienceDataCanada()
    @ObservedObject var listChina = ScienceDataChina()
    @ObservedObject var listFrance = ScienceDataFrance()
    @ObservedObject var listGermany = ScienceDataGermany()
    @ObservedObject var listIndia = ScienceDataIndia()
    @ObservedObject var listJapan = ScienceDataJapan()
    @ObservedObject var listSouthKorea = ScienceDataSouthKorea()
    @ObservedObject var listSwitzerland = ScienceDataSwitzerland()
    @ObservedObject var listUnitedKingdom = ScienceDataUnitedKingdom()
    @ObservedObject var listUnitedStates = ScienceDataUnitedStates()
    
    let countryOptions = ["ca", "cn", "fr", "de", "in", "jp", "kr", "ch", "gb", "us"]
    
    var body: some View {
        NavigationView {
            if CountryVariables.countryOption == "ca" {
                List(listCanada.data) {i in
                    NavigationLink(destination:
                        ScienceWebView(url: i.url).navigationBarTitle("", displayMode: .inline)
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
                .navigationBarTitle("Science")
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
                        ScienceWebView(url: i.url).navigationBarTitle("", displayMode: .inline)
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
                .navigationBarTitle("Science")
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
                        ScienceWebView(url: i.url).navigationBarTitle("", displayMode: .inline)
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
                .navigationBarTitle("Science")
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
                        ScienceWebView(url: i.url).navigationBarTitle("", displayMode: .inline)
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
                .navigationBarTitle("Science")
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
                        ScienceWebView(url: i.url).navigationBarTitle("", displayMode: .inline)
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
                .navigationBarTitle("Science")
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
                        ScienceWebView(url: i.url).navigationBarTitle("", displayMode: .inline)
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
                .navigationBarTitle("Science")
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
                        ScienceWebView(url: i.url).navigationBarTitle("", displayMode: .inline)
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
                .navigationBarTitle("Science")
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
                        ScienceWebView(url: i.url).navigationBarTitle("", displayMode: .inline)
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
                .navigationBarTitle("Science")
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
                        ScienceWebView(url: i.url).navigationBarTitle("", displayMode: .inline)
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
                .navigationBarTitle("Science")
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
                        ScienceWebView(url: i.url).navigationBarTitle("", displayMode: .inline)
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
                .navigationBarTitle("Science")
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

struct ScienceView_Previews: PreviewProvider {
    static var previews: some View {
        ScienceView()
    }
}

struct ScienceDataTypeCanada: Identifiable {
    var id: String
    var title: String
    var description: String
    var url: String
    var urlToImage: String
}

struct ScienceDataTypeChina: Identifiable {
    var id: String
    var title: String
    var description: String
    var url: String
    var urlToImage: String
}

struct ScienceDataTypeFrance: Identifiable {
    var id: String
    var title: String
    var description: String
    var url: String
    var urlToImage: String
}

struct ScienceDataTypeGermany: Identifiable {
    var id: String
    var title: String
    var description: String
    var url: String
    var urlToImage: String
}

struct ScienceDataTypeIndia: Identifiable {
    var id: String
    var title: String
    var description: String
    var url: String
    var urlToImage: String
}

struct ScienceDataTypeJapan: Identifiable {
    var id: String
    var title: String
    var description: String
    var url: String
    var urlToImage: String
}

struct ScienceDataTypeSouthKorea: Identifiable {
    var id: String
    var title: String
    var description: String
    var url: String
    var urlToImage: String
}

struct ScienceDataTypeSwitzerland: Identifiable {
    var id: String
    var title: String
    var description: String
    var url: String
    var urlToImage: String
}

struct ScienceDataTypeUnitedKingdom: Identifiable {
    var id: String
    var title: String
    var description: String
    var url: String
    var urlToImage: String
}

struct ScienceDataTypeUnitedStates: Identifiable {
    var id: String
    var title: String
    var description: String
    var url: String
    var urlToImage: String
}

class ScienceDataCanada: ObservableObject {
    @Published var data = [ScienceDataTypeCanada]()
    
    init() {
        let source = "https://newsapi.org/v2/top-headlines?country=ca&category=science&apiKey=b47d5df2c8294f3d81f073996c53bb4a"
        
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
                    self.data.append(ScienceDataTypeCanada(id: id, title: title, description: description, url: url, urlToImage: urlToImage))
                    
                }
            }
        }.resume()
    }
}

class ScienceDataChina: ObservableObject {
    @Published var data = [ScienceDataTypeChina]()
    
    init() {
        let source = "https://newsapi.org/v2/top-headlines?country=cn&category=science&apiKey=b47d5df2c8294f3d81f073996c53bb4a"
        
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
                    self.data.append(ScienceDataTypeChina(id: id, title: title, description: description, url: url, urlToImage: urlToImage))
                    
                }
            }
        }.resume()
    }
}

class ScienceDataFrance: ObservableObject {
    @Published var data = [ScienceDataTypeFrance]()
    
    init() {
        let source = "https://newsapi.org/v2/top-headlines?country=fr&category=science&apiKey=b47d5df2c8294f3d81f073996c53bb4a"
        
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
                    self.data.append(ScienceDataTypeFrance(id: id, title: title, description: description, url: url, urlToImage: urlToImage))
                    
                }
            }
        }.resume()
    }
}

class ScienceDataGermany: ObservableObject {
    @Published var data = [ScienceDataTypeGermany]()
    
    init() {
        let source = "https://newsapi.org/v2/top-headlines?country=de&category=science&apiKey=b47d5df2c8294f3d81f073996c53bb4a"
        
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
                    self.data.append(ScienceDataTypeGermany(id: id, title: title, description: description, url: url, urlToImage: urlToImage))
                    
                }
            }
        }.resume()
    }
}

class ScienceDataIndia: ObservableObject {
    @Published var data = [ScienceDataTypeIndia]()
    
    init() {
        let source = "https://newsapi.org/v2/top-headlines?country=in&category=science&apiKey=b47d5df2c8294f3d81f073996c53bb4a"
        
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
                    self.data.append(ScienceDataTypeIndia(id: id, title: title, description: description, url: url, urlToImage: urlToImage))
                    
                }
            }
        }.resume()
    }
}

class ScienceDataJapan: ObservableObject {
    @Published var data = [ScienceDataTypeJapan]()
    
    init() {
        let source = "https://newsapi.org/v2/top-headlines?country=jp&category=science&apiKey=b47d5df2c8294f3d81f073996c53bb4a"
        
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
                    self.data.append(ScienceDataTypeJapan(id: id, title: title, description: description, url: url, urlToImage: urlToImage))
                    
                }
            }
        }.resume()
    }
}

class ScienceDataSouthKorea: ObservableObject {
    @Published var data = [ScienceDataTypeSouthKorea]()
    
    init() {
        let source = "https://newsapi.org/v2/top-headlines?country=kr&category=science&apiKey=b47d5df2c8294f3d81f073996c53bb4a"
        
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
                    self.data.append(ScienceDataTypeSouthKorea(id: id, title: title, description: description, url: url, urlToImage: urlToImage))
                    
                }
            }
        }.resume()
    }
}

class ScienceDataSwitzerland: ObservableObject {
    @Published var data = [ScienceDataTypeSwitzerland]()
    
    init() {
        let source = "https://newsapi.org/v2/top-headlines?country=ch&category=science&apiKey=b47d5df2c8294f3d81f073996c53bb4a"
        
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
                    self.data.append(ScienceDataTypeSwitzerland(id: id, title: title, description: description, url: url, urlToImage: urlToImage))
                    
                }
            }
        }.resume()
    }
}

class ScienceDataUnitedKingdom: ObservableObject {
    @Published var data = [ScienceDataTypeUnitedKingdom]()
    
    init() {
        let source = "https://newsapi.org/v2/top-headlines?country=gb&category=science&apiKey=b47d5df2c8294f3d81f073996c53bb4a"
        
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
                    self.data.append(ScienceDataTypeUnitedKingdom(id: id, title: title, description: description, url: url, urlToImage: urlToImage))
                    
                }
            }
        }.resume()
    }
}

class ScienceDataUnitedStates: ObservableObject {
    @Published var data = [ScienceDataTypeUnitedStates]()
    
    init() {
        let source = "https://newsapi.org/v2/top-headlines?country=us&category=science&apiKey=b47d5df2c8294f3d81f073996c53bb4a"
        
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
                    self.data.append(ScienceDataTypeUnitedStates(id: id, title: title, description: description, url: url, urlToImage: urlToImage))
                    
                }
            }
        }.resume()
    }
}

struct ScienceWebView: UIViewRepresentable {
    
    var url: String
    
    func makeUIView(context: UIViewRepresentableContext<ScienceWebView>) -> WKWebView {
        let view = WKWebView()
        view.load(URLRequest(url: URL(string: url)!))
        return view
    }
    
    func updateUIView(_ uiView: WKWebView, context: UIViewRepresentableContext<ScienceWebView>) {
        
    }
}

