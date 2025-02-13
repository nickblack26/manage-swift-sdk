import Foundation

public struct PSAClient: Sendable {
    internal var request: URLRequest
    // public let project: TaskrouterClient
    public let service: ServiceClient
    // public let company: TaskrouterClient
    // public let system: TaskrouterClient

    public init(
        companyId: String,
        companyUrl: String,
        publicKey: String,
        privateKey: String,
        clientId: String,
        entryPoint: String = "v4_6_release",  // optional, defaults to 'v4_6_release'
        apiVersion: String = "3.0",  // optional, defaults to '3.0.0'
        timeout: Int = 20000,  // optional, request connection timeout in ms, defaults to 20000
        retry: Bool = false,  // optional, defaults to false
        // retryOptions: {             // optional, override retry behavior, defaults as shown
        //     retries: 4,               // maximum number of retries
        //     minTimeout: 50,           // number of ms to wait between retries
        //     maxTimeout: 20000,        // maximum number of ms between retries
        //     randomize: true,          // randomize delay between retries on timeouts
        // },
        debug: Bool = false  // optional, enable debug logging
            // logger: (level, text, meta) => { } // optional, pass in logging function
    ) {
        var components = URLComponents()
        components.scheme = "https"
        components.host = companyUrl
        components.path = "/\(entryPoint)/apis/\(apiVersion)"

        guard let url = components.url else {
            fatalError("Invalid URL")
        }

        var request: URLRequest = .init(url: url)
        let encoded = "\(companyId)+\(publicKey):\(privateKey)".toBase64()
        request.allHTTPHeaderFields = [
            "Authorization": "Basic \(encoded)",
            "clientId": clientId,
        ]

        self.request = request

        var serviceRequest = request
        serviceRequest.url = request.url?.appendingPathComponent("/service")
        self.service = .init(request: serviceRequest)
    }
}
