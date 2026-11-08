# Windows Movie Maker Transitions & Titles for DaVinci Resolve

Recreations of the classic **Windows XP Movie Maker** transitions, title animations and credits as DaVinci Resolve Fusion templates. Each one was measured frame by frame from recordings of the original program and rebuilt from scratch, so the shapes, timing and edge softness match the originals as closely as possible.

- **27 transitions**: Bars, Checkerboard, Circle, Heart, Fans, Sweeps, Wheel, Zig Zags and more
- **39 titles & credits**: Fly In, Spin, Typewriter, Wow!, Ticker Tape, Scroll Perspective, Credits and more
- **4 video effects**: Newspaper, News Video Inset, Credits Video Left / Top

Everything is built with standard Fusion tools only. No plugins, no Microsoft assets.

---

## Installation

### Option 1: Install script (easiest)

1. Download this repository: green **Code** button → **Download ZIP**, then unzip it.
2. **Close DaVinci Resolve.**
3. Run the installer:
   - **Windows:** double-click `install-windows.bat`
   - **macOS / Linux:** open a terminal in the folder and run `bash install-mac-linux.sh`
4. Open DaVinci Resolve again.

### Option 2: Manual install

Copy the three folders' contents into Resolve's Fusion templates folder:

| This repo | Copy into |
|---|---|
| `Transitions/Movie Maker` | `…/Fusion/Templates/Edit/Transitions/Movie Maker` |
| `Titles/Movie Maker` | `…/Fusion/Templates/Edit/Titles/Movie Maker` |
| `Effects/Movie Maker` | `…/Fusion/Templates/Edit/Effects/Movie Maker` |

Where `…/Fusion` is:

- **Windows:** `%APPDATA%\Blackmagic Design\DaVinci Resolve\Support\Fusion`
- **macOS:** `~/Library/Application Support/Blackmagic Design/DaVinci Resolve/Fusion`
- **Linux:** `~/.local/share/DaVinciResolve/Fusion`

Tip: in Resolve's Fusion page, **Fusion → Fusion Settings → Path Map → Templates:** shows the exact folder on your system. Restart Resolve after copying.

---

## Using them

All templates are named **"Movie Maker …"** in the Edit page's **Effects Library**:

| Type | Where to find it | How to use |
|---|---|---|
| Transitions | Video Transitions → Fusion Transitions | Drop on a cut between two clips |
| Titles | Titles → Fusion Titles | Drop on a track (above a clip to overlay it) |
| Effects | Effects → Fusion Effects | Drop onto a clip |

### Tips

- **Transitions:** Movie Maker's default transition length was 1.25 s; the reference recordings ran about 3.25 s. Any length works, since the animation stretches to fit. Most have an **Edge Softness** slider (0 = crisp edges). Checkerboard, Multiple Circles, Multiple Stars, Bars and Dissolve also have grid, row or grain controls.
- **Titles:** Edit the text, font, text color and background color in the Inspector. Titles start on Movie Maker's blue background (`#004080`). Set **Background Opacity** to `0` to put a title over your video. To match Movie Maker's pacing, trim titles to about **3.9 s**. Any length works; only *Flashing* keeps a fixed 1-second blink.
- **Two-line titles** have a second text box (**Line 2 Text**).
- **Credits** (*Fade, Exploding, Zoom, Fly In, Mirror*) show a title followed by up to six Role / Name pairs, one at a time. Leave a pair blank to skip it. The *Scroll* credits take one role and one name per line.
- **Video In Text / Scroll Inverted** cut the text out of a white panel, so your video shows through the letters. Put them above a clip and set Background Opacity to 0.
- **Font:** Movie Maker used **Microsoft Sans Serif**, which ships with Windows. On macOS or Linux, pick any similar font (e.g. Arial or Liberation Sans) in the Inspector.
- Works at any resolution or aspect ratio (4:3, 16:9, …).

---

## Full list

<details>
<summary><b>Transitions (27)</b></summary>

Bars · Bow Tie Horizontal · Bow Tie Vertical · Checkerboard · Circle · Diagonal Box · Diagonal Cross · Diagonal Down Right · Diamond · Dissolve · Eye · Fan In · Fan Out · Fan Up · Heart · Iris · Keyhole · Multiple Circles · Multiple Stars · Rectangle · Star · Sweep In · Sweep Out · Sweep Up · Wheel · Zig Zag Horizontal · Zig Zag Vertical
</details>

<details>
<summary><b>Titles (39)</b></summary>

**Single line:** Basic · Fade, Bounce Wipe · Fade, Ellipse Wipe · Fade, Slow Zoom · Fade, Wipe · Flashing · Fly In, Top Left · Mirror · News Banner · Paint Drip · Scroll, Banner · Scroll, Inverted · Scroll, Perspective · Spin, In · Spin, Out · Stretch · Subtitle · Ticker Tape · Typewriter · Video, In Text · Wow! · Zoom, In · Zoom, Out · Zoom, Up and In

**Two line:** Exploding Outline · Fade, In and Out · Fly In, Fades · Fly In, Fly Out · Fly In, Left and Right · Fly Out · Moving Titles, Layered · Sports Scoreboard

**Credits:** Exploding · Fade, In and Out · Fly In, Left and Right · Mirror · Scroll, Up Side-by-Side · Scroll, Up Stacked · Zoom, In
</details>

<details>
<summary><b>Effects (4)</b></summary>

Credits - Video, Left · Credits - Video, Top · News Video, Inset · Two Line - Newspaper
</details>

---

## Compatibility

Built and tested in **DaVinci Resolve Studio 21.1** on Windows. The templates only use standard Fusion tools (Custom Tool, Text+, masks, Transform, Corner Positioner), so they should also work in the free version of Resolve and in recent older versions, though those haven't been tested.

## Notes

- If a template doesn't appear, make sure the files are in a folder named exactly `Movie Maker` inside the right template type, then restart Resolve.
- If you update the files, restart Resolve: it caches templates while running.
- Some effects are simplified. For example, the *Newspaper* page uses plain grey columns instead of the original's printed-text texture.

## Disclaimer

This is an unofficial fan project for nostalgia. It is not affiliated with or endorsed by Microsoft or Blackmagic Design. "Windows" and "Windows Movie Maker" are trademarks of Microsoft Corporation, and "DaVinci Resolve" is a trademark of Blackmagic Design. No Microsoft code, images or fonts are included; all templates are original recreations.

## License

[MIT](LICENSE)
