JsOsaDAS1.001.00bplist00�Vscript_�var dfx = Application('Default Folder X');

function run(argument) {	
	var output;
	var favs    = processPaths(dfx.getfavoritefolders());
	var files   = processPaths(dfx.getrecentfiles());
	var folders = processPaths(dfx.getrecentfolders());


	if (argument == "flat") {
		output = favs.concat(files,folders);
	} else {
		output = [
			{title: 'Favorites', icon: 'HeartIcon.png', children: favs},
			{title: 'Recent Files', icon: 'RecentFileIcon.png', children: files},
			{title: 'Recent Folders', icon: 'RecentFolderIcon.png', children: folders}
		];
	}
	
	return JSON.stringify(output);
}

function processPaths(paths) {
	return paths.map(function(obj) {
		return {path: obj.toString()}
	});
}                              �jscr  ��ޭ