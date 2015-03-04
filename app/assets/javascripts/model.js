var AboutProjectModel = undefined;
var AppStateModel = undefined;
var ProjectNewsModel = undefined;
var ProjectNews = undefined;

$(function() {
    AboutProjectModel = Backbone.Model.extend({
        defaults: {
            description: ""
        },

        initialize: function() {

        },

        constructor: function(attributes, options) {
            Backbone.Model.apply(this, arguments);
        },

        url: 'http://localhost:3000/api/v1/about_projects'
    });

    aboutProject = new AboutProjectModel();

    ProjectNewsModel = Backbone.Model.extend({
        defaults: {
            date: "",
            content: "",
            tags: ""
        }
    });

    ProjectNews = Backbone.Collection.extend({
        model: ProjectNewsModel,

        url: 'http://localhost:3000/api/v1/project_news'
    });

    projectNews = new ProjectNews();

    CoachModel = Backbone.Model.extend({
        defaults: {
            photo: "",
            name: "",
            description: ""
        }
    });

    Coaches = Backbone.Collection.extend({
        model: CoachModel,

        url: '/api/coaches'
    });

    coaches = new Coaches();

    Projects = Backbone.Model.extend({
        defaults: {

        },

        url: '/api/projects'
    });

    projects = new Projects();

    //Blog = Backbone.Model.extend({
    //    defaults: {
    //        autho
    //    }
    //});

    AppStateModel = Backbone.Model.extend({
        defaults: {
            currentSection: "main"
        }
    });

    appState = new AppStateModel();
});