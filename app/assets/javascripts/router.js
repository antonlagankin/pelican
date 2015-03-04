//var appState = undefined;
//var AboutProjectModel = undefined;
var aboutProject = undefined;
var appState = undefined;
var projectNews = undefined;
var coaches = undefined;
var projects = undefined;

$(function () {

    var Controller = Backbone.Router.extend({
        routes: {
            "": "main",
            "!/": "main",
            "!/news": "news",
            "!/about": "about",
            "!/projects": "projects"
        },

        main: function () {
            aboutProject.fetch({
                    success: function (response) {
                        console.log(aboutProject.get('description'));
                        appState.set({"currentSection": "main"});
                    }
                }
            );
        },

        news: function () {
            projectNews.fetch({
                    success: function (response) {
                        console.log(projectNews.size());
                        appState.set({"currentSection": "news"});
                    }
                }
            );
        },

        about: function () {
            coaches.fetch( {
                success: function(response) {
                    console.log(coaches.size());
                    appState.set({"currentSection": "about"});
                }
            });
        },

        projects: function() {
            appState.set({"currentSection": "projects"});
        }

    });

    var controller = new Controller();

    Backbone.history.start();
});