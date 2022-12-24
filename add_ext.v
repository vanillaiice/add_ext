import os

fn main() {
	if os.args.len < 3 {
		println('Need at least 2 arguments')
		exit(1)
	}

	mut args := os.args.clone()
	ext := args.last()

	add_ext(args[1..args.index(ext)], ext)
}

fn add_ext(files []string, ext string) {
	for f in files {
		os.mv(f, [f, ext].join('.')) or {
			println(err)
			exit(0)
		}
	}
}
