// Copyright 2014 The Beluga Project Developers. See the LICENCE.md
// file at the top-level directory of this distribution and at
// http://haxebeluga.github.io/licence.html.
//
// Licensed under the MIT License.
// This file may not be copied, modified, or distributed
// except according to those terms.

package beluga.module.social.api;

import beluga.rest.REST;
import haxe.web.Dispatch;

import beluga.Beluga;
import beluga.BelugaException;
import beluga.module.social.Social;

class SocialApi  {
    public var beluga : Beluga;
    public var module : Social;

    public function new(beluga : Beluga, module : Social) {
        this.beluga = beluga;
        this.module = module;
    }

    public function doDefault() {
//        this.module.triggers.defaultPage.dispatch();
    }
}
