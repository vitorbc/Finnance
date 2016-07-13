(function (testController) {

    testController.init = function (app) {
        app.get("/api/finnance/currency", function (req, res) {
            res.set("Content-Type", "application/json");
            res.send({ "cur": "R$" });
        });

    };

})(module.exports);