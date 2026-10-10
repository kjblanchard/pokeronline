# Poker Online

## Simple 2D desktop poker

- Client/Server for playing random card games

## Goals

- Cross platform cmake
- Package with cmake for installing on desktops
- C/Lua practice
- Learn OpenGL, or at least fake it until you make it
- Better with vim for full IDE

## Installation

- Run any of the make commands for your platform, or run cmake directly,
    currently this bundles the demo game and engine together

    ```bash
    make rebuild
    ```

## Debugging and profiling

- make debug for lldb
- for lua use engine.Game.SetDebugBreak()
- for leaks, use instruments without ASAN on and set runlocation to repo and
run the .app
- for perf, use make perf

## Contributing

Pull requests are welcome. For major changes, please open an issue first
to discuss what you would like to change.

## License

- Non-Commercial use, see LICENSE file for details.

## Supporting Projects

- [Custom C engine](https://github.com/kjblanchard/SupergoonEngine) - wraps SDL/forge/tools/sound/gl
- [Forge](https://github.com/kjblanchard/sgforge) - asset packer and unpacker
- [Tools](https://github.com/kjblanchard/sgtools) - Logging and others
- [Sound](https://github.com/kjblanchard/sgsound) - Openalsoft wrapper

## Credits

- [Screen Transition Sound](https://freesound.org/people/distillerystudio/sounds/327754/)
    by distillerystudio
- [Transition 2](https://freesound.org/people/newagesoup/sounds/462089/)
    by newagesoup
- [LearnOpenGL](https://learnopengl.com)
    by OpenGL learning
- [ImGUI](https://github.com/ocornut/imgui) : Debug logging
- [Gamepad icons](https://greatdocbrown.itch.io/gamepad-ui)
- [Exe Icon](https://images.hdqwalls.com/download/fantasy-floating-islands-under-sunset-sky-hl-1366x768.jpg)
- [Game Over SFX](https://freesound.org/people/melokacool/sounds/615457/)
- [Bosque - Forest Melody Game loop by neko_4444](https://freesound.org/s/788961/)

