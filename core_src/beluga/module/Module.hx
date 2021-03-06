// Copyright 2014 The Beluga Project Developers. See the LICENCE.md
// file at the top-level directory of this distribution and at
// http://haxebeluga.github.io/licence.html.
//
// Licensed under the MIT License.
// This file may not be copied, modified, or distributed
// except according to those terms.

package beluga.module ;

import beluga.Beluga;
import beluga.BelugaException;
import beluga.resource.CssBuilder;
import haxe.Resource;
import haxe.xml.Fast;
import sys.io.File;

@:autoBuild(beluga.metadata.SessionFlashData.build())
@:autoBuild(beluga.module.ModuleBuilder.registerModule())
@:autoBuild(beluga.resource.CssBuilder.readCssMetadata())
class Module
{
#if !macro
    //Hold the instance of the Beluga object that created this module
    private var beluga : Beluga;

    public function new() : Void
    {
    }

    public function _loadConfig(beluga : Beluga) : Void {
        this.beluga = beluga;
    }

    public function initialize(beluga : Beluga) : Void {}

#end
}
