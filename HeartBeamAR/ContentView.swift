import SwiftUI

struct ContentView: View {
    var body: some View {
        return ARViewControllerContainer().edgesIgnoringSafeArea(.all)
    }
}

//UIViewController를 SwiftUI로 사용하기 위해 UIViewControllerRepresentable 사용
//makeUIViewController로 처음 viewController만 생성
//나머지는 사용하지는 않지만 프로토콜을 따르기 위해 삭제하면 안 됨
struct ARViewControllerContainer: UIViewControllerRepresentable {
    func makeUIViewController(context: UIViewControllerRepresentableContext<ARViewControllerContainer>) -> ARViewController {
        let viewController = ARViewController()
        return viewController
    }
    
    func updateUIViewController(_ uiViewController: ARViewController, context: UIViewControllerRepresentableContext<ARViewControllerContainer>) {
        
    }
    
    func makeCoordinator() -> ARViewControllerContainer.Coordinator {
        return Coordinator()
    }
    
    class Coordinator: NSObject {
        
    }
}
