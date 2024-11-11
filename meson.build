# Meson build config file for compiling WhirlGtkGL24L
# Interactive animated 3D graphics demo of "belt trick" 


project('whirlgtk',  'vala', 'c')

src = files(
    'src/main.vala',
    'src/WhirlApplication.vala',
    'src/MainWindow.vala'
)


deps = [
    dependency( 'glib-2.0' ),
    dependency( 'gobject-2.0' ),
    dependency( 'gio-2.0' ),
    dependency('gtk4', version: '>= 4.0.0')
]


executable('whirlgtk', 
        src,  
        dependencies: deps
        )
