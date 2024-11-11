/*
 * WhirlGtkGL24L 
 * Interactive 3D animation demo of "belt trick" using OpenGL, GTK4
 * Written in Vala and built with Meson
 * 
 * This is the main source file supplying main()
 * The top level interesting stuff is in WhirlMainWindow 
 * 
 * Basic edit-build-run cycle:
 *      geany -i  src/*vala &
 *      ninja -C b
 *      b/whirlgtk
 */
 
 
 
int main(string[] args)   
{
    var app = new WhirlApplication();
    var r = app.run(args);
    return r;
}
 
 
 
 
 
 
 
 
