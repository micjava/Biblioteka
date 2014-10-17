function Matrix (opts) {
         opts = opts||{};
         opts.font = opts.font||{};
         this.cid = opts.cid||'matrix';
         this.font = {};
         this.font.link = opts.font.link||'fonts/mCode15.ttf';
         this.font.format = opts.font.format||'truetype';
         this.font.family = opts.font.family||'matrix';
         this.font.size = opts.font.size||'7px';
         this.genStyle(this.cid,this.font);
         this.preload();
         if ($(this.cid)) {
            this.can = $(this.cid);
            this.ctx = this.can.getContext('2d');
            this.count = opts.count||300;
            this.interval = false;
            this.paused = false;
            this.setSize();
            this.genStrings();
            if (opts.auto) {
               setTimeout(function(){this.init();}.bind(this),1000);
            }
          } else {
            alert('No canvas available!');
         }
};
Matrix.prototype.init = function () {
         if (this.interval) { return false; }
         this.paused = false;
         this.ctx.font = this.font.size+' "'+this.font.family+'"';
         this.interval = setInterval(function() {
              this.ctx.fillStyle = "#000000";
              this.ctx.globalAlpha = 0.4;
              this.ctx.fillRect(0,0,this.can.width,this.can.height);
              this.ctx.globalAlpha = 1;
              for (var i = 0; i < this.count; i++) {
                  var string = this.strings[i];
                  if (string.c !== undefined) {
                     this.ctx.fillStyle = "#e1e1e1"
                  }
                  this.ctx.fillText(this.randletter(), string.x, string.y);
                  this.ctx.fillStyle = "lime";
                  for (var x = 1; x < string.t; x++) {
                      this.ctx.fillText(this.randletter(), string.x, string.y-(x*20));
                  }
                  string.y += string.s;
                  if (string.y > this.can.height+100) {
                     this.strings[i] = this.createString();
                  }
              }
         }.bind(this),100);
};
Matrix.prototype.genStrings = function () {
         this.strings = [];
         for (var i = 0; i < this.count; i++) {
             this.strings.push(this.createString());
         }
};
Matrix.prototype.createString = function () {
         var string = {};
         string.x = Math.floor(Math.random()*this.can.width);
         string.y = Math.floor(Math.random()*this.can.height)-Math.floor(Math.random()*400);
         string.t = Math.floor(Math.random()*10)+4;
         if (Math.random() < .2) {
            string.c = true;
         }
         string.s = Math.floor(Math.random()*10)+3;
         return string;
};
Matrix.prototype.randletter = function () {
         return String.fromCharCode(97+Math.round(Math.random()*25));
}
Matrix.prototype.stop = function () {
         if (this.interval) {
            clearInterval(this.interval);
            this.interval = false;
            this.ctx.fillStyle = "#000000";
            this.ctx.fillRect(0,0,this.can.width,this.can.height);
            this.genStrings();
         }
};
Matrix.prototype.pause = function () {
         if (this.interval) {
            clearInterval(this.interval);
            this.interval = false;
            this.paused = true;
         }
};
Matrix.prototype.setSize = function () {
         var e = window, a = 'inner';
         if (!('innerWidth' in window)) {
            a = 'client';
            e = document.documentElement || document.body;
         }
         var sizes = {width:e[a+'Width'],height:e[a+'Height']};
         this.can.width = sizes.width;
         this.can.height = sizes.height;
         this.ctx.font = this.font.size+' "'+this.font.family+'"';
         window.onresize = function () {
             this.setSize();
         }.bind(this);
};
Matrix.prototype.genStyle = function (cid,font) {
        var style = $('style',1);
        style.type = "text/css";
        document.getElementsByTagName('head')[0].appendChild(style);
        var cont = '@font-face{font-family:"'+font.family+'";src:url("'+font.link+'") format("'+font.format+'");};';
        if (cid !== 'matrix') {
           cont += '#'+cid+'{position:fixed;top:0px;left:0px;z-index:-1;};';
        };
        if (!!(window.attachEvent && !window.opera)) {
           style.styleSheet.cssText = cont;
         } else {
           style.appendChild(document.createTextNode(cont));
        }
};
Matrix.prototype.preload = function () {
         if (!$(this.cid)) {
            var can = $('canvas',1);
            can.setAttribute('id',this.cid);
            can.setAttribute('style','position:fixed;top:0px;left:0px;z-index:-1;');
            document.body.appendChild(can);
         }
         if (!$('matrix-preload')) {
            var preload = $('div',1);
            preload.setAttribute('id','matrix-preload');
            preload.setAttribute('style','font-family:"'+this.font.family+'";font-size:0px;');
            preload.textContent = "preload";
            document.body.appendChild(preload);
         }
};
function $ (id,x) {
         return (x==null?document.getElementById(id):document.createElement(id));
}