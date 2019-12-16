//
//  Home.swift
//  BasicView
//
//  Created by helios on 2019/12/13.
//  Copyright © 2019 helios. All rights reserved.
//

import SwiftUI

struct Home: View {
    var body: some View {
        NavigationView {
            List {
                Section(header: Text("基础控件")) {
                    NavigationLink(destination: TextPage()) {
                        HomeListRow(title: "Text", subTitle: "显示一行或多行只读文本")
                    }
                    NavigationLink(destination: TextFieldPage()) {
                        HomeListRow(title: "TextField", subTitle: "输入控件")
                    }
                    NavigationLink(destination: TextFieldPage()) {
                        HomeListRow(title: "SecureField", subTitle: "安全输入私密文本的输入控件")
                    }
                    NavigationLink(destination: ImagePage()) {
                        HomeListRow(title: "Image",subTitle: "用以展示本地图片")
                    }
                    NavigationLink(destination: WebImagePage()) {
                        HomeListRow(title: "WebImage",subTitle: "下载网络图片并展示")
                    }
                }
                Section(header: Text("按钮")) {
                    NavigationLink(destination: ButtonPage()) {
                        HomeListRow(title: "Button",subTitle: "触发时执行操作的按钮")
                        }
                    NavigationLink(destination: EditButtonPage()) {
                        HomeListRow(title: "EditButtonn",subTitle: "用于切换当前编辑模式的按钮")
                        }
                    NavigationLink(destination: NavigationButtonPage()) {
                        HomeListRow(title: "NavigationButton",subTitle: "点击后触发导航跳转的按钮")
                        }
                }
                Section(header: Text("List和ScrollView")) {
                    NavigationLink(destination: ListPage()) {
                            HomeListRow(title: "ListPage",subTitle: "列表组件")
                        }
                    
                    NavigationLink(destination: ScrollViewPage()) {
                            HomeListRow(title: "ScrollViewPage",subTitle: "滚动视图")
                    }
                }
                Section(header: Text("Tab组件")) {
                    NavigationLink(destination: TabViewPage()) {
                            HomeListRow(title: "TabViewPage",subTitle: "Tab组件")
                    }
                }
                
                Section(header: Text("选择器")) {
                    NavigationLink(destination: PickerPage()) {
                            HomeListRow(title: "Picker",subTitle: "可自定义数据源的 Picker 选择器")
                    }
                    
                    NavigationLink(destination: DatePickerPage()) {
                            HomeListRow(title: "DatePicker",subTitle: "日期展示与选择")
                    }
                    NavigationLink(destination: TogglePage()) {
                            HomeListRow(title: "Toggle",subTitle: "开关状态切换")
                    }
                    NavigationLink(destination: SliderPage()) {
                            HomeListRow(title: "Slider",subTitle: "用以设置指定范围内的值")
                    }
                    NavigationLink(destination: StepperPage()) {
                            HomeListRow(title: "StepperPage",subTitle: "用以增加或减少数值")
                    }
                }
                
                Section(header: Text("Alert弹框视图")) {
                    NavigationLink(destination: AlertPage()) {
                            HomeListRow(title: "AlertPage",subTitle: "展示一个弹框提醒")
                    }
                    NavigationLink(destination: ActionSheetPage()) {
                            HomeListRow(title: "ActionSheetPage",subTitle: "弹出一个选择框")
                    }
                    NavigationLink(destination: PopoverPage()) {
                                               HomeListRow(title: "PopoverPage",subTitle: "Pop 弹出一个视图")
                                       }
                }
                Section(header: Text("Container")) {
                    NavigationLink(destination: GroupPage()) {
                            HomeListRow(title: "TabViewPage",subTitle: "Group组件")
                    }
                }
                Section(header: Text("布局")) {
                    NavigationLink(destination: HStackPage()) {
                            HomeListRow(title: "HStackPage",subTitle: "x轴展示")
                    }
                    NavigationLink(destination: VStackPage()) {
                            HomeListRow(title: "VStackPage",subTitle: "y轴展示")
                    }
                    NavigationLink(destination: ZStackPage()) {
                            HomeListRow(title: "ZStackPage",subTitle: "z轴展示")
                    }
                    NavigationLink(destination: GroupPage()) {
                            HomeListRow(title: "GroupPage",subTitle: "块组")
                    }
                }
                Section(header: Text("特殊视图")) {
                    NavigationLink(destination: WebViewPage()) {
                            HomeListRow(title: "WebViewPage",subTitle: "WKWebView")
                    }
                    NavigationLink(destination: ControllerPage<UIKitController>()) {
                        HomeListRow(title: "UIViewController", subTitle: "打开 UIViewController")
                    }
                }
                Section(header: Text("国外老哥写的UI")) {
                    NavigationLink(destination: BHome()) {
                            HomeListRow(title: "BHome",subTitle: "好看的UI")
                    }
                }
                
                
            }
            .listStyle(GroupedListStyle())
            .navigationBarTitle(Text("Example"), displayMode: .large)
            .navigationBarItems(trailing: Button(action: {
                print("Tap")
            }, label: {
                Text("Right").foregroundColor(.blue)
            }))
        }
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
