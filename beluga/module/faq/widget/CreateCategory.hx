package beluga.module.faq.widget;

import beluga.core.Beluga;
import beluga.core.widget.MttWidget;
import beluga.core.macro.ConfigLoader;
import beluga.module.faq.Faq;
import beluga.core.BelugaI18n;

class CreateCategory extends MttWidget<FaqImpl> {

    public function new (mttfile = "beluga_faq_create_category.mtt") {
        super(Faq, mttfile);
        i18n = BelugaI18n.loadI18nFolder("/module/faq/view/local/create_category/", mod.i18n);
    }

    override private function getContext() : Dynamic {
        return {
            path : "/beluga/faq/",
            error : if (mod.error_msg != "") { BelugaI18n.getKey(this.i18n, mod.error_msg); } else { mod.error_msg; },
            success : if (mod.success_msg != "") { BelugaI18n.getKey(this.i18n, mod.success_msg); } else {mod.success_msg; },
            parent : mod.category_id,
            base_url : ConfigLoader.getBaseUrl()
        };
    }
}