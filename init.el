;; 行番号の表示
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
