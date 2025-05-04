conky.config = {
    background = true,
    double_buffer = true,
    no_buffers = true,
    update_interval = 1.0,
    total_run_times = 0,

    own_window = true,
    own_window_type = 'desktop',
    own_window_transparent = true,
    own_window_hints = 'undecorated,below,sticky,skip_taskbar,skip_pager',
    own_window_argb_visual = true,
    own_window_argb_value = 120,

    draw_shades = false,
    draw_outline = false,
    draw_borders = false,
    draw_graph_borders = false,

    alignment = 'top_right',
    gap_x = 40,
    gap_y = 50,
    minimum_width = 300, minimum_height = 800,

    use_xft = true,
    font = 'Ubuntu:size=10',
    xftalpha = 0.8,

    uppercase = false,
    override_utf8_locale = true,

    default_color = 'white',
    color1 = '#00BFFF',
    color2 = '#FF8C00',
    color3 = '#FFFFFF',

    lua_load = '/home/bernerfg/.conky/conky-seamod/seamod_rings.lua',
    lua_draw_hook_pre = 'conky_main',
};

conky.text = [[
${offset 20}${font Ubuntu:size=12:style=bold}${color1}SYSTEM ${hr 2}
${offset 85}${font Ubuntu:size=10:style=bold}${color1}Hostname: $alignr$color3$nodename
${offset 85}${font Ubuntu:size=10:style=bold}${color1}Kernel: $alignr$color3$kernel
${offset 85}${font Ubuntu:size=10:style=bold}${color1}Uptime: $alignr$color3$uptime
${offset 85}${font Ubuntu:size=10:style=bold}${color1}CPU Temp: $alignr$color3${execi 10 sensors | grep 'Tctl:' | awk '{print $2}'}
${offset 85}${font Ubuntu:size=10:style=bold}${color1}GPU Temp: ${alignr}${color3}${execi 10 sensors | grep 'edge:' | head -n1 | awk '{print $2}'}


${voffset 20}
${offset 65}${font Ubuntu:size=12:style=bold}${color1}CPU ${hr 2}
${offset 85}${font Ubuntu:size=10:style=bold}${color1}CPU1: $alignr$color3${cpu cpu1}%
${offset 85}${font Ubuntu:size=10:style=bold}${color1}CPU2: $alignr$color3${cpu cpu2}%
${offset 85}${font Ubuntu:size=10:style=bold}${color1}Load: $alignr$color3$loadavg

${voffset 50}
${offset 65}${font Ubuntu:size=12:style=bold}${color1}MEMORY & DISK ${hr 2}
${offset 85}${font Ubuntu:size=10:style=bold}${color1}RAM: $alignr$color3$mem / $memmax
${offset 85}${font Ubuntu:size=10:style=bold}${color1}Swap: $alignr$color3$swap / $swapmax

${voffset 65}
${offset 65}${font Ubuntu:size=12:style=bold}${color1}DISK USAGE ${hr 2}
${offset 85}${font Ubuntu:size=10:style=bold}${color1}/root: ${alignr}${color2}${fs_used /} / ${fs_size /}  (${fs_free_perc /}% free)
${offset 85}${font Ubuntu:size=10:style=bold}${color1}/home: ${alignr}${color2}${fs_used /home} / ${fs_size /home}  (${fs_free_perc /home}% free)
${offset 85}${font Ubuntu:size=10:style=bold}${color1}/media/usb: ${alignr}${color2}${fs_used /media/usb} / ${fs_size /media/usb}  (${fs_free_perc /media/usb}% free)

${voffset 20}
${offset 65}${font Ubuntu:size=12:style=bold}${color1}NETWORK ${hr 2}
${offset 85}${font Ubuntu:size=10:style=bold}${color1}Local IP: $alignr$color3${addr wlxdc6279f60579}
${offset 85}${font Ubuntu:size=10:style=bold}${color1}Up: ${alignr}$color3${upspeed wlxdc6279f60579} / ${totalup wlxdc6279f60579}
${offset 85}${font Ubuntu:size=10:style=bold}${color1}Down: ${alignr}$color3${downspeed wlxdc6279f60579} / ${totaldown wlxdc6279f60579}
${upspeedgraph wlxdc6279f60579 40,300 4B1B0C FF5C2B 1280KiB -l}
${downspeedgraph wlxdc6279f60579 40,300 324D23 77B753 1280KiB -l}

]];
