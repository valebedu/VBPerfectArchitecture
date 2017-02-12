//
//  VabeExecuteController.swift
//  VabeArchitecture
//
//  Created by Valentin Bercot on 12/02/2017.
//
//

import PerfectHTTP

public protocol VabeExecuteController: VabeController
{
    func handle(request: HTTPRequest, response: HTTPResponse)
}

public extension VabeExecuteController
{
    func display(response: HTTPResponse)
    {
        response.completed()
    }
}
