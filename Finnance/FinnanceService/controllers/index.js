(function (controllers) {

    var testController = require("./testController");

    controllers.init = function (app) {
        testController.init(app);
    };

})(module.exports);