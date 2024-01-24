import SwiftUI

struct InitialView: View {
    
    @State private var name = ""
    @State private var date = Date()
    @State private var weight = ""
    @State private var tall = ""
    
    var body: some View {
        NavigationView {
            VStack(alignment: .leading, spacing: 10) {
                userNameView()
                genderView()
                birthdayView()
                currentWeight()
                currentTall()
                Spacer()
            }.navigationTitle("初期設定").padding(10)
        }
    }
    
    private func userNameView() -> some View {
        return VStack(alignment: .leading) {
            Text("ユーザ名")
            TextField("名前",text: $name)
                .textFieldStyle(.roundedBorder)
        }
    }
    
    private func genderView() -> some View {
        return VStack(alignment: .leading) {
            Text("性別")
            HStack {
                radioButtonView(onClick: {}, name: "男")
                radioButtonView(onClick: {}, name: "女")
            }
        }
    }
    
    private func birthdayView() -> some View {
        return VStack(alignment: .leading) {
            Text("誕生日")
            DatePicker("誕生日", selection: $date, displayedComponents: [.date]).labelsHidden()
        }
    }
    
    private func currentWeight() -> some View {
        return VStack(alignment: .leading) {
            Text("体重(kg)")
            TextField("例：50.5kg", text: $weight)
                .keyboardType(.numberPad)
                .textFieldStyle(.roundedBorder)
            
        }
    }
    
    private func currentTall() -> some View {
        return VStack(alignment: .leading) {
            Text("身長(cm)")
            TextField("例：170cm", text: $tall)
                .keyboardType(.numberPad)
                .textFieldStyle(.roundedBorder)
        }
    }
    
    private func radioButtonView(
        onClick: () -> Void,
        name: String
    ) -> some View {
        return HStack {
            Button(
                action: {
                    
                },
                label: {
                    Image(systemName: "button.programmable")
                }
            )
            Text(name)
        }
    }
}

struct InitialView_Previews: PreviewProvider {
    static var previews: some View {
        InitialView()
    }
}
