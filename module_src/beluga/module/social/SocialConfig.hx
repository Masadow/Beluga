package beluga.module.social;

import beluga.Config;
import beluga.Beluga;

class SocialConfig
{

    public static var path = Config.autoCreateFile("beluga/social_conf.json");

    public static var get = Config.get.bind(path, {
        fb: {
            id: "662254720549999",
            scope: "public_profile, email",
            cookie: "true",
            callback_url: ConfigLoader.getBaseUrl() + "/beluga/social/facebook"
        }
    });

    #if !js
    public static var save = Config.save.bind(path);
    #end
}