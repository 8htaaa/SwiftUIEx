import SwiftUI

struct ContentView: View {
    @State var Count = 0
    var body: some View {
        VStack{
            HStack{
                Button(action:{
                    withAnimation{
                        Count -= 1
                    }
                },label:{
                    Image(systemName: "minus")
                        .font(.system(.body,design: .rounded, weight: .black))
                        .foregroundColor(.secondary)
                        .frame(width:40,height:40)
                        .background{
                            RoundedRectangle(cornerRadius: 20)
                                .fill(Color(.quaternarySystemFill))
                        }
                })
                Text("\(Count)")
                    .font(.system(size:30 ,weight: .black ,design: .rounded))
                    .contentTransition(.numericText())
                    .padding()
                Button(action:{
                    withAnimation{
                        Count += 1
                    }
                },label:{
                    Image(systemName: "plus")
                        .font(.system(.body,design: .rounded, weight: .black))
                        .foregroundColor(.secondary)
                        .frame(width:40,height:40)
                        .background{
                            RoundedRectangle(cornerRadius: 20)
                                .fill(Color(.quaternarySystemFill))
                        }
                })
            }
            Button(action:{
                withAnimation{
                    Count = 0
                }
            },label:{
                Text("Reset")
                    .font(.system(.body,design: .rounded, weight: .black))
                    .foregroundColor(.secondary)
                    .frame(width:149,height:40)
                    .background{
                        RoundedRectangle(cornerRadius: 20)
                            .fill(Color(.quaternarySystemFill))
                    }
            })
        }
    }
}
