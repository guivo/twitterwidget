HTMLWidgets.widget({

  name: 'twitterwidget',

  type: 'output',

  factory: function(el, width, height) {

    return {

      renderValue: function(x) {

          twttr.widgets.createTweet(
            x.twid,
            document.getElementById(el.id),
            {
              theme: 'light'
            }
          );

      },

      resize: function(width, height) {

        // TODO: code to re-render the widget with a new size

      }

    };
  }
});
