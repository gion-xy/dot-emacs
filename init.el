;;;; load-path に指定したディレクトリとその下位を追加する関数
(defun add-to-load-path (&rest paths)
  (let (path)
    (dolist (path paths paths)
     (let ((default-directory (expand-file-name (concat user-emacs-directory path))))
        (add-to-list 'load-path default-directory)
         (if (fboundp 'normal-top-level-add-subdirs-to-load-path)
             (normal-top-level-add-subdirs-to-load-path))))))
(add-to-load-path "site-lisp")

;;;; init-loader.el
;;;; (add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/") t)
;;;; M-x package-install init-loader
(package-initialize)
(require 'init-loader)
(setq init-loader-show-log-after-init nil)
(init-loader-load "~/.emacs.d/conf")
