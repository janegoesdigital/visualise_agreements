console.log("hello betty")
//
//
//
//
$(document).ready(function() {


    var newLink = "<a href="">$1</a>"

    var target_word = "dictionary";
    var link_word = function(){
    var where_search = $("p","dd")



    }



// $(body).html($(body).html().replace('dictionary', 'marshmellows'));


});



//make all reference to the dictionary go the dictionary

// to do this we need
// 1 an anchor tag at the location we want the user to link to - use <dl id="dictionary">  _ DONE
// 2   a search for all the references to the word dictionary throughout the document
//so far can retrieve a

//  regular expresssion \dictionary|Dictionary\
// dictionary will usually be all lower case
// may be a "Dictionary"
// for each time the word "dictionary" OR "Dicionary" appears, we want to insert the link to the tag ie insert this <a href="#dictionary">dictionary</a>

// This will find and replace the words with another word when I run it in tne console.  I get an error when I replace it with a href
// $("p, dd").each(function() {
//     var text = $(this).text();
//     text = text.replace(/dictionary/ig, "mashmallow");
//     $(this).text(text);
// });

// var word = "dictionary";
// $("p","dd").each(function() {
//     var me = $(this),
//     txt = me.html(),
//     found = me.find(word).length,
//     regex = new RegExp('(' + word + ')(?![^(<a.*?>).]*?<\/a>)','gi');
//     if (found != -1) {
//         txt = txt.replace(regex, '<a href="">$1</a>');
//         me.html(txt);
//     }
// });
