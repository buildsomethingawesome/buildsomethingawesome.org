$(document).ready(function() {
  var votesRef = new Firebase('https://buildsomethingawesome-votes.firebaseio.com/votes');
  $('.learning-topic').each(function(el) {
    var key = $(el).attr('data-votes-key');
    if (!key) return;
    var ref = votesRef.child(key);
    $(el).append(' <button class="btn btn-xs">vote <span></span></button>');
    ref.on('value', function(snap) {
      $(el).find('span').html(snap.val());
    });
    $(el).find('button').click(function() {
      ref.transaction(function(cur) {
        return cur + 1;
      });
    });
  });
});