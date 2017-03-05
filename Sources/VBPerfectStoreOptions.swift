//
//  VBPerfectStoreOptions.swift
//  VBPerfectArchitecture
//
//  Created by Valentin Bercot on 13/02/2017.
//
//

import Foundation
import PerfectHTTP

/**
 Allow to convert order limit and page from a request to formatted data.
 
 - authors: Valentin Bercot
 */
public struct VBPerfectStoreOptions
{
    /**
     Order, composed of the variable to order by and the ascending order.
     */
    public let order: (String, Bool)?
    
    /**
     Limit (0..<100).
     */
    public let limit: UInt8?
    
    /**
     Page.
     */
    public let page: UInt64?
    
    /**
     - parameters:
       - order: the order.
       - limit: the limit.
       - page: the page.
     
     - throws: a `VBPerfectStoreError` in case of bad format or limit reached.
     */
    public init(order: String?, limit: String?, page: String?) throws
    {
        if let orderParam = order
        {
            var order = orderParam
            var ascending = true
            
            order = order.lowercased().trimmingCharacters(in: CharacterSet(charactersIn: " "))
            
            if order.hasPrefix("+")
            {
                order = order.substring(from: order.index(after: order.startIndex)).trimmingCharacters(in: CharacterSet(charactersIn: " "))
            }
            else if order.hasPrefix("-")
            {
                order = order.substring(from: order.index(after: order.startIndex)).trimmingCharacters(in: CharacterSet(charactersIn: " "))
                
                ascending = false
            }
            
            self.order = (order, ascending)
        }
        else
        {
            self.order = nil
        }
        
        if let limitParam = limit
        {
            if let limit = UInt8(limitParam)
            {
                if (limit >= 10 && limit <= 100)
                {
                    self.limit = limit
                }
                else
                {
                    throw VBPerfectStoreError.limitReached(limit: limit)
                }
            }
            else
            {
                throw VBPerfectStoreError.badFormat(parameter: "limit")
            }
        }
        else
        {
            self.limit = nil
        }
        
        if let pageParam = page
        {
            if let page = UInt64(pageParam)
            {
                self.page = page
            }
            else
            {
                throw VBPerfectStoreError.badFormat(parameter: "page")
            }
        }
        else
        {
            self.page = nil
        }
    }
    
    /**
     - parameters:
       - request: the HTTP request in which order, limit and page are.
     
     - throws: a `VBPerfectStoreError` in case of bad format or limit reached.
     */
    public init(request: HTTPRequest) throws
    {
        do
        {
            try self.init(order: request.param(name: "order"), limit: request.param(name: "limit"), page: request.param(name: "page"))
        }
        catch
        {
            throw error
        }
    }
}
