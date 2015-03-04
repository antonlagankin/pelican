$(function () {

    var MainView = Backbone.View.extend({
        el: ".current_section",
        viewState: undefined,
        projectNews: undefined,

        render: function() {
            var template = this.viewState.get('currentSection');
            $(this.el).html(this.templates[template]({model: this.models[template].toJSON()}));
        },

        initialize: function(params) {
            this.viewState = appState;
            this.models = params.models;
            this.viewState.bind('change', this.render, this);
            for (var key in this.models) {
                this.models[key].bind('change', this.render, this);
            }
        },

        templates : {
            "main" : _.template($("#main").html()),
            "news" : _.template($("#news").html()),
            "about" : _.template($("#about").html()),
            "projects" : _.template($("#projects").html())
        },

        models: {

        }
    });

    var mainView = new MainView({models: {"main": aboutProject, "news": projectNews, "about": coaches, "projects": projects}});
    aboutProject.trigger("change");
});