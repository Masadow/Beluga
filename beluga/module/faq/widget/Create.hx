package beluga.module.faq.widget;

import beluga.core.Beluga;
import beluga.core.widget.MttWidget;
import beluga.core.macro.ConfigLoader;
import beluga.module.faq.Faq;
import beluga.core.BelugaI18n;

class Create extends MttWidget<FaqImpl> {

    public function new (mttfile = "beluga_faq_create_faq.mtt") {
        super(Faq, mttfile);
        i18n = BelugaI18n.loadI18nFolder("/module/faq/view/local/create/", mod.i18n);
    }

    override private function getContext() : Dynamic {
        return {
            path : "/beluga/faq/",
            error : (mod.error_msg != "" ? BelugaI18n.getKey(this.i18n, mod.error_msg) : mod.error_msg),
            success : (mod.success_msg != "" ? BelugaI18n.getKey(this.i18n, mod.success_msg) : mod.success_msg),
            parent: mod.category_id,
            question : mod.question, answer: mod.answer,
            base_url : ConfigLoader.getBaseUrl()
        };
    }
}