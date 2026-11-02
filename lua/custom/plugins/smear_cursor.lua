return {
  "sphamba/smear-cursor.nvim",

  opts = {
    -- Disabled: closing floats (telescope, lazygit) counts as a window switch
    -- and leaves a smeared ghost trail from the float's cursor position.
    smear_between_buffers = false,

    -- Smear cursor when moving within line or to neighbor lines.
    -- Use `min_horizontal_distance_smear` and `min_vertical_distance_smear` for finer control
    smear_between_neighbor_lines = true,

    -- Draw the smear in buffer space instead of screen space when scrolling
    scroll_buffer_space = true,

    -- Set to `true` if your font supports legacy computing symbols (block unicode symbols).
    -- Smears and particles will look a lot less blocky.
    -- Disabled: the sextant/octant glyphs render as stray pixel-like dots
    -- when the font draws them imperfectly.
    legacy_computing_symbols_support = false,

    -- Smear cursor in insert mode.
    -- See also `vertical_bar_cursor_insert_mode` and `distance_stop_animating_vertical_bar`.
    smear_insert_mode = true,


    smear_to_cmd = false,


    stiffness = 0.85,
    trailing_stiffness = 0.3,


    -- Prevent smearing on small vertical movements
    min_vertical_distance_smear = 3,

    -- Stop the animation sooner
    distance_stop_animating = 0.3,

    -- Shorter smear trail
    max_length = 10.0,

    -- Faster redraws
    time_interval = 10,
  },
}
