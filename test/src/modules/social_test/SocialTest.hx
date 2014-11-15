package modules.social_test;

import beluga.Beluga;
import beluga.module.social.Social;
import main_view.Renderer;

/**
 * ...
 * @author Masadow
 */
class SocialTest
{
    public var beluga(default, null) : Beluga;
    public var social(default, null) : Social;

    public function new(beluga : Beluga) {
        this.beluga = beluga;
        this.social = beluga.getModuleInstance(Social);
    }

    public function doDefault() {
        var html = Renderer.renderDefault("social_page", "Social", {
            socialWidget: social.widgets.loginButtons.render()
        });
        Sys.print(html);
    }

    public function doLogin() {
        doDefault();
    }
}