;; 行番号の表示
(require 'linum)
(global-linum-mode t)
;; 対応するカッコを光らせる
(show-paren-mode t)
;; スタートアップメッセージを表示しない
(setq inhibit-startup-message t)
;; カーソルの点滅をやめる
(blink-cursor-mode 0)
;; 環境を日本語、UTF-8にする
(set-locale-environment nil)
(set-language-environment "Japanese")
(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)
(set-buffer-file-coding-system 'utf-8)
(setq default-buffer-file-coding-system 'utf-8)
(set-default-coding-systems 'utf-8)
(prefer-coding-system 'utf-8)

;; *.~ とかのバックアップファイルを作らない
(setq make-backup-files nil)
;; .#* とかのバックアップファイルを作らない
(setq auto-save-default nil)

;; キーバインドの変更
(define-key global-map(kbd "C-n")'forward-char)
(define-key global-map(kbd "C-b")'backward-char)
(define-key global-map(kbd "C-f")'next-line)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(font-lock-string-face ((t (:foreground "color-84")))))
