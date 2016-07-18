App.comments = App.cable.subscriptions.create('CommentsChannel', {
  received: function(data) {
    return $('#comments').append(this.renderComment(data));
  },

  renderComment: function(data) {
    $("#new_comment").trigger('reset')
    return "<p> <b>" + data.user + ": </b>" + data.comment + "</p>";
  }
});
