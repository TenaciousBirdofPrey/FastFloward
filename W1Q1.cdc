 
//https://github.com/decentology/fast-floward-1/tree/main/week1/day1


 pub struct Canvas{
	pub let width: UInt8
	pub let height: UInt8
	pub let pixels: String

	init(width: UInt8, height: UInt8, pixels: String){
	self.width =width
	self.height = height
	self.pixels = pixels
	}
}


pub resource Picture{
	pub let canvas: Canvas
	init (canvas: Canvas){
		self.canvas = canvas
	}
}

pub fun serializeStringArray_andFrame (_ lines: [String]): String {
   //build frame
   var top = "====="
   lines.insert(at:0,top)
   lines.insert(at:6, top)


	var buffer = ""
	var r_edge ="|"
	var l_edge ="|"
	var edged = ""
	var edger = ""

	for line in lines {
	edger=  line.concat(r_edge) //  *....*|
	edged= l_edge.concat(edger)


	 buffer = buffer.concat(edged)

	}
	log(buffer.slice(from:0, upTo:7))
	log(buffer.slice(from:7, upTo:14))
	log(buffer.slice(from:14, upTo:21))
	log(buffer.slice(from:21, upTo:28))
	log(buffer.slice(from:28, upTo:35))
	log(buffer.slice(from:35, upTo:42))
	log(buffer.slice(from:42, upTo:49))
	return buffer
}

pub fun main(){
	let pixelsX =[
		"*...*",
		".*.*.",
		"..*..",
		".*.*.",
		"*...*"
	]
	let canvasX = Canvas(
	width: 5,
	height: 5,
	pixels:  serializeStringArray_andFrame(pixelsX)
	)


 let letterX <- create Picture(canvas:canvasX)
 log(letterX.canvas)
 destroy letterX
}
