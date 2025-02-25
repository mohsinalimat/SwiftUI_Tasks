

import SwiftUI

struct TaskRow: View {
    let todo: ToDo
    @State var todayDate: Date
    
    var body: some View {
        VStack(alignment: .trailing, spacing: 10) {
            HStack {
                Text(todo.title)
                    .bold()
                    .foregroundColor(.white)
                    .font(.system(size: 22))
                    .clipped()
                    .minimumScaleFactor(0.8)
                    .lineLimit(nil)
               
                Image(systemName: todo.isNotify ? "bell.slash.fill" : "bell.fill")
                    .padding()
                    .imageScale(.large)
                    .aspectRatio(contentMode: .fill)
                    .foregroundColor(Color.black)
            }
            Text(todo.due.isEqual(currentDate: todayDate) ? "Today" : todo.due.string(format: "dd-MM-yyyy"))
                .bold()
                .foregroundColor(todo.due.isEqual(currentDate: todayDate) ? Color.blue : Color.primary)
                .font(.system(size: 19))
                .frame(height: 20, alignment: .trailing)
        } .padding()
    }
}
