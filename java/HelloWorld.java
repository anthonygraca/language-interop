class HelloWorld {
    private native void PrintFromC();
    private native void PrintFromCpp();
    private native void PrintFromObjC();
    public static void main(String[] args) {
        new HelloWorld().PrintFromC();
        new HelloWorld().PrintFromCpp();
	//new HelloWorld().PrintFromObjC();
	System.out.println("Hello world in java");
    }
    static {
        System.loadLibrary("hello-world");
    }
}
