exports.mkRouter = function () {
    var Router = require('koa-router');
    return new Router();
}

exports._routes = function (router) {
    return router.routes();
}

exports._allowedMethods = function (router) {
    return router.allowedMethods();
}

exports._get = function (router, path, f) {
    router.get(path, function (ctx, next) { Object.assign(ctx, f(ctx)); next(); });
    return router;
}
