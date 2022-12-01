$version: "2"

namespace alloy
use alloy#simpleRestJson
use alloy#Version
use smithy.test#httpResponseTests


apply Version @httpResponseTests([
    {
        id: "VersionOutput"
        protocol: simpleRestJson
        code: 200
        body: """
        {"version":"1.0"}
        """
        params:{
            "version": "1.0"
        }
    }
])

