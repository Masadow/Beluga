// Copyright 2014 The Beluga Project Developers. See the LICENCE.md
// file at the top-level directory of this distribution and at
// http://haxebeluga.github.io/licence.html.
//
// Licensed under the MIT License.
// This file may not be copied, modified, or distributed
// except according to those terms.

package beluga.module.social;

import haxe.xml.Fast;
import sys.db.Types.SId;
import sys.db.Types;
import sys.db.Manager;

import beluga.Beluga;
import beluga.module.Module;
import beluga.I18n;
import beluga.FlashData;
import haxe.Session;
import beluga.api.BelugaApi;

import beluga.module.social.js.Javascript;
import beluga.module.social.api.SocialApi;

@:Css("/beluga/module/account/view/css/")
class Social extends Module {

    public var triggers = new SocialTrigger();
    public var widgets : SocialWidget;

    public var i18n = BelugaI18n.loadI18nFolder("/beluga/module/social/local/");

    public function new() {
        super();
    }

    override public function initialize(beluga : Beluga) {
        this.widgets = new SocialWidget();
        beluga.api.register("social", new SocialApi(beluga, this));
    }

}
