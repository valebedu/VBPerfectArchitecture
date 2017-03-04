//
//  VBPerfectRessourceController.swift
//  VBPerfectArchitecture
//
//  Created by Valentin Bercot on 12/02/2017.
//
//

import PerfectHTTP

/**
 Defines a `VBPerfectRessourceController` requirements. Extend it to create a controller which handle ressource routes.
 
 If you want to manage an executable route see `VBPerfectExecuteController`.
 
 - authors: Valentin Bercot
 */
public protocol VBPerfectRessourceController: VBPerfectController
{
    /**
     Handle list request from `VBPerfectRessourceRouter`.
     
     - parameters:
       - request: the HTTP request.
       - response: the HTTP response.
     */
    func handleList(request: HTTPRequest, response: HTTPResponse)
    
    /**
     Handle retrieve request from `VBPerfectRessourceRouter`.
     
     - parameters:
       - request: the HTTP request.
       - response: the HTTP response.
     */
    func handleRetrieve(request: HTTPRequest, response: HTTPResponse)
    
    /**
     Handle create request from `VBPerfectRessourceRouter`.
     
     - parameters:
       - request: the HTTP request.
       - response: the HTTP response.
     */
    func handleCreate(request: HTTPRequest, response: HTTPResponse)
    
    /**
     Handle update request from `VBPerfectRessourceRouter`.
     
     - parameters:
       - request: the HTTP request.
       - response: the HTTP response.
     */
    func handleUpdate(request: HTTPRequest, response: HTTPResponse)
    
    /**
     Handle delete request from `VBPerfectRessourceRouter`.
     
     - parameters:
       - request: the HTTP request.
       - response: the HTTP response.
     */
    func handleDelete(request: HTTPRequest, response: HTTPResponse)
}

public extension VBPerfectRessourceController
{
    /**
     Display list response to client and complete the controller interactor presenter cycle.
     
     - parameters:
       - response: the HTTP response.
     */
    func displayList(response: HTTPResponse)
    {
        response.completed()
    }
    
    /**
     Display retrieve response to client and complete the controller interactor presenter cycle.
     
     - parameters:
       - response: the HTTP response.
     */
    func displayRetrieve(response: HTTPResponse)
    {
        response.completed()
    }
    
    /**
     Display create response to client and complete the controller interactor presenter cycle.
     
     - parameters:
       - response: the HTTP response.
     */
    func displayCreate(response: HTTPResponse)
    {
        response.completed()
    }
    
    /**
     Display update response to client and complete the controller interactor presenter cycle.
     
     - parameters:
       - response: the HTTP response.
     */
    func displayUpdate(response: HTTPResponse)
    {
        response.completed()
    }
    
    /**
     Display delete response to client and complete the controller interactor presenter cycle.
     
     - parameters:
       - response: the HTTP response.
     */
    func displayDelete(response: HTTPResponse)
    {
        response.completed()
    }
}
