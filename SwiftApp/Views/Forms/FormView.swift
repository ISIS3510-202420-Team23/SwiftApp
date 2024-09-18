import SwiftUI
import PhotosUI

struct CustomFormView: View {
    @State private var placeTitle = ""
    @State private var placeDescription = ""
    @State private var placeAddress = ""
    @State private var selectedImage1: UIImage?
    @State private var selectedImage2: UIImage?
    @State private var showImagePicker1 = false
    @State private var showImagePicker2 = false

    let maxTitleCharacters = 32
    let maxAddressCharacters = 48
    let maxDescriptionCharacters = 500

    var body: some View {
        ZStack {
            Color.white
                .ignoresSafeArea() // Full background color
            
            VStack(alignment: .leading) {
                // Header for the form
                Text("Step 1")
                //quiero poner la font bold LeagueSpartan-Regular
                    .font(.custom("LeagueSpartan-ExtraBold", size: 20))
                    .foregroundColor(.black)
                    .padding(.bottom, 2)
                
                Text("List your place!")
                    .font(.title)
                    .foregroundColor(.black)
                    .padding(.bottom, 5)
                
                // Custom form layout
                VStack(alignment: .leading, spacing: 10) {
                    // Section 1: Title input
                    Text("Give your place a short title")
                        .foregroundColor(.blue)
                        .font(.title3)
                    
                    TextField("Awesome title", text: $placeTitle)
                        .padding()
                        .background(Color.white)
                        .cornerRadius(8)
                        .overlay(RoundedRectangle(cornerRadius: 8).stroke(Color.blue, lineWidth: 2))
                        .onChange(of: placeTitle) { newValue in
                            if newValue.count > maxTitleCharacters {
                                placeTitle = String(newValue.prefix(maxTitleCharacters))
                            }
                        }
                    
                    // Character count for title
                    Text("\(placeTitle.count)/\(maxTitleCharacters)")
                        .font(.footnote)
                        .foregroundColor(placeTitle.count > maxTitleCharacters ? .red : .gray)
                        .padding(.bottom, 5)

                    // Section 2: Description input
                    Text("Create your description")
                        .foregroundColor(.blue)
                        .font(.title3)
                    
                    ZStack(alignment: .topLeading) {
                        TextEditor(text: $placeDescription)
                            .padding()
                            .frame(height: 100)  // Adjust height for larger view
                            .background(Color.white)
                            .cornerRadius(8)
                            .overlay(RoundedRectangle(cornerRadius: 8).stroke(Color.blue, lineWidth: 2))
                            .multilineTextAlignment(.leading) // Align the text to the top
                            .onChange(of: placeDescription) { newValue in
                                if newValue.count > maxDescriptionCharacters {
                                    placeDescription = String(newValue.prefix(maxDescriptionCharacters))
                                }
                            }

                        if placeDescription.isEmpty {
                            Text("Awesome description")
                                .foregroundColor(.gray)
                                .padding(.horizontal, 15)
                                .padding(.vertical, 25)
                        }
                    }

                    // Character count for description
                    Text("\(placeDescription.count)/\(maxDescriptionCharacters)")
                        .font(.footnote)
                        .foregroundColor(placeDescription.count > maxDescriptionCharacters ? .red : .gray)
                        .padding(.bottom, 5)
                    
                    Text("Add some photos")
                        .foregroundColor(.blue)
                        .font(.title3)
                    
                    // Image upload section
                    HStack(spacing: 20) {
                        // First image picker
                        ZStack {
                            RoundedRectangle(cornerRadius: 10)
                                .stroke(Color.blue, lineWidth: 2)
                                .frame(width: 150, height: 100)
                            
                            if let image = selectedImage1 {
                                Image(uiImage: image)
                                    .resizable()
                                    .scaledToFill()
                                    .frame(width: 150, height: 100)
                                    .clipped()
                                    .onTapGesture {
                                        showImagePicker1.toggle()
                                    }
                            } else {
                                Text("+")
                                    .font(.largeTitle)
                                    .foregroundColor(.blue)
                                    .onTapGesture {
                                        showImagePicker1.toggle()
                                    }
                            }
                        }
                        .sheet(isPresented: $showImagePicker1) {
                            ImagePicker(selectedImage: $selectedImage1)
                        }
                        
                        // Second image picker
                        ZStack {
                            RoundedRectangle(cornerRadius: 10)
                                .stroke(Color.blue, lineWidth: 2)
                                .frame(width: 150, height: 100)
                            
                            if let image = selectedImage2 {
                                Image(uiImage: image)
                                    .resizable()
                                    .scaledToFill()
                                    .frame(width: 150, height: 100)
                                    .clipped()
                                    .onTapGesture {
                                        showImagePicker2.toggle()
                                    }
                            } else {
                                Text("+")
                                    .font(.largeTitle)
                                    .foregroundColor(.blue)
                                    .onTapGesture {
                                        showImagePicker2.toggle()
                                    }
                            }
                        }
                        .sheet(isPresented: $showImagePicker2) {
                            ImagePicker(selectedImage: $selectedImage2)
                        }
                    } .padding(.bottom, 5)
                    
                    Text("Where's your place located?")
                        .foregroundColor(.blue)
                        .font(.title3)
                    
                    TextField("Enter your address...", text: $placeAddress)
                        .padding()
                        .background(Color.white)
                        .cornerRadius(8)
                        .overlay(RoundedRectangle(cornerRadius: 25).stroke(Color.blue, lineWidth: 2))
                        .onChange(of: placeAddress) { newValue in
                            if newValue.count > maxAddressCharacters {
                                placeAddress = String(newValue.prefix(maxAddressCharacters))
                            }
                        }
                }
                .padding()
                
                // Buttons Section
                HStack {
                    Button(action: {
                        // Action to go back
                    }) {
                        Text("Back")
                            .font(.title3)
                            .foregroundColor(.blue)
                            .padding(.vertical, 10)  // Reduce height
                            .padding(.horizontal, 30) // Increase width
                            .background(Color.white)
                            .overlay(RoundedRectangle(cornerRadius: 8).stroke(Color.blue, lineWidth: 2)) // Blue border
                            .cornerRadius(8)
                    }
                    
                    Spacer()
                    
                    Button(action: {
                        // Action to go to the next screen
                    }) {
                        Text("Next")
                            .font(.title3)
                            .foregroundColor(.white)
                            .padding(.vertical, 10)  // Reduce height
                            .padding(.horizontal, 30) // Increase width
                            .background(Color.blue)
                            .cornerRadius(8)
                    }
                }
                .padding(.horizontal, 20) // Space around the buttons
                .padding(.top, 10) // Space between the buttons and the form
            }
            .padding()
        }
    }
}

// ImagePicker struct for selecting images
struct ImagePicker: UIViewControllerRepresentable {
    @Binding var selectedImage: UIImage?

    class Coordinator: NSObject, UINavigationControllerDelegate, UIImagePickerControllerDelegate {
        var parent: ImagePicker

        init(parent: ImagePicker) {
            self.parent = parent
        }

        func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
            if let image = info[.originalImage] as? UIImage {
                parent.selectedImage = image
            }

            picker.dismiss(animated: true)
        }
    }

    func makeCoordinator() -> Coordinator {
        Coordinator(parent: self)
    }

    func makeUIViewController(context: Context) -> UIImagePickerController {
        let picker = UIImagePickerController()
        picker.delegate = context.coordinator
        return picker
    }

    func updateUIViewController(_ uiViewController: UIImagePickerController, context: Context) {}
}

struct CustomFormView_Previews: PreviewProvider {
    static var previews: some View {
        CustomFormView()
    }
}
