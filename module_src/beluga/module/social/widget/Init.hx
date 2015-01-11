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
import beluga.module.social.SocialConfig;
import beluga.tool.JsonTool;
import beluga.I18n;
import beluga.tool.DynamicTool;
import beluga.resource.ResourceManager;
import beluga.module.account.Account;
import beluga.widget.Layout;

class Init extends MttWidget<Social> {

    public function new (?mttfile : Layout) {
        if(mttfile == null) mttfile = MttWidget.bootstrap.wrap("/beluga/module/social/view/tpl/init.mtt");
        super(Social, mttfile);
        i18n = mod.i18n;
    }

    override private function getContext(): Dynamic {
        return SocialConfig.get();
    }
}