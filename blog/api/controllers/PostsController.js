/**
 * PostsController
 *
 * @description :: Server-side actions for handling incoming requests.
 * @help        :: See https://sailsjs.com/docs/concepts/actions
 */

const CommentsController = require("./CommentsController");


module.exports = {

    list: function (req, res) {
        Posts.find({}).exec(function (err, posts) {
            if (err) {
                res.send(500, { error: 'Database Error' });
            }
            res.view('pages/homepage', { posts: posts });
        });
    },

    add: function (req, res) {
        res.view('pages/posts/add');
    },

    create: function (req, res) {
        var pUsername = req.body.pUsername;
        var pCategoryname = req.body.pCategoryname;
        var pTitle = req.body.pTitle;

        Posts.create(
            {
                pUsername: pUsername,
                pCategoryname: pCategoryname,
                pTitle: pTitle,
            }).exec(function (err) {
                if (err) {
                    res.send(500, { error: 'Database Error' });
                }

                res.redirect('/');
            });
    },

    show: function (req, res) {
        Posts.findOne({ id: req.params.id }).exec(function (err, post) {
            if (err) {
                res.send(500, { error: 'Database Error' });
            }
            res.view('pages/posts/post', { post: post });
        });
    },

    edit: function (req, res) {
        Posts.findOne({ id: req.params.id }).exec(function (err, post) {
            if (err) {
                res.send(500, { error: 'Database Error' });
            }

            res.view('pages/posts/edit', { post: post });
        });
    },

    update: function (req, res) {
        var pTitle = req.body.pTitle;
        var pContent = req.body.pContent;

        Posts.update({ id: req.params.id }, { pTitle: pTitle, pContent: pContent }).exec(function (err) {
            if (err) {
                res.send(500, { error: 'Database Error' });
            }

            res.redirect('/');
        });

        return false;
    },

    delete: function (req, res) {
        Posts.destroy({ id: req.params.id }).exec(function (err) {
            if (err) {
                res.send(500, { error: 'Database Error' });
            }
            res.redirect('/');
        });

        return false;
    },

    listGame: async function (req, res) {

        Posts.find({
            where: { pCategoryname: 'Game' },
        }).exec(function (err, result) {
            if (err) {
                res.send(500, { error: 'Database Error' });
            }
            res.view('pages/categories/game', { result: result });
        });

    },

    listFood: async function (req, res) {

        Posts.find({
            where: { pCategoryname: 'Food' },
        }).exec(function (err, result) {
            if (err) {
                res.send(500, { error: 'Database Error' });
            }
            res.view('pages/categories/food', { result: result });
        });

    },

};

