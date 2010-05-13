#lang scheme/base
  
  (require scheme/unit)
  
  (provide (prefix-out framework: (except-out (all-defined-out) framework^))
           framework^)
  
  (define-signature number-snip-class^ 
    (snip-class%))
  (define-signature number-snip^ extends number-snip-class^
    (make-repeating-decimal-snip
     make-fraction-snip))
  
  (define-signature comment-box-class^
    (snipclass snip%))
  (define-signature comment-box^ extends comment-box-class^
    ())
  
  (define-signature menu-class^
    (can-restore<%>
     can-restore-mixin
     can-restore-underscore<%>
     can-restore-underscore-mixin
     can-restore-menu-item%
     can-restore-checkable-menu-item%
     can-restore-underscore-menu%))
  (define-signature menu^ extends menu-class^
    ())
  
  (define-signature version-class^
    ())
  (define-signature version^ extends version-class^
    (add-spec
     version))
  
  (define-signature panel-class^
    (single-mixin
     single<%>
     
     single-window<%>
     single-window-mixin
     
     ;;multi-view-mixin
     ;;multi-view<%>
     
     
     single%
     single-pane%
     ;;multi-view%
     
     dragable<%>
     dragable-mixin
     
     vertical-dragable<%>
     vertical-dragable-mixin
     vertical-dragable%
     
     horizontal-dragable<%>
     horizontal-dragable-mixin
     horizontal-dragable%))
  (define-signature panel^ extends panel-class^
    ())
  
  (define-signature application-class^
    ())
  (define-signature application^ extends application-class^
    (current-app-name))
  
  (define-signature preferences-class^
    ())
  (define-signature preferences^ extends preferences-class^
    (put-preferences/gui
     add-panel
     add-font-panel
     
     add-editor-checkbox-panel
     add-general-checkbox-panel
     add-warnings-checkbox-panel
     add-scheme-checkbox-panel
     
     add-to-editor-checkbox-panel
     add-to-general-checkbox-panel
     add-to-warnings-checkbox-panel
     add-to-scheme-checkbox-panel
     
     add-on-close-dialog-callback
     add-can-close-dialog-callback
     
     show-dialog
     hide-dialog))
  
  (define-signature autosave-class^
    (autosavable<%>))
  (define-signature autosave^ extends autosave-class^
    (register
     restore-autosave-files/gui))
  
  (define-signature exit-class^
    ())
  (define-signature exit^ extends exit-class^
    (set-exiting
     exiting?
     user-oks-exit
     insert-on-callback
     insert-can?-callback
     can-exit?
     on-exit
     exit))
  
  (define-signature path-utils-class^
    ())
  (define-signature path-utils^ extends path-utils-class^
    (generate-autosave-name 
     generate-backup-name))
  
  (define-signature finder-class^
    ())
  (define-signature finder^ extends finder-class^
    (dialog-parent-parameter
     default-extension
     default-filters
     common-put-file 
     common-get-file 
     std-put-file 
     std-get-file 
     common-get-file-list
     get-file
     put-file))
  
  (define-signature editor-class^
    (basic<%>
     standard-style-list<%>
     keymap<%>
     autowrap<%>
     info<%>
     file<%>
     backup-autosave<%>
     basic-mixin
     standard-style-list-mixin
     keymap-mixin
     autowrap-mixin
     info-mixin
     file-mixin
     backup-autosave-mixin))
  (define-signature editor^ extends editor-class^
    (get-standard-style-list
     set-standard-style-list-pref-callbacks
     set-standard-style-list-delta
     set-default-font-color
     get-default-color-style-name
     add-after-user-keymap))
  
  (define-signature pasteboard-class^
    (basic%
     standard-style-list%
     keymap%
     file%
     backup-autosave%
     info%))
  (define-signature pasteboard^ extends pasteboard-class^
    ())
  
  (define-signature text-class^
    (basic<%>
     first-line<%>
     foreground-color<%>
     hide-caret/selection<%>
     nbsp->space<%>
     normalize-paste<%>
     delegate<%>
     wide-snip<%>
     searching<%>
     return<%>
     info<%>
     file<%>
     clever-file-format<%>
     ports<%>
     input-box<%>
     autocomplete<%>
     
     basic% 
     hide-caret/selection%
     nbsp->space%
     normalize-paste%
     1-pixel-string-snip%
     1-pixel-tab-snip%
     delegate%
     wide-snip%
     standard-style-list%
     keymap%
     return%
     autowrap%
     file%
     clever-file-format%
     backup-autosave%
     searching%
     info%
     input-box%
     
     basic-mixin
     first-line-mixin
     foreground-color-mixin
     hide-caret/selection-mixin
     nbsp->space-mixin
     normalize-paste-mixin
     wide-snip-mixin
     delegate-mixin
     searching-mixin
     return-mixin
     info-mixin
     file-mixin
     clever-file-format-mixin
     ports-mixin
     input-box-mixin
     autocomplete-mixin))
  (define-signature text^ extends text-class^
    (autocomplete-append-after
     autocomplete-limit
     get-completions/manuals
     lookup-port-name
     
     range?
     range-start
     range-end
     range-caret-space? 
     range-style 
     range-color))
  
  (define-signature canvas-class^
    (basic<%>
     color<%>
     delegate<%>
     info<%>
     wide-snip<%>
     
     basic%
     color%
     info%
     delegate%
     wide-snip%
     
     basic-mixin
     color-mixin
     delegate-mixin
     info-mixin
     wide-snip-mixin))
  (define-signature canvas^ extends canvas-class^
    ())
  
  (define-signature frame-class^
    (basic<%>
     size-pref<%>
     register-group<%>
     status-line<%>
     standard-menus<%>
     editor<%>
     open-here<%>
     text<%>
     pasteboard<%>
     delegate<%>
     searchable<%>
     searchable-text<%>
     info<%>
     text-info<%>
     pasteboard-info<%>
     
     basic%
     size-pref%
     status-line%
     info%
     text-info%
     pasteboard-info%
     standard-menus%
     editor%
     open-here%
     text%
     searchable%
     delegate%
     pasteboard%
     
     basic-mixin
     size-pref-mixin
     register-group-mixin
     status-line-mixin
     standard-menus-mixin
     editor-mixin
     open-here-mixin
     text-mixin
     pasteboard-mixin
     delegate-mixin
     searchable-mixin
     searchable-text-mixin
     info-mixin
     text-info-mixin
     pasteboard-info-mixin))
  (define-signature frame^ extends frame-class^
    (current-icon
     reorder-menus
     remove-empty-menus
     add-snip-menu-items
     setup-size-pref))
  
  (define-signature group-class^
    (%))
  (define-signature group^ extends group-class^
    (get-the-frame-group
     on-close-action
     can-close-check
     add-to-windows-menu))
  
  (define-signature handler-class^
    ())
  (define-signature handler^ extends handler-class^
    (handler? 
     handler-name 
     handler-extension
     handler-handler
     insert-format-handler
     find-format-handler 
     find-named-format-handler 
     current-create-new-window
     edit-file
     open-file
     install-recent-items
     add-to-recent
     set-recent-position
     set-recent-items-frame-superclass
     size-recently-opened-files))
  
  (define-signature icon-class^
    ())
  (define-signature icon^ extends icon-class^
    (get-paren-highlight-bitmap
     get-autowrap-bitmap
     get-eof-bitmap
     
     get-lock-bitmap
     get-unlock-bitmap
     get-anchor-bitmap
     
     get-left/right-cursor
     get-up/down-cursor
     
     get-gc-on-bitmap
     get-gc-off-bitmap))
  
  (define-signature keymap-class^
    (aug-keymap%
     aug-keymap<%>
     aug-keymap-mixin))
  (define-signature keymap^ extends keymap-class^
    (send-map-function-meta
     make-meta-prefix-list
     
     canonicalize-keybinding-string
     
     add-to-right-button-menu
     add-to-right-button-menu/before
     
     setup-global
     setup-search
     setup-file
     setup-editor
     
     get-user
     get-global
     get-search
     get-file
     get-editor
     
     set-chained-keymaps
     remove-chained-keymap
     
     call/text-keymap-initializer
     
     add-user-keybindings-file
     remove-user-keybindings-file))
  
  (define-signature color-class^
    (text<%>
     text-mixin
     text%
     
     text-mode<%>
     text-mode-mixin
     text-mode%))
  (define-signature color^ extends color-class^
    (get-parenthesis-colors-table))
  
  (define-signature color-prefs-class^
    ())
  (define-signature color-prefs^ extends color-prefs-class^
    (register-color-preference
     add-to-preferences-panel
     build-color-selection-panel
     add-background-preferences-panel
     marshall-style-delta
     unmarshall-style-delta
     set-default/color-scheme
     white-on-black
     black-on-white))
  
  (define-signature scheme-class^
    (text<%>
     text-mixin
     text%
     
     text-mode<%>
     text-mode-mixin
     text-mode%
     
     set-mode-mixin
     
     sexp-snip%
     sexp-snip<%>))
  (define-signature scheme^ extends scheme-class^
    (get-wordbreak-map
     init-wordbreak-map
     get-keymap
     setup-keymap
     add-preferences-panel
     add-coloring-preferences-panel
     
     get-color-prefs-table
     get-white-on-black-color-prefs-table
     short-sym->pref-name
     short-sym->style-name
     
     text-balanced?))
  
  (define-signature main-class^ ())
  (define-signature main^ extends main-class^ ())
  
  (define-signature mode-class^ 
    (host-text-mixin
     host-text<%>
     surrogate-text%
     surrogate-text<%>))
  (define-signature mode^ extends mode-class^ ())
  
  (define-signature color-model-class^
    ())
  (define-signature color-model^ extends color-model-class^
    (xyz?
     xyz-x
     xyz-y
     xyz-z
     rgb-color-distance
     rgb->xyz
     xyz->rgb))
  
  (define-signature framework^
    ((open (prefix application: application^))
     (open (prefix version: version^))
     (open (prefix color-model: color-model^))
     (open (prefix mode: mode^))
     (open (prefix exit: exit^))
     (open (prefix menu: menu^))
     (open (prefix preferences: preferences^))
     (open (prefix number-snip: number-snip^))
     (open (prefix autosave: autosave^))
     (open (prefix path-utils: path-utils^))
     (open (prefix icon: icon^))
     (open (prefix keymap: keymap^))
     (open (prefix editor: editor^))
     (open (prefix pasteboard: pasteboard^))
     (open (prefix text: text^))
     (open (prefix color: color^))
     (open (prefix color-prefs: color-prefs^))
     (open (prefix comment-box: comment-box^))
     (open (prefix finder: finder^))
     (open (prefix group: group^))
     (open (prefix canvas: canvas^))
     (open (prefix panel: panel^))
     (open (prefix frame: frame^))
     (open (prefix handler: handler^))
     (open (prefix scheme: scheme^))
     (open (prefix main: main^))))