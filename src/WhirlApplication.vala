



class WhirlApplication : Gtk.Application   {

    public  WhirlApplication()   {
        Object(
            application_id:  "darenscotwilson.com.whirlgtkopengl",
            flags:  ApplicationFlags.FLAGS_NONE
        );
    }
    
    protected override void activate()   {
        
        var mainwindow = new MainWindow(this);
        mainwindow.present();
    }
}
