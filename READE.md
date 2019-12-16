## SwiftUI
### 控件对应关系
![swiftUI_1](/uploads/6790d282dcde75aa0d6f7bae7b295197/swiftUI_1.png)
![Swift_2](/uploads/bdf0c6d42db07bf83bcae2a85b8f9c78/Swift_2.png)
### Basic View
基础控件介绍 
####  Text
```
Text("SwiftUI")
    .foregroundColor(.orange)
    .bold()
    .font(.system(.largeTitle))
    .fontWeight(.medium)
    .italic()
    .shadow(color: .black, radius: 1, x: 0, y: 2)
```
####  TextField
```
TextField(self.$name, placeholder: self.nameText, onEditingChanged: { changed in
    print("onEditing: \(changed)")
}) {
    print("userName: \(self.name)")
    self.endEditing(true)
}}
.padding(10)
.frame(height: 50)
.textFieldStyle(RoundedBorderTextFieldStyle())
.padding(EdgeInsets(top: 0, leading: 20, bottom: 0, trailing: 20))
```
####  SecureField
和TextField一样 密文输入
####  Image
```
Image("icon")
    .resizable()
    .frame(width: 100,
           height: 100,
           alignment: .center)
```
####  Button
```
Button(action: {
    print("Tap")
}) {
   Text("I'm a Button")
}
```
####  NavigationButton
```
NavigationLink(destination: NavigationButtonPage()) {
            Text("NavigationButton").bold()
                .foregroundColor(.orange)
                .font(.largeTitle)
            }
    .navigationBarTitle(Text("Page"))
```
####  Picker
```
Picker(selection: $leftIndex, label: Text("Picker")) {
    ForEach(0..<leftSource.count) {
        Text(self.leftSource[$0]).tag($0)
    }
    }.frame(width: UIScreen.main.bounds.width/2)
```
####  DatePicker
```
DatePicker(selection: $server.date, 
                in: server.spaceDate, 
                displayedComponents: .date, label: {
                    Text("")
                })
```
####  Toggle
```
Toggle(isOn: $isOn) {
    Text("State: \(self.isOn == true ? "开":"关")")
}.padding(20)
```
####  WebView
```
struct WebViewPage : UIViewRepresentable {
    func makeUIView(context: Context) -> WKWebView  {
        return WKWebView()
    }
    func updateUIView(_ uiView: WKWebView, context: Context) {
        let req = URLRequest(url: URL(string: "https://www.apple.com")!)
        uiView.load(req)
    }
}
```
#### Slider
```
Slider(value: $data.rating)
```
#### Stepper
```
Stepper(value: $value, step: 2, onEditingChanged: { c in
    print(c)
}) {
    Text("Stepper Value: \(self.value)")
    }.padding(50)
```
#### ViewController
```
struct ControllerPage<T: UIViewController> : UIViewControllerRepresentable {
    
    typealias UIViewControllerType = UIViewController
    
    func makeUIViewController(context: UIViewControllerRepresentableContext<ControllerPage>) -> UIViewController {
        return T()
    }
    
    func updateUIViewController(_ uiViewController: UIViewController, context: UIViewControllerRepresentableContext<ControllerPage>) {
        debugPrint("\(#function)：\(type(of: T.self))")
    }
    
}
```
### Layout
#### HStack  用于将子视图排列在水平线上的视图。
```
HStack {
    Text("made in China.")
    Divider() // Just add a line.
    Text("the People's Republic Of China.")
}
```
#### VStack VStack 用于将子视图排列在垂直线上的视图。
```
VStack {
    Text("made in China.")
    Divider() // Just add a line.
    Text("the People's Republic Of China.")
}
```
#### ZStack 用于覆盖子视图，在两轴上对齐。
```
ZStack {
    Text("made in China.")
    Divider() // Just add a line.
    Text("the People's Republic Of China.")
}
```
#### Group
```
Group {
    Text("Hello World !")
    Text("Hello World !")
    }
```
#### Spacer 填充
```
HStack {
    Image(systemName: "clock")
    Spacer()
    Text("Time")
}
```
#### Divider 一条线
```
HStack {
    Image(systemName: "clock")
    Divider()
    Text("Time")
}.fixedSize()
```

### padding、 spacing and alignment 作用于块组件中

### 在SwiftUI中使用UIKit
#### UIViewRepresentable
```
import UIKit
import SwiftUI

struct ActivityIndicator: UIViewRepresentable {
    @Binding var isAnimating: Bool
    
    func makeUIView(context: Context) -> UIActivityIndicatorView {
        let v = UIActivityIndicatorView()
        
        return v
    }
    
    func updateUIView(_ uiView: UIActivityIndicatorView, context: Context) {
        if isAnimating {
            uiView.startAnimating()
        } else {
            uiView.stopAnimating()
        }
    }
}
```

#### Coordinator (If you want to bridge UIKit data binding (delegate, target/action) use Coordinator.)
```
import SwiftUI
import UIKit

struct PageControl: UIViewRepresentable {
    var numberOfPages: Int
    @Binding var currentPage: Int

    func makeUIView(context: Context) -> UIPageControl {
        let control = UIPageControl()
        control.numberOfPages = numberOfPages
        control.addTarget(
            context.coordinator,
            action: #selector(Coordinator.updateCurrentPage(sender:)),
            for: .valueChanged)

        return control
    }

    func updateUIView(_ uiView: UIPageControl, context: Context) {
        uiView.currentPage = currentPage
    }

    func makeCoordinator() -> Coordinator {
        Coordinator(self)
    }

    // This is where old paradigm located
    class Coordinator: NSObject {
        var control: PageControl

        init(_ control: PageControl) {
            self.control = control
        }

        @objc func updateCurrentPage(sender: UIPageControl) {
            control.currentPage = sender.currentPage
        }
    }
}

```
#### UIViewControllerRepresentable 在SwiftUI中使用ViewController
```
import SwiftUI
import UIKit

struct PageViewController: UIViewControllerRepresentable {
    var controllers: [UIViewController]

    func makeUIViewController(context: Context) -> UIPageViewController {
        let pageViewController = UIPageViewController(
            transitionStyle: .scroll,
            navigationOrientation: .horizontal)

        return pageViewController
    }

    func updateUIViewController(_ pageViewController: UIPageViewController, context: Context) {
        pageViewController.setViewControllers(
            [controllers[0]], direction: .forward, animated: true)
    }
}
```
### SwiftUI in UIKit
####  UIHostingController
```
let vc = UIHostingController(rootView: Text("Hello World"))
let vc = UIHostingController(rootView: ContentView())
```

### State and Data Flow
[苹果官方文档](https://developer.apple.com/videos/play/wwdc2019/226/)

### ##  参考资料
[苹果官方文档](https://developer.apple.com/documentation/swiftui)
[好的文档](https://github.com/Jinxiansen/SwiftUI)
[各种示例](https://github.com/ivanvorobei/SwiftUI)
[暴躁老哥教程](https://fuckingswiftui.com/)

