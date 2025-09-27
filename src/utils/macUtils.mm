// macUtils.mm
#ifdef SDL_PLATFORM_APPLE
#import "macUtils.h"
#import <Cocoa/Cocoa.h>

//Just a simple function to toggle the native macOS fullscreen.
void toggleNativeMacOSFullscreen(SDL_Window *window) {
    // https://wiki.libsdl.org/SDL3/README-migration#sdl_syswmh
    // This header has been removed.
    // 
    // The information previously available in SDL_GetWindowWMInfo()
    // is now available as window properties
    NSWindow *nswindow = (__bridge NSWindow *)SDL_GetPointerProperty(SDL_GetWindowProperties(window), SDL_PROP_WINDOW_COCOA_WINDOW_POINTER, NULL);
    if (nswindow) {
        [nswindow toggleFullScreen:nil];
    }
}

//Just a simple function to check if we are in native macOS fullscreen mode. Needed to avoid the game from crashing
//when going from native to SDL fullscreening modes or getting other forms of breakage.
bool isNativeMacOSFullscreenActive(SDL_Window *window) {
    // https://wiki.libsdl.org/SDL3/README-migration#sdl_syswmh
    // This header has been removed.
    // 
    // The information previously available in SDL_GetWindowWMInfo()
    // is now available as window properties
    NSWindow *nswindow = (__bridge NSWindow *)SDL_GetPointerProperty(SDL_GetWindowProperties(window), SDL_PROP_WINDOW_COCOA_WINDOW_POINTER, NULL);
    if (nswindow) {
        return (([nswindow styleMask] & NSWindowStyleMaskFullScreen) == NSWindowStyleMaskFullScreen);
    }
    return false;
}
#endif