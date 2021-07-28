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

pub fun serializeStringArray (_ lines: [String]): String {
	var buffer = ""
	for line in lines {
	 buffer = buffer.concat(line)
	}

	return buffer
}

pub fun display(_ canvas:Canvas){
	//log("gonna make it now")
	//log(canvas.pixels)
	var frame="|"
	log("-------")
	var layer1= frame.concat(canvas.pixels.slice(from: 0, upTo: 5))
	log(layer1.concat("|"))

	var layer2=frame.concat(canvas.pixels.slice(from: 5, upTo: 10))
	log(layer2.concat("|"))

	var layer3=frame.concat(canvas.pixels.slice(from: 10, upTo: 15))
	log(layer3.concat("|"))

	var layer4=frame.concat(canvas.pixels.slice(from: 15, upTo: 20))
	log(layer4.concat("|"))

	var layer5=frame.concat(canvas.pixels.slice(from: 20, upTo: 25))
	log(layer5.concat("|"))	

	log("-------")

}

// use array or dict, test if unique.
pub resource Printer {
  
  pub var isPrinted:{String:Bool}

  pub fun print(canvas: Canvas): @Picture?{
  if self.isPrinted[canvas.pixels]==nil{
  	self.isPrinted[canvas.pixels] = true
  	display(canvas: canvas)
  }
  	return<- create Picture(canvas: canvas)
  }



  init(isPrinted:Bool){
  	self.isPrinted = []
  }

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
	pixels:  serializeStringArray(pixelsX)
	)

	display(canvasX)

 let letterX <- create Picture(canvas:canvasX)
 log(letterX.canvas)
 destroy letterX
}
