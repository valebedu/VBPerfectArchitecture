//
//  VabeRessourceRouter.swift
//  VabeArchitecture
//
//  Created by Valentin Bercot on 12/02/2017.
//
//

import PerfectHTTP

public class VabeRessourceRouter: VabeRouter
{
    private let id: String
    
    public let endpoint: String
    public let routes: Routes
    
    // TODO: Replace string controller by a real one
    public init(endpoint: String, id: String, controller: String, parent: VabeRessourceRouter? = nil)
    {
        self.id = id
        
        if parent != nil
        {
            self.endpoint = "\(parent!.endpoint)/{\(parent!.id)}/\(endpoint)"
        }
        else
        {
            self.endpoint = endpoint
        }
        
        var routes = Routes()
        
        routes.add(method: .get, uri: "/\(self.endpoint)", handler: { _, _ in })
        routes.add(method: .get, uri: "/\(self.endpoint)/{\(self.id)}", handler: { _, _ in })
        routes.add(method: .post, uri: "/\(self.endpoint)", handler: { _, _ in })
        routes.add(method: .put, uri: "/\(self.endpoint)/{\(self.id)}", handler: { _, _ in })
        routes.add(method: .delete, uri: "/\(self.endpoint)/{\(self.id)}", handler: { _, _ in })
        
        self.routes = routes
    }
}
