/*
 * Copyright 2022 LiveKit
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

import Foundation
import Promises

extension LocalAudioTrack {

    public func mute() async throws {

        try await withCheckedThrowingContinuation { continuation in
            _mute().then { _ in
                continuation.resume()
            }.catch { error in
                continuation.resume(throwing: error)
            }
        }
    }

    public func unmute() async throws {

        try await withCheckedThrowingContinuation { continuation in
            _unmute().then { _ in
                continuation.resume()
            }.catch { error in
                continuation.resume(throwing: error)
            }
        }
    }
}
