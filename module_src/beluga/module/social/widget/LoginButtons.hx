// Copyright 2014 The Beluga Project Developers. See the LICENCE.md
// file at the top-level directory of this distribution and at
// http://haxebeluga.github.io/licence.html.
//
// Licensed under the MIT License.
// This file may not be copied, modified, or distributed
// except according to those terms.

package beluga.module.social.widget;

import beluga.Beluga;
import beluga.widget.MttWidget;
import beluga.ConfigLoader;
import beluga.module.social.Social;
import beluga.tool.JsonTool;
import beluga.I18n;
import beluga.tool.DynamicTool;
import beluga.resource.ResourceManager;
import beluga.module.account.Account;

class LoginButtons extends MttWidget<Social> {

    public function new (?mttfile : String) {
        if(mttfile == null) mttfile = ResourceManager.getString("/beluga/module/social/view/tpl/login.mtt");
        super(Social, mttfile);
        i18n = mod.i18n;
    }

    override private function getContext(): Dynamic {
        var context = {
            isLogged : Beluga.getInstance().getModuleInstance(Account).isLogged
        };
        return context;
    }
}
