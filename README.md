# Tedee Mobile SDK for iOS

Welcome to the Tedee Mobile SDK for iOS! This comprehensive toolkit empowers developers to seamlessly integrate Tedee Lock functionality into their iOS applications. Whether you're building a smart home app or enhancing access control features, our SDK provides the necessary tools to communicate with and control Tedee locks with ease, leveraging Bluetooth Low Energy (BLE) communication protocol.

## Features

- **Effortless Integration**: Incorporate Tedee lock functionality into your iOS applications seamlessly.
- **Full Control**: Communicate with and operate Tedee locks, including [Tedee PRO](https://tedee.com/product-info/tedee-pro/) and [Tedee GO](https://tedee.com/product-info/tedee-go-best-keyless-access/), with comprehensive control options.
- **Efficient Communication**: Utilize Bluetooth Low Energy (BLE) for efficient device interaction, ensuring optimal performance and minimal energy consumption.

## Getting Started

Getting started with the Tedee Mobile SDK is straightforward:

### Installation

Add Tedee Mobile SDK package to your project using repository url: [https://github.com/tedee-com/tedee-mobile-sdk-ios](https://github.com/tedee-com/tedee-mobile-sdk-ios)

### Integration

Import TedeeLock module

`@import TedeeLock`

### Initialization

To properly initialize project you will need:

- mobile public key (generated with `TedeeLockManager.publicKey`)
- lock serial number (you can find it in Tedee app)
- device public key, certificate and certificate expiry date (see example app how to get them from Tedee API)

Use `TedeeSerial` and `TedeeCertificate` objects to store configured data.

When all required data is provided you can try to connect to the lock using `TedeeManager's` `connect(:SerialNumber, certificate: TedeeCertificate, keepConnection: Bool)` method.

### Example

```swift
let mobilePublicKey = TedeeLockManager.publicKey
let serialNumber = try TedeeSerialNumber(serialNumber: "00000000-000000")
guard let expirationDate = Date.date(from: "[date string from API]",
                                     format: "yyyy-MM-dd'T'HH:mm:ss.SSSSSSS'Z'", isUTC: true) else {
    fatalError("Cannot create expirationDate")
}
let certificate = try TedeeCertificate(certificate: "[certificate string from API]",
                                       expirationDate: expirationDate,
                                       devicePublicKey: "[device public key from API]",
                                       mobilePublicKey: mobilePublicKey)

TedeeManager.shared.connect(serialNumber, certificate: certificate, keepConnection: true)
```

## Example App

Explore the capabilities of the Tedee Mobile SDK through our [example app](https://github.com/tedee-com/tedee-example-ble-ios). This example app demonstrates various use cases and serves as a practical guide for integrating the SDK into your projects.

### API Documentation

Documentation describing public API of the Tedee Lock framework is available at [https://](). Refer to this documentation for in-depth insights into available functionalities and methods.

For more details about Tedee Lock BLE API, available commands, their parameters, notifications and more please refer to our BLE API documentation available at [https://tedee-tedee-lock-ble-api-doc.readthedocs-hosted.com/en/latest/index.html](https://tedee-tedee-lock-ble-api-doc.readthedocs-hosted.com/en/latest/index.html).

### Disclaimer

Provided SDK is currently in alpha phase. New versions of the SDK can contain changes in public API. Please take a look at release notes.

### Support

For any inquiries, feedback, or assistance, our iOS team is here to help. Reach out to us at [Discussions](https://github.com/tedee-com/tedee-mobile-sdk-ios/discussions) section with any questions or concerns you may have.

We're excited to witness the innovative solutions you create with the Tedee Mobile SDK! Happy coding! 🚀
