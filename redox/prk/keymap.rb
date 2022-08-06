kbd = Keyboard.new

r0 = 20
r1 = 19
r2 = 18
r3 = 17
r4 = 16

c0 = 9
c1 = 10
c2 = 11
c3 = 12
c4 = 13
c5 = 14
c6 = 15

kbd.split = true # This should happen before Keyboard#init_pins.
kbd.set_anchor(:right) # This should happen before `Keyboard#init_pins`, too.
kbd.split_style = :right_side_flipped_split
kbd.init_matrix_pins(
    [
      [ [r0, c0], [r0, c1], [r0, c2], [r0, c3], [r0, c4], [r0, c5], [r0, c6] ],
      [ [r1, c0], [r1, c1], [r1, c2], [r1, c3], [r1, c4], [r1, c5], [r1, c6] ],
      [ [r2, c0], [r2, c1], [r2, c2], [r2, c3], [r2, c4], [r2, c5], [r2, c6] ],
      [ [r3, c0], [r3, c1], [r3, c2], [r3, c3], [r3, c4], [r3, c5], [r3, c6] ],
      [ [r4, c0], [r4, c1], [r4, c2], [r4, c3], [r4, c4], [r4, c5], [r4, c6] ],   
    ]
  )
kbd.add_layer :default, %i(
  KC_GRAVE  KC_1  KC_2  KC_3  KC_4  KC_5  KC_QUES                                KC_QUES  KC_6  KC_7  KC_8      KC_9    KC_0       KC_MINUS
  KC_TAB    KC_Q  KC_W  KC_E  KC_R  KC_T  KC_LBRC                                KC_RBRC  KC_Y  KC_U  KC_I      KC_O    KC_P       KC_EQL
  KC_ESC    KC_A  KC_S  KC_D  KC_F  KC_G  KC_PGUP                                KC_END   KC_H  KC_J  KC_K      KC_L    KC_SCOLON  KC_QUOT
  KC_LSFT   KC_Z  KC_X  KC_C  KC_V  KC_B  KC_PGDN                                KC_HOME  KC_N  KC_M  KC_COMMA  KC_DOT  KC_SLSH    KC_RSFT
  KC_LGUI   KC_KP_PLUS  KC_KP_MINUS  KC_LALT  KC_LCTL  KC_BSPC  KC_DEL           KC_ENT   KC_SPC  KC_RALT  KC_RGHT KC_DOWN  KC_UP  KC_LEFT
)
kbd.start!
