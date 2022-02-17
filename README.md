# testSDWebImageApps

This project demonstrate how to configure [SDWebImage](https://github.com/SDWebImage/SDWebImage) to make it work for snapshot testing (this project uses [SnapshotTesting](https://github.com/pointfreeco/swift-snapshot-testing)).

## Important files

This file contains the code to setup SDWebImage to serve test images, it can be a placeholder or images (any url) from the test target xcassets (with url like : `sample://imageName`)

- [SDWebImage+Testing.swift](/testSDWebImageAppsTests/SDWebImage%2BTesting.swift)
