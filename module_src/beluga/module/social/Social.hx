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

//Module dependencies
import beluga.module.account.Account;
import beluga.module.account.model.User;

@:Css("/beluga/module/account/view/css/")
class Social extends Module {

    public var triggers = new SocialTrigger();
    public var widgets : SocialWidget;

    public var i18n = BelugaI18n.loadI18nFolder("/beluga/module/social/local/");
    
    private var acc : Account;

    public function new() {
        super();
    }

    override public function initialize(beluga : Beluga) {
        this.widgets = new SocialWidget();
        beluga.api.register("social", new SocialApi(beluga, this));
        acc = beluga.getModuleInstance(Account);
    }
    
    public function connect(user : Dynamic) {
        if (Reflect.hasField(user, "email")) {
            var usr = User.findOneByEmail(user.email);
            var pwd = acc.randomPassword();
            if (usr == null) {
                //Create account
                acc.subscribe( {
                    login: user.email,
                    password: pwd,
                    password_conf: pwd,
                    email: user.email
                }, false);
            }
            //login
            acc.login({login: user.email, password: pwd}, false);
        }
    }

}
