package beluga.module.fileupload.api;

import php.Web;
import haxe.Resource;
import beluga.core.Beluga;
import beluga.module.fileupload.Fileupload;

class CssApi {
    public function new() {}

    public function doBrowse() {
        Web.setHeader("Content-type", "text/css");
        Sys.print(Beluga.getInstance().getModuleInstance(Fileupload).getWidget("browse").getCss());
    }
}