// module Node.Express.App

exports.mkApplication = function() {
    var Koa = require('koa');
    return new Koa();
}

exports.useImpl = function(app, f) {
    app.use(function (ctx) { Object.assign(ctx, f(ctx)); });
    return app;
}

exports.listenImpl = function(app, port) {
    app.listen(port);
    return app;
}
