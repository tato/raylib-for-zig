const rl = @import("raylib");

pub const GuiStyleProp = extern struct {
    controlId: c_ushort,
    propertyId: c_ushort,
    propertyValue: c_uint,
};

pub const STATE_NORMAL: c_int = 0;
pub const STATE_FOCUSED: c_int = 1;
pub const STATE_PRESSED: c_int = 2;
pub const STATE_DISABLED: c_int = 3;
pub const GuiState = c_uint;
pub const TEXT_ALIGN_LEFT: c_int = 0;
pub const TEXT_ALIGN_CENTER: c_int = 1;
pub const TEXT_ALIGN_RIGHT: c_int = 2;
pub const GuiTextAlignment = c_uint;
pub const DEFAULT: c_int = 0;
pub const LABEL: c_int = 1;
pub const BUTTON: c_int = 2;
pub const TOGGLE: c_int = 3;
pub const SLIDER: c_int = 4;
pub const PROGRESSBAR: c_int = 5;
pub const CHECKBOX: c_int = 6;
pub const COMBOBOX: c_int = 7;
pub const DROPDOWNBOX: c_int = 8;
pub const TEXTBOX: c_int = 9;
pub const VALUEBOX: c_int = 10;
pub const SPINNER: c_int = 11;
pub const LISTVIEW: c_int = 12;
pub const COLORPICKER: c_int = 13;
pub const SCROLLBAR: c_int = 14;
pub const STATUSBAR: c_int = 15;
pub const GuiControl = c_uint;
pub const BORDER_COLOR_NORMAL: c_int = 0;
pub const BASE_COLOR_NORMAL: c_int = 1;
pub const TEXT_COLOR_NORMAL: c_int = 2;
pub const BORDER_COLOR_FOCUSED: c_int = 3;
pub const BASE_COLOR_FOCUSED: c_int = 4;
pub const TEXT_COLOR_FOCUSED: c_int = 5;
pub const BORDER_COLOR_PRESSED: c_int = 6;
pub const BASE_COLOR_PRESSED: c_int = 7;
pub const TEXT_COLOR_PRESSED: c_int = 8;
pub const BORDER_COLOR_DISABLED: c_int = 9;
pub const BASE_COLOR_DISABLED: c_int = 10;
pub const TEXT_COLOR_DISABLED: c_int = 11;
pub const BORDER_WIDTH: c_int = 12;
pub const TEXT_PADDING: c_int = 13;
pub const TEXT_ALIGNMENT: c_int = 14;
pub const RESERVED: c_int = 15;
pub const GuiControlProperty = c_uint;
pub const TEXT_SIZE: c_int = 16;
pub const TEXT_SPACING: c_int = 17;
pub const LINE_COLOR: c_int = 18;
pub const BACKGROUND_COLOR: c_int = 19;
pub const GuiDefaultProperty = c_uint;
pub const GROUP_PADDING: c_int = 16;
pub const GuiToggleProperty = c_uint;
pub const SLIDER_WIDTH: c_int = 16;
pub const SLIDER_PADDING: c_int = 17;
pub const GuiSliderProperty = c_uint;
pub const PROGRESS_PADDING: c_int = 16;
pub const GuiProgressBarProperty = c_uint;
pub const ARROWS_SIZE: c_int = 16;
pub const ARROWS_VISIBLE: c_int = 17;
pub const SCROLL_SLIDER_PADDING: c_int = 18;
pub const SCROLL_SLIDER_SIZE: c_int = 19;
pub const SCROLL_PADDING: c_int = 20;
pub const SCROLL_SPEED: c_int = 21;
pub const GuiScrollBarProperty = c_uint;
pub const CHECK_PADDING: c_int = 16;
pub const GuiCheckBoxProperty = c_uint;
pub const COMBO_BUTTON_WIDTH: c_int = 16;
pub const COMBO_BUTTON_SPACING: c_int = 17;
pub const GuiComboBoxProperty = c_uint;
pub const ARROW_PADDING: c_int = 16;
pub const DROPDOWN_ITEMS_SPACING: c_int = 17;
pub const GuiDropdownBoxProperty = c_uint;
pub const TEXT_INNER_PADDING: c_int = 16;
pub const TEXT_LINES_SPACING: c_int = 17;
pub const GuiTextBoxProperty = c_uint;
pub const SPIN_BUTTON_WIDTH: c_int = 16;
pub const SPIN_BUTTON_SPACING: c_int = 17;
pub const GuiSpinnerProperty = c_uint;
pub const LIST_ITEMS_HEIGHT: c_int = 16;
pub const LIST_ITEMS_SPACING: c_int = 17;
pub const SCROLLBAR_WIDTH: c_int = 18;
pub const SCROLLBAR_SIDE: c_int = 19;
pub const GuiListViewProperty = c_uint;
pub const COLOR_SELECTOR_SIZE: c_int = 16;
pub const HUEBAR_WIDTH: c_int = 17;
pub const HUEBAR_PADDING: c_int = 18;
pub const HUEBAR_SELECTOR_HEIGHT: c_int = 19;
pub const HUEBAR_SELECTOR_OVERFLOW: c_int = 20;
pub const GuiColorPickerProperty = c_uint;
pub extern fn GuiEnable() void;
pub extern fn GuiDisable() void;
pub extern fn GuiLock() void;
pub extern fn GuiUnlock() void;
pub extern fn GuiIsLocked() bool;
pub extern fn GuiFade(alpha: f32) void;
pub extern fn GuiSetState(state: c_int) void;
pub extern fn GuiGetState() c_int;
pub extern fn GuiSetFont(font: rl.Font) void;
pub extern fn GuiGetFont() rl.Font;
pub extern fn GuiSetStyle(control: c_int, property: c_int, value: c_int) void;
pub extern fn GuiGetStyle(control: c_int, property: c_int) c_int;
pub extern fn GuiWindowBox(bounds: rl.Rectangle, title: [*c]const u8) bool;
pub extern fn GuiGroupBox(bounds: rl.Rectangle, text: [*c]const u8) void;
pub extern fn GuiLine(bounds: rl.Rectangle, text: [*c]const u8) void;
pub extern fn GuiPanel(bounds: rl.Rectangle, text: [*c]const u8) void;
pub extern fn GuiScrollPanel(bounds: rl.Rectangle, text: [*c]const u8, content: rl.Rectangle, scroll: [*c]rl.Vector2) rl.Rectangle;
pub extern fn GuiLabel(bounds: rl.Rectangle, text: [*:0]const u8) void;
pub extern fn GuiButton(bounds: rl.Rectangle, text: [*c]const u8) bool;
pub extern fn GuiLabelButton(bounds: rl.Rectangle, text: [*c]const u8) bool;
pub extern fn GuiToggle(bounds: rl.Rectangle, text: [*c]const u8, active: bool) bool;
pub extern fn GuiToggleGroup(bounds: rl.Rectangle, text: [*c]const u8, active: c_int) c_int;
pub extern fn GuiCheckBox(bounds: rl.Rectangle, text: [*c]const u8, checked: bool) bool;
pub extern fn GuiComboBox(bounds: rl.Rectangle, text: [*c]const u8, active: c_int) c_int;
pub extern fn GuiDropdownBox(bounds: rl.Rectangle, text: [*c]const u8, active: [*c]c_int, editMode: bool) bool;
pub extern fn GuiSpinner(bounds: rl.Rectangle, text: [*c]const u8, value: [*c]c_int, minValue: c_int, maxValue: c_int, editMode: bool) bool;
pub extern fn GuiValueBox(bounds: rl.Rectangle, text: [*c]const u8, value: [*c]c_int, minValue: c_int, maxValue: c_int, editMode: bool) bool;
const gui_text_box = struct {
    extern fn GuiTextBox(bounds: rl.Rectangle, text: [*c]u8, textSize: c_int, editMode: bool) bool;
};
pub inline fn GuiTextBox(bounds: rl.Rectangle, text: [:0]u8, editMode: bool) bool {
    return gui_text_box.GuiTextBox(bounds, text.ptr, @intCast(c_int, text.len), editMode);
}
pub extern fn GuiTextBoxMulti(bounds: rl.Rectangle, text: [*c]u8, textSize: c_int, editMode: bool) bool;
pub extern fn GuiSlider(bounds: rl.Rectangle, textLeft: [*c]const u8, textRight: [*c]const u8, value: f32, minValue: f32, maxValue: f32) f32;
pub extern fn GuiSliderBar(bounds: rl.Rectangle, textLeft: [*c]const u8, textRight: [*c]const u8, value: f32, minValue: f32, maxValue: f32) f32;
pub extern fn GuiProgressBar(bounds: rl.Rectangle, textLeft: [*c]const u8, textRight: [*c]const u8, value: f32, minValue: f32, maxValue: f32) f32;
pub extern fn GuiStatusBar(bounds: rl.Rectangle, text: [*c]const u8) void;
pub extern fn GuiDummyRec(bounds: rl.Rectangle, text: [*c]const u8) void;
pub extern fn GuiGrid(bounds: rl.Rectangle, text: [*c]const u8, spacing: f32, subdivs: c_int) rl.Vector2;
pub extern fn GuiListView(bounds: rl.Rectangle, text: [*c]const u8, scrollIndex: [*c]c_int, active: c_int) c_int;
pub extern fn GuiListViewEx(bounds: rl.Rectangle, text: [*c][*c]const u8, count: c_int, focus: [*c]c_int, scrollIndex: [*c]c_int, active: c_int) c_int;
pub extern fn GuiMessageBox(bounds: rl.Rectangle, title: [*c]const u8, message: [*c]const u8, buttons: [*c]const u8) c_int;
pub extern fn GuiTextInputBox(bounds: rl.Rectangle, title: [*c]const u8, message: [*c]const u8, buttons: [*c]const u8, text: [*c]u8, textMaxSize: c_int, secretViewActive: [*c]c_int) c_int;
pub extern fn GuiColorPicker(bounds: rl.Rectangle, text: [*c]const u8, color: rl.Color) rl.Color;
pub extern fn GuiColorPanel(bounds: rl.Rectangle, text: [*c]const u8, color: rl.Color) rl.Color;
pub extern fn GuiColorBarAlpha(bounds: rl.Rectangle, text: [*c]const u8, alpha: f32) f32;
pub extern fn GuiColorBarHue(bounds: rl.Rectangle, text: [*c]const u8, value: f32) f32;
pub extern fn GuiLoadStyle(fileName: [*:0]const u8) void;
pub extern fn GuiLoadStyleDefault() void;
pub extern fn GuiIconText(iconId: c_int, text: [*c]const u8) [*c]const u8;
pub extern fn GuiDrawIcon(iconId: c_int, posX: c_int, posY: c_int, pixelSize: c_int, color: rl.Color) void;
pub extern fn GuiGetIcons() [*c]c_uint;
pub extern fn GuiGetIconData(iconId: c_int) [*c]c_uint;
pub extern fn GuiSetIconData(iconId: c_int, data: [*c]c_uint) void;
pub extern fn GuiSetIconScale(scale: c_uint) void;
pub extern fn GuiSetIconPixel(iconId: c_int, x: c_int, y: c_int) void;
pub extern fn GuiClearIconPixel(iconId: c_int, x: c_int, y: c_int) void;
pub extern fn GuiCheckIconPixel(iconId: c_int, x: c_int, y: c_int) bool;
pub const ICON_NONE: c_int = 0;
pub const ICON_FOLDER_FILE_OPEN: c_int = 1;
pub const ICON_FILE_SAVE_CLASSIC: c_int = 2;
pub const ICON_FOLDER_OPEN: c_int = 3;
pub const ICON_FOLDER_SAVE: c_int = 4;
pub const ICON_FILE_OPEN: c_int = 5;
pub const ICON_FILE_SAVE: c_int = 6;
pub const ICON_FILE_EXPORT: c_int = 7;
pub const ICON_FILE_ADD: c_int = 8;
pub const ICON_FILE_DELETE: c_int = 9;
pub const ICON_FILETYPE_TEXT: c_int = 10;
pub const ICON_FILETYPE_AUDIO: c_int = 11;
pub const ICON_FILETYPE_IMAGE: c_int = 12;
pub const ICON_FILETYPE_PLAY: c_int = 13;
pub const ICON_FILETYPE_VIDEO: c_int = 14;
pub const ICON_FILETYPE_INFO: c_int = 15;
pub const ICON_FILE_COPY: c_int = 16;
pub const ICON_FILE_CUT: c_int = 17;
pub const ICON_FILE_PASTE: c_int = 18;
pub const ICON_CURSOR_HAND: c_int = 19;
pub const ICON_CURSOR_POINTER: c_int = 20;
pub const ICON_CURSOR_CLASSIC: c_int = 21;
pub const ICON_PENCIL: c_int = 22;
pub const ICON_PENCIL_BIG: c_int = 23;
pub const ICON_BRUSH_CLASSIC: c_int = 24;
pub const ICON_BRUSH_PAINTER: c_int = 25;
pub const ICON_WATER_DROP: c_int = 26;
pub const ICON_COLOR_PICKER: c_int = 27;
pub const ICON_RUBBER: c_int = 28;
pub const ICON_COLOR_BUCKET: c_int = 29;
pub const ICON_TEXT_T: c_int = 30;
pub const ICON_TEXT_A: c_int = 31;
pub const ICON_SCALE: c_int = 32;
pub const ICON_RESIZE: c_int = 33;
pub const ICON_FILTER_POINT: c_int = 34;
pub const ICON_FILTER_BILINEAR: c_int = 35;
pub const ICON_CROP: c_int = 36;
pub const ICON_CROP_ALPHA: c_int = 37;
pub const ICON_SQUARE_TOGGLE: c_int = 38;
pub const ICON_SYMMETRY: c_int = 39;
pub const ICON_SYMMETRY_HORIZONTAL: c_int = 40;
pub const ICON_SYMMETRY_VERTICAL: c_int = 41;
pub const ICON_LENS: c_int = 42;
pub const ICON_LENS_BIG: c_int = 43;
pub const ICON_EYE_ON: c_int = 44;
pub const ICON_EYE_OFF: c_int = 45;
pub const ICON_FILTER_TOP: c_int = 46;
pub const ICON_FILTER: c_int = 47;
pub const ICON_TARGET_POINT: c_int = 48;
pub const ICON_TARGET_SMALL: c_int = 49;
pub const ICON_TARGET_BIG: c_int = 50;
pub const ICON_TARGET_MOVE: c_int = 51;
pub const ICON_CURSOR_MOVE: c_int = 52;
pub const ICON_CURSOR_SCALE: c_int = 53;
pub const ICON_CURSOR_SCALE_RIGHT: c_int = 54;
pub const ICON_CURSOR_SCALE_LEFT: c_int = 55;
pub const ICON_UNDO: c_int = 56;
pub const ICON_REDO: c_int = 57;
pub const ICON_REREDO: c_int = 58;
pub const ICON_MUTATE: c_int = 59;
pub const ICON_ROTATE: c_int = 60;
pub const ICON_REPEAT: c_int = 61;
pub const ICON_SHUFFLE: c_int = 62;
pub const ICON_EMPTYBOX: c_int = 63;
pub const ICON_TARGET: c_int = 64;
pub const ICON_TARGET_SMALL_FILL: c_int = 65;
pub const ICON_TARGET_BIG_FILL: c_int = 66;
pub const ICON_TARGET_MOVE_FILL: c_int = 67;
pub const ICON_CURSOR_MOVE_FILL: c_int = 68;
pub const ICON_CURSOR_SCALE_FILL: c_int = 69;
pub const ICON_CURSOR_SCALE_RIGHT_FILL: c_int = 70;
pub const ICON_CURSOR_SCALE_LEFT_FILL: c_int = 71;
pub const ICON_UNDO_FILL: c_int = 72;
pub const ICON_REDO_FILL: c_int = 73;
pub const ICON_REREDO_FILL: c_int = 74;
pub const ICON_MUTATE_FILL: c_int = 75;
pub const ICON_ROTATE_FILL: c_int = 76;
pub const ICON_REPEAT_FILL: c_int = 77;
pub const ICON_SHUFFLE_FILL: c_int = 78;
pub const ICON_EMPTYBOX_SMALL: c_int = 79;
pub const ICON_BOX: c_int = 80;
pub const ICON_BOX_TOP: c_int = 81;
pub const ICON_BOX_TOP_RIGHT: c_int = 82;
pub const ICON_BOX_RIGHT: c_int = 83;
pub const ICON_BOX_BOTTOM_RIGHT: c_int = 84;
pub const ICON_BOX_BOTTOM: c_int = 85;
pub const ICON_BOX_BOTTOM_LEFT: c_int = 86;
pub const ICON_BOX_LEFT: c_int = 87;
pub const ICON_BOX_TOP_LEFT: c_int = 88;
pub const ICON_BOX_CENTER: c_int = 89;
pub const ICON_BOX_CIRCLE_MASK: c_int = 90;
pub const ICON_POT: c_int = 91;
pub const ICON_ALPHA_MULTIPLY: c_int = 92;
pub const ICON_ALPHA_CLEAR: c_int = 93;
pub const ICON_DITHERING: c_int = 94;
pub const ICON_MIPMAPS: c_int = 95;
pub const ICON_BOX_GRID: c_int = 96;
pub const ICON_GRID: c_int = 97;
pub const ICON_BOX_CORNERS_SMALL: c_int = 98;
pub const ICON_BOX_CORNERS_BIG: c_int = 99;
pub const ICON_FOUR_BOXES: c_int = 100;
pub const ICON_GRID_FILL: c_int = 101;
pub const ICON_BOX_MULTISIZE: c_int = 102;
pub const ICON_ZOOM_SMALL: c_int = 103;
pub const ICON_ZOOM_MEDIUM: c_int = 104;
pub const ICON_ZOOM_BIG: c_int = 105;
pub const ICON_ZOOM_ALL: c_int = 106;
pub const ICON_ZOOM_CENTER: c_int = 107;
pub const ICON_BOX_DOTS_SMALL: c_int = 108;
pub const ICON_BOX_DOTS_BIG: c_int = 109;
pub const ICON_BOX_CONCENTRIC: c_int = 110;
pub const ICON_BOX_GRID_BIG: c_int = 111;
pub const ICON_OK_TICK: c_int = 112;
pub const ICON_CROSS: c_int = 113;
pub const ICON_ARROW_LEFT: c_int = 114;
pub const ICON_ARROW_RIGHT: c_int = 115;
pub const ICON_ARROW_DOWN: c_int = 116;
pub const ICON_ARROW_UP: c_int = 117;
pub const ICON_ARROW_LEFT_FILL: c_int = 118;
pub const ICON_ARROW_RIGHT_FILL: c_int = 119;
pub const ICON_ARROW_DOWN_FILL: c_int = 120;
pub const ICON_ARROW_UP_FILL: c_int = 121;
pub const ICON_AUDIO: c_int = 122;
pub const ICON_FX: c_int = 123;
pub const ICON_WAVE: c_int = 124;
pub const ICON_WAVE_SINUS: c_int = 125;
pub const ICON_WAVE_SQUARE: c_int = 126;
pub const ICON_WAVE_TRIANGULAR: c_int = 127;
pub const ICON_CROSS_SMALL: c_int = 128;
pub const ICON_PLAYER_PREVIOUS: c_int = 129;
pub const ICON_PLAYER_PLAY_BACK: c_int = 130;
pub const ICON_PLAYER_PLAY: c_int = 131;
pub const ICON_PLAYER_PAUSE: c_int = 132;
pub const ICON_PLAYER_STOP: c_int = 133;
pub const ICON_PLAYER_NEXT: c_int = 134;
pub const ICON_PLAYER_RECORD: c_int = 135;
pub const ICON_MAGNET: c_int = 136;
pub const ICON_LOCK_CLOSE: c_int = 137;
pub const ICON_LOCK_OPEN: c_int = 138;
pub const ICON_CLOCK: c_int = 139;
pub const ICON_TOOLS: c_int = 140;
pub const ICON_GEAR: c_int = 141;
pub const ICON_GEAR_BIG: c_int = 142;
pub const ICON_BIN: c_int = 143;
pub const ICON_HAND_POINTER: c_int = 144;
pub const ICON_LASER: c_int = 145;
pub const ICON_COIN: c_int = 146;
pub const ICON_EXPLOSION: c_int = 147;
pub const ICON_1UP: c_int = 148;
pub const ICON_PLAYER: c_int = 149;
pub const ICON_PLAYER_JUMP: c_int = 150;
pub const ICON_KEY: c_int = 151;
pub const ICON_DEMON: c_int = 152;
pub const ICON_TEXT_POPUP: c_int = 153;
pub const ICON_GEAR_EX: c_int = 154;
pub const ICON_CRACK: c_int = 155;
pub const ICON_CRACK_POINTS: c_int = 156;
pub const ICON_STAR: c_int = 157;
pub const ICON_DOOR: c_int = 158;
pub const ICON_EXIT: c_int = 159;
pub const ICON_MODE_2D: c_int = 160;
pub const ICON_MODE_3D: c_int = 161;
pub const ICON_CUBE: c_int = 162;
pub const ICON_CUBE_FACE_TOP: c_int = 163;
pub const ICON_CUBE_FACE_LEFT: c_int = 164;
pub const ICON_CUBE_FACE_FRONT: c_int = 165;
pub const ICON_CUBE_FACE_BOTTOM: c_int = 166;
pub const ICON_CUBE_FACE_RIGHT: c_int = 167;
pub const ICON_CUBE_FACE_BACK: c_int = 168;
pub const ICON_CAMERA: c_int = 169;
pub const ICON_SPECIAL: c_int = 170;
pub const ICON_LINK_NET: c_int = 171;
pub const ICON_LINK_BOXES: c_int = 172;
pub const ICON_LINK_MULTI: c_int = 173;
pub const ICON_LINK: c_int = 174;
pub const ICON_LINK_BROKE: c_int = 175;
pub const ICON_TEXT_NOTES: c_int = 176;
pub const ICON_NOTEBOOK: c_int = 177;
pub const ICON_SUITCASE: c_int = 178;
pub const ICON_SUITCASE_ZIP: c_int = 179;
pub const ICON_MAILBOX: c_int = 180;
pub const ICON_MONITOR: c_int = 181;
pub const ICON_PRINTER: c_int = 182;
pub const ICON_PHOTO_CAMERA: c_int = 183;
pub const ICON_PHOTO_CAMERA_FLASH: c_int = 184;
pub const ICON_HOUSE: c_int = 185;
pub const ICON_HEART: c_int = 186;
pub const ICON_CORNER: c_int = 187;
pub const ICON_VERTICAL_BARS: c_int = 188;
pub const ICON_VERTICAL_BARS_FILL: c_int = 189;
pub const ICON_LIFE_BARS: c_int = 190;
pub const ICON_INFO: c_int = 191;
pub const ICON_CROSSLINE: c_int = 192;
pub const ICON_HELP: c_int = 193;
pub const ICON_FILETYPE_ALPHA: c_int = 194;
pub const ICON_FILETYPE_HOME: c_int = 195;
pub const ICON_LAYERS_VISIBLE: c_int = 196;
pub const ICON_LAYERS: c_int = 197;
pub const ICON_WINDOW: c_int = 198;
pub const ICON_HIDPI: c_int = 199;
pub const ICON_FILETYPE_BINARY: c_int = 200;
pub const ICON_HEX: c_int = 201;
pub const ICON_SHIELD: c_int = 202;
pub const ICON_FILE_NEW: c_int = 203;
pub const ICON_FOLDER_ADD: c_int = 204;
pub const ICON_ALARM: c_int = 205;
pub const ICON_206: c_int = 206;
pub const ICON_207: c_int = 207;
pub const ICON_208: c_int = 208;
pub const ICON_209: c_int = 209;
pub const ICON_210: c_int = 210;
pub const ICON_211: c_int = 211;
pub const ICON_212: c_int = 212;
pub const ICON_213: c_int = 213;
pub const ICON_214: c_int = 214;
pub const ICON_215: c_int = 215;
pub const ICON_216: c_int = 216;
pub const ICON_217: c_int = 217;
pub const ICON_218: c_int = 218;
pub const ICON_219: c_int = 219;
pub const ICON_220: c_int = 220;
pub const ICON_221: c_int = 221;
pub const ICON_222: c_int = 222;
pub const ICON_223: c_int = 223;
pub const ICON_224: c_int = 224;
pub const ICON_225: c_int = 225;
pub const ICON_226: c_int = 226;
pub const ICON_227: c_int = 227;
pub const ICON_228: c_int = 228;
pub const ICON_229: c_int = 229;
pub const ICON_230: c_int = 230;
pub const ICON_231: c_int = 231;
pub const ICON_232: c_int = 232;
pub const ICON_233: c_int = 233;
pub const ICON_234: c_int = 234;
pub const ICON_235: c_int = 235;
pub const ICON_236: c_int = 236;
pub const ICON_237: c_int = 237;
pub const ICON_238: c_int = 238;
pub const ICON_239: c_int = 239;
pub const ICON_240: c_int = 240;
pub const ICON_241: c_int = 241;
pub const ICON_242: c_int = 242;
pub const ICON_243: c_int = 243;
pub const ICON_244: c_int = 244;
pub const ICON_245: c_int = 245;
pub const ICON_246: c_int = 246;
pub const ICON_247: c_int = 247;
pub const ICON_248: c_int = 248;
pub const ICON_249: c_int = 249;
pub const ICON_250: c_int = 250;
pub const ICON_251: c_int = 251;
pub const ICON_252: c_int = 252;
pub const ICON_253: c_int = 253;
pub const ICON_254: c_int = 254;
pub const ICON_255: c_int = 255;
pub const GuiIconName = c_uint;
pub const RAYGUI_VERSION = "3.2";
pub const SCROLLBAR_LEFT_SIDE = @as(c_int, 0);
pub const SCROLLBAR_RIGHT_SIDE = @as(c_int, 1);
