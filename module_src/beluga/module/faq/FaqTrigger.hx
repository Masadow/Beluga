// Copyright 2014 The Beluga Project Developers. See the LICENCE.md
// file at the top-level directory of this distribution and at
// http://haxebeluga.github.io/licence.html.
//
// Licensed under the MIT License.
// This file may not be copied, modified, or distributed
// except according to those terms.

package beluga.module.faq;

import beluga.trigger.Trigger;
import beluga.trigger.TriggerVoid;

import beluga.module.faq.FaqErrorKind;

import sys.db.Types;

class FaqTrigger {
    public var defaultPage = new TriggerVoid();

    public var createFail = new Trigger<{error: FaqErrorKind}>();
    public var createSuccess = new TriggerVoid();
    public var deleteFail = new Trigger<{error: FaqErrorKind}>();
    public var deleteSuccess = new TriggerVoid();
    public var editFail = new Trigger<{error: FaqErrorKind}>();
    public var editSuccess = new TriggerVoid();

    public var createCategoryFail = new Trigger<{error: FaqErrorKind}>();
    public var createCategorySuccess = new TriggerVoid();
    public var deleteCategoryFail = new Trigger<{error: FaqErrorKind}>();
    public var deleteCategorySuccess = new TriggerVoid();
    public var editCategoryFail = new Trigger<{error: FaqErrorKind}>();
    public var editCategorySuccess = new TriggerVoid();

    public var redirectCreateFAQ = new TriggerVoid();
    public var redirectCreateCategory = new TriggerVoid();
    public var print = new TriggerVoid();
    public var redirectEditCategory = new TriggerVoid();
    public var redirectEditFAQ = new TriggerVoid();

    public var edit = new Trigger<{question_id : Int, question : String, answer : String}>();
    public var create = new Trigger<{question : String, answer : String}>();
    public var delete = new Trigger<{question_id: Int}>();

    public function new() {}
}