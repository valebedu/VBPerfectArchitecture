//
//  VabeExecuteRouter.swift
//  VabeArchitecture
//
//  Created by Valentin Bercot on 12/02/2017.
//
//

import PerfectHTTP

public class VabeExecuteRouter: VabeRouter
{
    private let method: HTTPMethod
    
    public let endpoint: String
    public let routes: Routes
    
    public init(endpoint: String, method: HTTPMethod, controller: VabeExecuteController)
    public init(endpoint: String, method: HTTPMethod, controller: VabeExecuteController, parent: VabeRessourceRouter? = nil)
    {
        self.endpoint = endpoint
        self.method = method
        
        if parent != nil
        {
            self.endpoint = "\(parent!.endpoint)/{\(parent!.id)}/\(endpoint)"
        }
        else
        {
            self.endpoint = endpoint
        }
        
        var routes = Routes()
        
        routes.add(method: self.method, uri: "/\(self.endpoint)", handler: controller.handle)
        
        self.routes = routes
    }
}
