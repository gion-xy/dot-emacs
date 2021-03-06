;; swap command & option
(setq ns-command-modifier (quote meta))
(setq ns-alternate-modifier (quote super))

;; Scroll settings (Magic Trackpad)
(defun scroll-down-with-lines () "" (interactive) (scroll-down 3))
(defun scroll-up-with-lines () "" (interactive) (scroll-up 3))
(global-set-key [wheel-up] 'scroll-down-with-lines)
(global-set-key [wheel-down] 'scroll-up-with-lines)
(global-set-key [double-wheel-up] 'scroll-down-with-lines)
(global-set-key [double-wheel-down] 'scroll-up-with-lines)
(global-set-key [triple-wheel-up] 'scroll-down-with-lines)
(global-set-key [triple-wheel-down] 'scroll-up-with-lines)
