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
	for i := 0; i < f.len; i++ {
		os.mv(f[i], [f[i], ext].join('.')) or {
			println(err)
			exit(0)
		}
	}
}
