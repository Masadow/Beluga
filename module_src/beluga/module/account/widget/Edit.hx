// Copyright 2014 The Beluga Project Developers. See the LICENCE.md
// file at the top-level directory of this distribution and at
// http://haxebeluga.github.io/licence.html.
//
// Licensed under the MIT License.
// This file may not be copied, modified, or distributed
// except according to those terms.

package beluga.module.account.widget;

import beluga.Beluga;
import beluga.widget.MttWidget;
import beluga.ConfigLoader;
import beluga.module.account.Account;
import beluga.api.form.Validator;
import beluga.I18n;
import beluga.widget.Layout;

class Edit extends MttWidget<Account> {

    public function new (?layout : Layout) {
        if(layout == null) layout = MttWidget.bootstrap.wrap("/beluga/module/account/view/tpl/edit.mtt");
        super(Account, layout);
        i18n = BelugaI18n.loadI18nFolder("/beluga/module/account/view/locale/edit/", mod.i18n);
    }

    override private function getContext(): Dynamic {
        var user = Beluga.getInstance().getModuleInstance(Account).loggedUser;

        return {
            path : "/beluga/account/",
            user: user,
            error: Beluga.getInstance().getModuleInstance(Account).error_msg,
            success: Beluga.getInstance().getModuleInstance(Account).success_msg
        };
    }

}