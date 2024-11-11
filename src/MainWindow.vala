

using Gtk;




class MainWindow : Gtk.ApplicationWindow   {

    public MainWindow(Gtk.Application app)   {
        GLib.Object(application: app);
        set_title("Whirl!");
        set_default_size(1200, 900);
        build_ui();
    }
    
    
    void speed_slider_changed(Gtk.Range range)    {
        stdout.printf("Speed changed to %d", 789);
    }
    
    public void build_ui()   {
        
        
        var view_x_view = new Gtk.Button.with_label("TOP VIEW");
        var view_y_view = new Gtk.Button.with_label("FRONT VIEW");
        var view_z_view = new Gtk.Button.with_label("ANOTHER VIEW");
        
        
        var whirl_view = new Gtk.Label("<i>Italic</i> Regular");
        whirl_view.set_size_request(500,390);
        
        var phase_indicator = new Gtk.Button.with_label("PHASE");
        
        var scrub_wheel  = new ProgressBar();
        scrub_wheel.set_size_request(30, 300);
        scrub_wheel.fraction = 0.5;
        
        var speed_slider = new Gtk.Scale.with_range(Gtk.Orientation.VERTICAL,  0.0, 120.0,  0.25);
        speed_slider.value_changed.connect(speed_slider_changed);
    
        
        var tabbed_settings = new Gtk.Button.with_label("TABBED CONTROLS");
        var file_controls   = new Gtk.Button.with_label("SAVE IMAGE");
        
        var reverse_button = new Button.with_label("<");
        var forward_button = new Button.with_label(">");
        var playpause_button = new Button.with_label("||");  


        
        var ortho_views = new Gtk.Box(Gtk.Orientation.VERTICAL, 0);
        ortho_views.append(view_x_view);
        ortho_views.append(view_y_view);
        ortho_views.append(view_z_view);

        var wheel_and_slider = new Gtk.Box(Gtk.Orientation.HORIZONTAL, 0);
        wheel_and_slider.append(scrub_wheel);
        wheel_and_slider.append(speed_slider);
        

        var play_buttons = new Gtk.Box(Gtk.Orientation.HORIZONTAL, 0);
        play_buttons.append(reverse_button);
        play_buttons.append(playpause_button);
        play_buttons.append(forward_button);
        
        var speed_box = new Gtk.Box(Gtk.Orientation.VERTICAL, 0);
        speed_box.append(phase_indicator);
        speed_box.append(wheel_and_slider);
        speed_box.append(play_buttons);

        var speed_outerbox = new Gtk.Frame("Speed");
        speed_outerbox.set_child(speed_box);
        
        
        
        var animation_box = new  Gtk.Box(Gtk.Orientation.HORIZONTAL, 0);
        animation_box.append(ortho_views);
        animation_box.append(whirl_view);
        animation_box.append(speed_outerbox);
        
        
        var controls_box = new Gtk.Box(Gtk.Orientation.HORIZONTAL, 0);
        controls_box.append(tabbed_settings);
        controls_box.append(file_controls);
        
        
        var everything_box = new Gtk.Box(Gtk.Orientation.VERTICAL, 0);
        everything_box.append(animation_box);
        everything_box.append(controls_box);
        child = everything_box;
    }
}
