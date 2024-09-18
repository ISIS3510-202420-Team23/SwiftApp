import SwiftUI

struct OfferDetailView: View {
    
    @Environment(\.dismiss) var dismiss
    var body: some View {
        ScrollView{
            ZStack (alignment: .topLeading){
                OfferImageCarouselView()
                    .frame(height: 370)
                    .tabViewStyle(.page)
                Button {
                    dismiss()
                } label: {
                    Image(systemName: "chevron.left")
                        .foregroundStyle(Color(hex: "FFF4CF"))
                        .background{
                            Circle()
                                .fill(Color(hex: "0C356A"))
                                .frame(width: 40, height: 40)
                        }
                        .padding(32)
                }
            }
            
            VStack(alignment: .leading, spacing: 8){
                Text("Apartment - T2 - 1102")
                    .font(.title)
                    .fontWeight(.semibold)
                
                HStack {
                    Image(systemName: "mappin.and.ellipse")
                        .foregroundColor(Color(hex: "000000"))
                    Text("Ac. 19 #2a - 10, Bogotá")
                        .font(.subheadline)
                        .foregroundColor(Color(hex: "000000"))
                }
                .frame(maxWidth: .infinity, alignment: .leading)
            }
            .padding(.leading)
            
            VStack(alignment: .leading, spacing: 8){
                Text ("Facilities")
                    .font(.headline)
                
                ScrollView(.horizontal, showsIndicators: false){
                    HStack(spacing: 16) {
                        VStack{
                            Image(systemName: "bed.double")
                            Text("4 Bedroom")
                        }
                        .frame(width: 132, height: 85)
                        .overlay {
                            RoundedRectangle(cornerRadius: 12)
                                .stroke(lineWidth: 1)
                                .foregroundStyle(Color(hex: "CFCFCF"))
                        }
                        
                        VStack {
                            Image(systemName: "shower")
                            Text("1 Bathroom")
                        }
                        .frame(width: 132, height: 85)
                        .overlay {
                            RoundedRectangle(cornerRadius: 12)
                                .stroke(lineWidth: 1)
                                .foregroundStyle(Color(hex: "CFCFCF"))
                        }

                        VStack {
                            Image(systemName: "person.2")
                            Text("3 Roommates")
                        }
                        .frame(width: 132, height: 85)
                        .overlay {
                            RoundedRectangle(cornerRadius: 12)
                                .stroke(lineWidth: 1)
                                .foregroundStyle(Color(hex: "CFCFCF"))
                        }
                    }

                }
            }
            .padding(.leading)
            .padding(.top, 7)

            VStack (alignment: .leading) {
                Text("Description")
                    .font(.headline)
                    .frame(width: 250, alignment: .leading )
                
                Text ("This spacious apartment in City U is shared with three other tenants and offers access to top-tier amenities, including a gym and study rooms. Enjoy modern living in a vibrant community with everything you need just steps away.")
                    .font(.caption)
            }
            .padding(.top)
            .padding(.leading)
        }
        .ignoresSafeArea()
        .padding(.bottom, 64)
        .overlay(alignment: .bottom){
            VStack{
                Divider ()
                    .padding(.bottom)
                
                HStack {
                    
                    Image(systemName: "person.crop.circle.fill")
                                .resizable()
                                .frame(width: 55, height: 55)
                                .clipShape(Circle())
                                
                    VStack (alignment: .leading)
                    {
                        Text ("Paula Daza")
                            .font(.footnote)
                            .fontWeight(.semibold)
                            .foregroundColor(Color(hex: "0C356A"))
                        Text ("Property agent")
                            .font(.footnote)
                            .foregroundColor(Color(hex: "0C356A"))
                        Text ("$ 1.500.000,00")
                            .font(.subheadline)
                            .padding(.top, 1)
                            
                    }
                    Spacer ()
                    
                    Button {
                        
                    } label:{
                        Text("Contact")
                            .foregroundStyle(.white)
                            .font(.subheadline)
                            .frame(width: 140, height:50)
                            .background(Color(hex: "0C356A"))
                            .clipShape(RoundedRectangle(cornerRadius: 30))
                        
                    }
                }
                .padding(.horizontal,18)
            }
            .background(Color(hex: "FFF4CF"))
        }
    }
}

#Preview{
    OfferDetailView()
}
