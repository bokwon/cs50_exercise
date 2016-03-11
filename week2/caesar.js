function caesar(k, plain){
  var lookup = {"a":0, "b":1, "c":2, "d":3, "e":4, "f":5, "g":6, "h":7, "i":8, "j":9, "k":10, "l":11, "m":12, "n":13, 
          "o":14, "p":15, "q":16, "r":17, "s":18, "t":19, "u":20, "v":21, "w":22, "x":23, "y":24, "z":25};

  // c = (p + k) % 26
  var c = "";
  for(var i=0; i < plain.length; i++){
    var p = plain[i].charCodeAt();
    var temp = (lookup[plain[i].toLowerCase()] + k) % 26;
    if(p >= 65 && p <= 90){ //uppercase 
      c += Object.keys(lookup)[temp].toUpperCase();
    }else if(p >= 97 && p <= 122){ //lowercase
      c += Object.keys(lookup)[temp];
    }else{
      c += plain[i];
    }
  }

  // return c;
  console.log(c);
}

caesar(13, 'Be sure to drink your Ovaltine!');
caesar(13, 'uggc://jjj.lbhghor.pbz/jngpu?i=bUt5FWLEUN0');

