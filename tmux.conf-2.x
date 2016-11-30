# improve colors
set-option -g default-terminal screen-256color

# status
set-option -g status-fg colour227
set-option -g status-bg colour233
set-option -g status-position top
set-option -g status-left-length 90
set-option -g status-left '#[bg=colour232]#H:#{pane_current_path}'
set-option -g status-right-length 90
set-option -g status-right '#[bg=colour234]%Y/%m/%d(%a) %H:%M'
set-option -g status-interval 1
set-option -g status-justify centre
set-window-option -g window-status-current-attr bright
set-window-option -g window-status-current-format '[#I-#P:#W]'

# keybind
unbind-key C-b
set-option -g prefix C-t
bind-key C-t send-prefix
bind-key | split-window -h
bind-key - split-window -v
set-window-option -g mode-keys vi
bind-key -t vi-copy v begin-selection
bind-key -t vi-copy y copy-selection
bind-key -t vi-copy Y copy-end-of-line
bind-key -t vi-copy C-n cursor-down
bind-key -t vi-copy C-p cursor-up
bind-key -t vi-copy C-f cursor-right
bind-key -t vi-copy C-b cursor-left

# mouse
set-window-option -g mouse on

# pasteboard
# set-option -g default-command "reattach-to-user-namespace -l $SHELL"
