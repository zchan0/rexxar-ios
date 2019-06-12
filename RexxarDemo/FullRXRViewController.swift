//
//  FullRXRViewController.swift
//  RexxarDemo
//
//  Created by GUO Lin on 8/19/16.
//  Copyright © 2016 Douban.Inc. All rights reserved.
//

import UIKit

class FullRXRViewController: RXRViewController {

  override func viewDidLoad() {
    super.viewDidLoad()
    view.backgroundColor = UIColor.white

    // Widgets
    let pullRefreshWidget = RXRPullRefreshWidget()
    let titleWidget = RXRNavTitleWidget()
    let alertDialogWidget = RXRAlertDialogWidget()
    let toastWidget = RXRToastWidget()
    let navMenuWidget = RXRNavMenuWidget()
    widgets = [titleWidget, alertDialogWidget, pullRefreshWidget, toastWidget, navMenuWidget]

    // ContainerAPIs
    let geoContainerAPI = RXRGeoContainerAPI()
    let logContainerAPI = RXRLogContainerAPI()
    RXRContainerInterceptor.containerAPIs = [geoContainerAPI, logContainerAPI]
    RXRNSURLProtocol.registerRXRProtocolClass(RXRContainerInterceptor.self)

    // Decorators
    let headers = ["Authorization": "Bearer 388c0134ecea3b68a9a4039ec6beb238"]
    let param: [AnyHashable : Any] = [:]
    let requestDecorator = RXRRequestDecorator(headers: headers, parameters: param)
    RXRRequestInterceptor.decorators = [requestDecorator]
    RXRNSURLProtocol.registerRXRProtocolClass(RXRRequestInterceptor.self)
  }

  deinit {
    RXRNSURLProtocol.unregisterRXRProtocolClass(RXRContainerInterceptor.self)
    RXRNSURLProtocol.unregisterRXRProtocolClass(RXRRequestInterceptor.self)
  }
}
