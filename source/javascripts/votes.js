
$(document).ready(function() {
  var uid;
  var votesRef = new Firebase('https://buildsomethingawesome-votes.firebaseio.com/votes');
  var auth = new FirebaseSimpleLogin(votesRef, function(error, user) {
    if (error) {
      console.log(error);
    } else if (user) {
      uid = user.uid;
      console.log("User ID: " + user.uid);
    } else {
      auth.login('anonymous');
    }
  });

  $('.learning-topic').each(function(el) {
    var key = $(el).attr('data-votes-key');
    if (!key) return;
    var ref = votesRef.child(key);
    $(el).append(' <button class="btn btn-xs">vote <span></span></button>');
    ref.child('count').on('value', function(snap) {
      $(el).find('span').html(snap.val());
    });
    $(el).find('button').click(function() {
      ref.child('count').transaction(function(cur) {
        return cur + 1;
      });
      ref.child('users').child(uid).set(true);
    });
  });
});