package;

class Main {
	public static function main () {
		var ex = new ExtClass();
		ex.setX(123);
		ex.printX();
		
		Sys.print("Press any key to exit...");
		Sys.stdin().readByte();
	}
}
