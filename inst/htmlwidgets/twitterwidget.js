HTMLWidgets.widget({

  name: 'twitterwidget',

  type: 'output',

  factory: function(el, width, height) {
    /* TODO: detail comparison
    window.twttr = (function(d, s, id) {
      var js, fjs = d.getElementsByTagName(s)[0],
        t = window.twttr || {};
      if (d.getElementById(id)) return t;
      js = d.createElement(s);
      js.id = id;
      js.src = "https://platform.twitter.com/widgets.js";
      fjs.parentNode.insertBefore(js, fjs);

      t._e = [];
      t.ready = function(f) {
        t._e.push(f);
      };

      return t;
    }(document, "script", "twitter-wjs"));
    */

    return {

      renderValue: function(x) {

          twttr.widgets.createTweet(
            x.twid,
            document.getElementById(el.id),
            x.pars
          );

      },

      resize: function(width, height) {

        // TODO: code to re-render the widget with a new size

      }

    };
  }
});
