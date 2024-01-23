import SwiftUI

struct InitialView: View {
    
    @State var name = ""
    @State var date = Date()
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            userNameView()
            genderView()
            birthdayView()
            Spacer()
        }.padding(10)
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
