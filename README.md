# testSDWebImageApps

This project demonstrate how to configure [SDWebImage](https://github.com/SDWebImage/SDWebImage) to make it work for snapshot testing (this project uses [SnapshotTesting](https://github.com/pointfreeco/swift-snapshot-testing)).

## Important files

This file contains the code to setup SDWebImage to serve test images, it can be a placeholder or images (any url) from the test target xcassets (with url like : `sample://imageName`)

- [SDWebImage+Testing.swift](/testSDWebImageAppsTests/SDWebImage%2BTesting.swift)

Important note: SDWebImage must be configured before any use of the SDWebImage plugin.
To make sure that no code is run you can check if the app is running in test mode like done in [SceneDelegate.swift](/testSDWebImageApps/SceneDelegate.swift#L20) (Method from this [blog post](http://fullytyped.com/2019/01/06/unit-test-without-entire-app/)).

