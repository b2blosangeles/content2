(function () { //
	var obj =  function (env, pkg, req, res) {
		var fs = require('fs');
		
		this.get = function() {
		    var me = this, p = req.params[0];
		    res.send(p);
		    return true;
		    var fn = env.root + '/www/' + p;
		    fs.stat(fn, function(err, stat) {
			if(err == null) {
				res.sendFile(fn);
			} else  {
				res.render('html/page404.ect');
			}
		    });
		};	
		this.post = () => {
            		var me = this;
		};
		this.put = () => {
            		var me = this;
		};
		this.delete = () => {
            		var me = this;
		};
	};
	if (typeof module !== 'undefined' && typeof module.exports !== 'undefined') {
		module.exports = obj;
	} 

})();
