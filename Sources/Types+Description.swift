//  Copyright (c) 2018 Luc Dion
//  Permission is hereby granted, free of charge, to any person obtaining a copy
//  of this software and associated documentation files (the "Software"), to deal
//  in the Software without restriction, including without limitation the rights
//  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//  copies of the Software, and to permit persons to whom the Software is
//  furnished to do so, subject to the following conditions:
//
//  The above copyright notice and this permission notice shall be included in
//  all copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
//  THE SOFTWARE.

#if os(iOS) || os(tvOS)
import UIKit
#else
import AppKit
#endif

extension HorizontalAlign {
    var description: String {
        switch self {
        case .left: return "left"
        case .center: return "center"
        case .right: return "right"
        case .start: return "start"
        case .end: return "end"
        }
    }
}

extension VerticalAlign {
    var description: String {
        switch self {
        case .top: return "top"
        case .center: return "center"
        case .bottom: return "bottom"
        }
    }
}

extension CGFloat {
    var description: String {
        if self.truncatingRemainder(dividingBy: 1) == 0.0 {
            return "\(Int(self))"
        } else {
            return "\(self)"
        }
    }

    var optionnalDescription: String {
        return self == 0 ? "" : self.description
    }
}

extension FitType {
    var description: String {
        switch self {
        case .width: return ".width"
        case .height: return ".height"
        case .widthFlexible: return ".widthFlexible"
        case .heightFlexible: return ".heightFlexible"
        }
    }
}

extension WrapType {
    var description: String {
        switch self {
        case .all: return ".all"
        case .horizontally: return ".horizontally"
        case .vertically: return ".vertically"
        }
    }
}
