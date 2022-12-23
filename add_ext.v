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

fn add_ext(f []string, ext string) {
	mut files := f.clone()

	for i := 0; i < f.len; i++ {
		files[i] = [files[i], ext].join('.')
		os.mv(f[i], files[i]) or {
			println(err)
			exit(0)
		}
	}
}
