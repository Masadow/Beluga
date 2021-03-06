// Copyright 2014 The Beluga Project Developers. See the LICENCE.md
// file at the top-level directory of this distribution and at
// http://haxebeluga.github.io/licence.html.
//
// Licensed under the MIT License.
// This file may not be copied, modified, or distributed
// except according to those terms.

package beluga.module.forum;

import beluga.module.forum.widget.Default;
import beluga.module.forum.widget.CreateCategory;
import beluga.module.forum.widget.CreateTopic;
import beluga.module.forum.widget.Topic;
import beluga.module.forum.widget.PostMessage;
import beluga.module.forum.widget.EditMessage;
import beluga.module.forum.widget.EditCategory;

class ForumWidget {
    public var forum = new Default();
    public var create_category = new CreateCategory();
    public var create_topic = new CreateTopic();
    public var topic = new Topic();
    public var post_message = new PostMessage();
    public var edit_message = new EditMessage();
    public var edit_category = new EditCategory();

    public function new() {}
}