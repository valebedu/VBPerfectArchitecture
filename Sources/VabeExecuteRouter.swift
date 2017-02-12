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
    
    // TODO: Replace string controller by a real one
    public init(endpoint: String, method: HTTPMethod, controller: String)
    {
        self.endpoint = endpoint
        self.method = method
        
        var routes = Routes()
        
        routes.add(method: self.method, uri: "/\(self.endpoint)", handler: { _, _ in })
        
        self.routes = routes
    }
}
