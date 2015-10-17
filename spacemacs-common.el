;;; spacemacs-common.el --- Color theme with a dark and light versions.

;; Copyright (C) 2014 , Nasser Alshammari

;; Author: Nasser Alshammari
;; URL: <https://github.com/nashamri/spacemacs-theme>
;;
;; Version: 0.1
;; Keywords: color, theme
;; Package-Requires: ((emacs "24"))

;; Initially created with the help of emacs-theme-generator, <https://github.com/mswift42/theme-creator>.

;; This program is free software: you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program. If not, see <http://www.gnu.org/licenses/>.

;; This file is not part of Emacs.

;;; Commentary:

;; This is a color theme for spacemacs <https://github.com/syl20bnr/spacemacs>.
;; It comes with two versions, dark and light and should work well in
;; a 256 color terminal.

;;; Code:

(defgroup spacemacs-theme nil
  "Spacemacs-theme options."
  :group 'faces)

(defcustom spacemacs-theme-comment-bg t
  "Use a background for comment lines."
  :type 'boolean
  :group 'spacemacs-theme)

(defcustom spacemacs-theme-org-height t
  "Use varying text heights for org headings."
  :type 'boolean
  :group 'spacemacs-theme)

(defcustom spacemacs-theme-org-highlight t
  "Highlight org headings."
  :type 'boolean
  :group 'spacemacs-theme)

(defun create-spacemacs-theme (variant theme-name)
  (let ((class '((class color) (min-colors 89))) ;;                    ~~ Dark ~~                                   ~~ Light ~~
        ;;                                                               GUI       TER                                GUI       TER
        (base          (if (eq variant 'dark) (if (display-graphic-p) "#b2b2b2" "#b2b2b2") (if (display-graphic-p) "#655370" "#5f5f87")))
        (cursor        (if (eq variant 'dark) (if (display-graphic-p) "#e3dedd" "#d0d0d0") (if (display-graphic-p) "#100a14" "#121212")))
        (bg1           (if (eq variant 'dark) (if (display-graphic-p) "#292b2e" "#262626") (if (display-graphic-p) "#fbf8ef" "#ffffff")))
        (bg2           (if (eq variant 'dark) (if (display-graphic-p) "#212026" "#1c1c1c") (if (display-graphic-p) "#efeae9" "#e4e4e4")))
        (bg3           (if (eq variant 'dark) (if (display-graphic-p) "#100a14" "#121212") (if (display-graphic-p) "#e3dedd" "#d0d0d0")))
        (bg4           (if (eq variant 'dark) (if (display-graphic-p) "#0a0814" "#080808") (if (display-graphic-p) "#d2ceda" "#bcbcbc")))
        (key1          (if (eq variant 'dark) (if (display-graphic-p) "#4f97d7" "#4f97d7") (if (display-graphic-p) "#4f97d7" "#4f97d7")))
        (key2          (if (eq variant 'dark) (if (display-graphic-p) "#277bb8" "#277bb8") (if (display-graphic-p) "#277bb8" "#277bb8")))
        (builtin       (if (eq variant 'dark) (if (display-graphic-p) "#1f71ab" "#268bd2") (if (display-graphic-p) "#1f71ab" "#268bd2")))
        (keyword       (if (eq variant 'dark) (if (display-graphic-p) "#237fbf" "#268bd2") (if (display-graphic-p) "#237fbf" "#268bd2")))
        (const         (if (eq variant 'dark) (if (display-graphic-p) "#a45bad" "#d75fd7") (if (display-graphic-p) "#4e3163" "#8700af")))
        (comment       (if (eq variant 'dark) (if (display-graphic-p) "#2aa1ae" "#008787") (if (display-graphic-p) "#2aa1ae" "#008787")))
        (comment-bg    (if (eq variant 'dark) (if (display-graphic-p) "#292e34" "#262626") (if (display-graphic-p) "#ecf3ec" "#ffffff")))
        (func          (if (eq variant 'dark) (if (display-graphic-p) "#bc6ec5" "#d75fd7") (if (display-graphic-p) "#6c3163" "#8700af")))
        (str           (if (eq variant 'dark) (if (display-graphic-p) "#2d9574" "#2aa198") (if (display-graphic-p) "#2d9574" "#2aa198")))
        (type          (if (eq variant 'dark) (if (display-graphic-p) "#ce537a" "#df005f") (if (display-graphic-p) "#ba2f59" "#af005f")))
        (comp          (if (eq variant 'dark) (if (display-graphic-p) "#c56ec3" "#d75fd7") (if (display-graphic-p) "#6c4173" "#8700af")))
        (var           (if (eq variant 'dark) (if (display-graphic-p) "#7590db" "#8787d7") (if (display-graphic-p) "#715ab1" "#af5fd7")))
        (err           (if (eq variant 'dark) (if (display-graphic-p) "#e0211d" "#e0211d") (if (display-graphic-p) "#e0211d" "#e0211d")))
        (war           (if (eq variant 'dark) (if (display-graphic-p) "#dc752f" "#dc752f") (if (display-graphic-p) "#dc752f" "#dc752f")))
        (inf           (if (eq variant 'dark) (if (display-graphic-p) "#2f96dc" "#2f96dc") (if (display-graphic-p) "#2f96dc" "#2f96dc")))
        (suc           (if (eq variant 'dark) (if (display-graphic-p) "#86dc2f" "#86dc2f") (if (display-graphic-p) "#86dc2f" "#87ff00")))
        (green         (if (eq variant 'dark) (if (display-graphic-p) "#67b11d" "#67b11d") (if (display-graphic-p) "#67b11d" "#5faf00")))
        (yellow        (if (eq variant 'dark) (if (display-graphic-p) "#b1951d" "#875f00") (if (display-graphic-p) "#b1951d" "#875f00")))
        (cyan          (if (eq variant 'dark) (if (display-graphic-p) "#28def0" "#00ffff") (if (display-graphic-p) "#21b8c7" "#008080")))
        (violet        (if (eq variant 'dark) (if (display-graphic-p) "#a31db1" "#af00df") (if (display-graphic-p) "#a31db1" "#800080")))
        (red           (if (eq variant 'dark) (if (display-graphic-p) "#f2241f" "#d70000") (if (display-graphic-p) "#f2241f" "#d70008")))
        (active1       (if (eq variant 'dark) (if (display-graphic-p) "#222226" "#121212") (if (display-graphic-p) "#e7e5eb" "#d7dfff")))
        (active2       (if (eq variant 'dark) (if (display-graphic-p) "#5d4d7a" "#444444") (if (display-graphic-p) "#d3d3e7" "#afafd7")))
        (ttip          (if (eq variant 'dark) (if (display-graphic-p) "#9a9aba" "#888888") (if (display-graphic-p) "#8c799f" "#5f5f87")))
        (ttip-sl       (if (eq variant 'dark) (if (display-graphic-p) "#6b5d85" "#333333") (if (display-graphic-p) "#c8c6dd" "#afafff")))
        (ttip-bg       (if (eq variant 'dark) (if (display-graphic-p) "#34323e" "#444444") (if (display-graphic-p) "#e2e0ea" "#dfdfff")))
        (inactive      (if (eq variant 'dark) (if (display-graphic-p) "#5d4d7a" "#111111") (if (display-graphic-p) "#9f8fbd" "#af87d7")))
        (m-line-brdr   (if (eq variant 'dark) (if (display-graphic-p) "#5d4d7a" "#111111") (if (display-graphic-p) "#b3b9be" "#b3b9be")))
        (org-cb        (if (eq variant 'dark) (if (display-graphic-p) "#cbc1d5" "#b2b2b2") (if (display-graphic-p) "#655370" "#5f5f87")))
        (org-cb-bg     (if (eq variant 'dark) (if (display-graphic-p) "#2f2b33" "#262626") (if (display-graphic-p) "#e8e3f0" "#ffffff")))
        (org-cb-ln     (if (eq variant 'dark) (if (display-graphic-p) "#827591" "#af5faf") (if (display-graphic-p) "#9380b2" "#af5fdf")))
        (org-cb-ln-bg  (if (eq variant 'dark) (if (display-graphic-p) "#373040" "#333333") (if (display-graphic-p) "#ddd8eb" "#dfdfff")))
        (org-h1-bg     (if (eq variant 'dark) (if (display-graphic-p) "#293239" "#262626") (if (display-graphic-p) "#edf1ed" "#ffffff")))
        (org-h2-bg     (if (eq variant 'dark) (if (display-graphic-p) "#293235" "#262626") (if (display-graphic-p) "#edf2e9" "#ffffff")))
        (org-h3-bg     (if (eq variant 'dark) (if (display-graphic-p) "#2d332c" "#262626") (if (display-graphic-p) "#f1f3e1" "#ffffff")))
        (org-h4-bg     (if (eq variant 'dark) (if (display-graphic-p) "#32322c" "#262626") (if (display-graphic-p) "#f6f1e1" "#ffffff")))
        (org-ml        (if (eq variant 'dark) (if (display-graphic-p) "#ac641b" "#af5f00") (if (display-graphic-p) "#da8b55" "#df5f5f")))
        (highlight     (if (eq variant 'dark) (if (display-graphic-p) "#333c45" "#444444") (if (display-graphic-p) "#d3d3e7" "#d7d7ff")))
        (lnum          (if (eq variant 'dark) (if (display-graphic-p) "#44505c" "#444444") (if (display-graphic-p) "#a8a8bf" "#af87af")))
        (green-bg      (if (eq variant 'dark) (if (display-graphic-p) "#29422d" "#262626") (if (display-graphic-p) "#dae6d0" "#ffffff")))
        (red-bg        (if (eq variant 'dark) (if (display-graphic-p) "#512e31" "#262626") (if (display-graphic-p) "#eed9d2" "#ffffff"))))

    (custom-theme-set-faces
     theme-name

;;;;; basics
     `(cursor ((,class (:background ,cursor))))
     `(custom-button ((,class :background ,bg2 :foreground ,base ,:box (:line-width 2 :style released-button))))
     `(default ((,class (:background ,bg1 :foreground ,base))))
     `(default-italic ((,class (:italic t))))
     `(error ((,class (:foreground ,err))))
     `(eval-sexp-fu-flash ((,class (:background ,suc :foreground ,bg1))))
     `(eval-sexp-fu-flash-error ((,class (:background ,err :foreground ,bg1))))
     `(font-lock-builtin-face ((,class (:foreground ,builtin))))
     `(font-lock-comment-face ((,class (:foreground ,comment :background ,(when spacemacs-theme-comment-bg comment-bg)))))
     `(font-lock-constant-face ((,class (:foreground ,const))))
     `(font-lock-doc-face ((,class (:foreground ,comment))))
     `(font-lock-function-name-face ((,class (:foreground ,func :bold t))))
     `(font-lock-keyword-face ((,class (:bold ,class :foreground ,keyword))))
     `(font-lock-negation-char-face ((,class (:foreground ,const))))
     `(font-lock-preprocessor-face ((,class (:foreground ,func))))
     `(font-lock-reference-face ((,class (:foreground ,const))))
     `(font-lock-string-face ((,class (:foreground ,str))))
     `(font-lock-type-face ((,class (:foreground ,type :bold t))))
     `(font-lock-variable-name-face ((,class (:foreground ,var))))
     `(font-lock-warning-face ((,class (:foreground ,war :background ,bg1))))
     `(fringe ((,class (:background ,bg1 :foreground ,base))))
     `(highlight ((,class (:foreground ,base :background ,bg3))))
     `(hl-line ((,class (:background ,bg2))))
     `(isearch ((,class (:bold t :foreground ,bg1 :background ,inf))))
     `(lazy-highlight ((,class (:foreground ,bg1 :background ,inf :weight normal))))
     `(link ((,class (:foreground ,comment :underline t))))
     `(link-visited ((,class (:foreground ,comp :underline t))))
     `(match ((,class (:background ,bg1 :foreground ,inf :weight bold))))
     `(minibuffer-prompt ((,class (:bold t :foreground ,keyword))))
     `(page-break-lines ((,class (:foreground ,active2))))
     `(popup-tip-face ((,class (:background ,ttip-sl :foreground ,base :bold nil :italic nil :underline nil))))
     `(region ((,class (:background ,highlight))))
     `(secondary-selection ((,class (:background ,bg3))))
     `(show-paren-match-face ((,class (:background ,suc))))
     `(success ((,class (:foreground ,suc))))
     `(tooltip ((,class (:background ,ttip-sl :foreground ,base :bold nil :italic nil :underline nil))))
     `(vertical-border ((,class (:foreground ,bg4))))
     `(warning ((,class (:foreground ,war ))))

;;;;; anzu-mode
     `(anzu-mode-line ((,class (:foreground ,yellow :weight bold))))

;;;;; company
     `(company-echo-common ((,class (:background ,base :foreground ,bg1))))
     `(company-preview ((,class (:background ,ttip-bg :foreground ,ttip))))
     `(company-preview-common ((,class (:background ,ttip-bg :foreground ,base))))
     `(company-preview-search ((,class (:inherit match))))
     `(company-scrollbar-bg ((,class (:background ,bg2))))
     `(company-scrollbar-fg ((,class (:background ,active2))))
     `(company-template-field ((,class (:inherit region))))
     `(company-tooltip ((,class (:background ,ttip-bg :foreground ,ttip))))
     `(company-tooltip-annotation ((,class (:background ,ttip-bg :foreground ,inf))))
     `(company-tooltip-common ((,class (:background ,ttip-bg :foreground ,base))))
     `(company-tooltip-common-selection ((,class (:foreground ,base))))
     `(company-tooltip-mouse ((,class (:inherit highlight))))
     `(company-tooltip-search ((,class (:inherit match))))
     `(company-tooltip-selection ((,class (:background ,ttip-sl :foreground ,base))))

;;;;; diff
     `(diff-added             ((,class :background nil :foreground ,green)))
     `(diff-changed           ((,class :background nil :foreground ,inf)))
     `(diff-header            ((,class :background ,org-cb-ln-bg :foreground ,func)))
     `(diff-indicator-added   ((,class :background nil :foreground ,green)))
     `(diff-indicator-changed ((,class :background nil :foreground ,inf)))
     `(diff-indicator-removed ((,class :background nil :foreground ,red)))
     `(diff-refine-added      ((,class :background ,green :foreground ,bg4)))
     `(diff-refine-changed    ((,class :background ,inf :foreground ,bg4)))
     `(diff-refine-removed    ((,class :background ,red :foreground ,bg4)))
     `(diff-removed           ((,class :background nil :foreground ,red)))

;;;;; diff-hl
     `(diff-hl-change ((,class :background ,inf :foreground nil)))
     `(diff-hl-delete ((,class :background ,err :foreground nil)))
     `(diff-hl-insert ((,class :background ,suc :foreground nil)))

;;;;; dired
     `(dired-directory ((,class (:foreground ,key1 :background ,bg1 :weight bold))))
     `(dired-flagged ((,class (:foreground ,red))))
     `(dired-header ((,class (:foreground ,comp :weight bold))))
     `(dired-ignored ((,class (:inherit shadow))))
     `(dired-mark ((,class (:foreground ,comp :weight bold))))
     `(dired-marked ((,class (:foreground ,violet :weight bold))))
     `(dired-perm-write ((,class (:foreground ,base :underline t))))
     `(dired-symlink ((,class (:foreground ,cyan :background ,bg1 :weight bold))))
     `(dired-warning ((,class (:foreground ,war))))

;;;;; ediff
     `(ediff-current-diff-A ((,class(:background ,org-h1-bg :foreground ,inf))))
     `(ediff-current-diff-Ancestor ((,class(:background ,org-h2-bg :foreground ,str))))
     `(ediff-current-diff-B ((,class(:background ,org-h4-bg :foreground ,yellow))))
     `(ediff-current-diff-C ((,class(:background ,org-h3-bg :foreground ,green))))
     `(ediff-even-diff-A ((,class(:background ,bg3))))
     `(ediff-even-diff-Ancestor ((,class(:background ,bg3))))
     `(ediff-even-diff-B ((,class(:background ,bg3))))
     `(ediff-even-diff-C ((,class(:background ,bg3))))
     `(ediff-fine-diff-A ((,class(:background nil :bold t :underline t))))
     `(ediff-fine-diff-Ancestor ((,class(:background nil :bold t :underline t))))
     `(ediff-fine-diff-B ((,class(:background nil :bold t :underline t))))
     `(ediff-fine-diff-C ((,class(:background nil :bold t :underline t))))
     `(ediff-odd-diff-A ((,class(:background ,bg4))))
     `(ediff-odd-diff-Ancestor ((,class(:background ,bg4))))
     `(ediff-odd-diff-B ((,class(:background ,bg4))))
     `(ediff-odd-diff-C ((,class(:background ,bg4))))

;;;;; ein
     `(ein:cell-input-area((,class (:background ,bg2))))
     `(ein:cell-input-prompt ((,class (:foreground ,(if (eq variant 'dark) suc green)))))
     `(ein:cell-output-prompt ((,class (:foreground ,err))))
     `(ein:notification-tab-normal ((,class (:foreground ,builtin))))
     `(ein:notification-tab-selected ((,class (:foreground ,(if (eq variant 'dark) suc green) :bold t))))

;;;;; eldoc
     `(eldoc-highlight-function-argument ((,class (:foreground ,(if (eq variant 'dark) suc red) :bold t))))

;;;;; enh-ruby
     `(enh-ruby-string-delimiter-face ((,class (:foreground ,str))))
     `(enh-ruby-op-face ((,class (:background ,bg1 :foreground ,base))))

;;;;; erc
     `(erc-input-face ((,class (:foreground ,func))))
     `(erc-my-nick-face ((,class (:foreground ,key1))))
     `(erc-nick-default-face ((,class (:foreground ,inf))))
     `(erc-nick-prefix-face ((,class (:foreground ,yellow))))
     `(erc-notice-face ((,class (:foreground ,str))))
     `(erc-prompt-face ((,class (:foreground ,(if (eq variant 'dark) suc green) :bold t))))
     `(erc-timestamp-face ((,class (:foreground ,builtin))))

;;;;; eshell
     `(eshell-ls-archive ((,class (:foreground ,red :weight bold))))
     `(eshell-ls-backup ((,class (:inherit font-lock-comment-face))))
     `(eshell-ls-clutter ((,class (:inherit font-lock-comment-face))))
     `(eshell-ls-directory ((,class (:foreground ,inf :weight bold))))
     `(eshell-ls-executable ((,class (:foreground ,suc :weight bold))))
     `(eshell-ls-missing ((,class (:inherit font-lock-warning-face))))
     `(eshell-ls-product ((,class (:inherit font-lock-doc-face))))
     `(eshell-ls-special ((,class (:foreground ,yellow :weight bold))))
     `(eshell-ls-symlink ((,class (:foreground ,cyan :weight bold))))
     `(eshell-ls-unreadable ((,class (:foreground ,base))))
     `(eshell-prompt ((,class (:foreground ,keyword :weight bold))))

;;;;; flycheck
     `(flycheck-error
       ((,(append '((supports :underline (:style line))) class)
         (:underline (:style line :color ,err)))
        (,class (:foreground ,base :background ,err :weight bold :underline t))))
     `(flycheck-error-list-checker-name ((,class (:foreground ,keyword))))
     `(flycheck-fringe-error ((,class (:foreground ,err :weight bold))))
     `(flycheck-fringe-info ((,class (:foreground ,inf :weight bold))))
     `(flycheck-fringe-warning ((,class (:foreground ,war :weight bold))))
     `(flycheck-info
       ((,(append '((supports :underline (:style line))) class)
         (:underline (:style line :color ,inf)))
        (,class (:foreground ,base :background ,inf :weight bold :underline t))))
     `(flycheck-warning
       ((,(append '((supports :underline (:style line))) class)
         (:underline (:style line :color ,war)))
        (,class (:foreground ,base :background ,war :weight bold :underline t))))

;;;;; git-gutter-fr
     `(git-gutter-fr:added ((,class (:foreground ,green :weight bold))))
     `(git-gutter-fr:deleted ((,class (:foreground ,war :weight bold))))
     `(git-gutter-fr:modified ((,class (:foreground ,inf :weight bold))))

;;;;; git-timemachine
     `(git-timemachine-minibuffer-detail-face ((,class (:foreground ,inf :bold t :background ,org-h1-bg))))

;;;;; gnus
     `(gnus-emphasis-highlight-words ((,class (:background ,(if (eq variant 'dark) err suc) :foreground ,(when (eq variant 'light) bg1)))))
     `(gnus-header-content ((,class (:foreground ,keyword))))
     `(gnus-header-from ((,class (:foreground ,var))))
     `(gnus-header-name ((,class (:foreground ,comp))))
     `(gnus-header-subject ((,class (:foreground ,func :bold t))))
     `(gnus-summary-cancelled ((,class (:background ,(if (eq variant 'dark) err suc) :foreground ,bg1))))

;;;;; guide-key
     `(guide-key/highlight-command-face ((,class (:foreground ,base))))
     `(guide-key/key-face ((,class (:foreground ,key1))))
     `(guide-key/prefix-command-face ((,class (:foreground ,key2 :weight bold))))

;;;;; helm
     `(helm-bookmark-directory ((,class (:inherit helm-ff-directory))))
     `(helm-bookmark-file ((,class (:foreground ,base))))
     `(helm-bookmark-gnus ((,class (:foreground ,comp))))
     `(helm-bookmark-info ((,class (:foreground ,comp))))
     `(helm-bookmark-man ((,class (:foreground ,comp))))
     `(helm-bookmark-w3m ((,class (:foreground ,comp))))
     `(helm-buffer-directory ((,class (:foreground ,base :background ,bg1))))
     `(helm-buffer-file ((,class (:foreground ,base :background ,bg1))))
     `(helm-buffer-not-saved ((,class (:foreground ,comp :background ,bg1))))
     `(helm-buffer-process ((,class (:foreground ,builtin :background ,bg1))))
     `(helm-buffer-saved-out ((,class (:foreground ,base :background ,bg1))))
     `(helm-buffer-size ((,class (:foreground ,base :background ,bg1))))
     `(helm-candidate-number ((,class (:background ,bg1 :foreground ,inf :bold t))))
     `(helm-ff-directory ((,class (:foreground ,key1 :background ,bg1 :weight bold))))
     `(helm-ff-dotted-directory ((,class (:foreground ,key1 :background ,bg1 :weight bold))))
     `(helm-ff-executable ((,class (:foreground ,suc :background ,bg1 :weight normal))))
     `(helm-ff-file ((,class (:foreground ,base :background ,bg1 :weight normal))))
     `(helm-ff-invalid-symlink ((,class (:foreground ,red :background ,bg1 :weight bold))))
     `(helm-ff-prefix ((,class (:foreground ,bg1 :background ,keyword :weight normal))))
     `(helm-ff-symlink ((,class (:foreground ,cyan :background ,bg1 :weight bold))))
     `(helm-grep-cmd-line ((,class (:foreground ,base :background ,bg1))))
     `(helm-grep-file ((,class (:foreground ,base :background ,bg1))))
     `(helm-grep-finish ((,class (:foreground ,base :background ,bg1))))
     `(helm-grep-lineno ((,class (:foreground ,base :background ,bg1))))
     `(helm-grep-match ((,class (:foreground nil :background nil :inherit helm-match))))
     `(helm-header ((,class (:foreground ,base :background ,bg1 :underline nil :box nil))))
     `(helm-header-line-left-margin ((,class (:foreground ,inf :background ,nil))))
     `(helm-match ((,class (:inherit match))))
     `(helm-match-item ((,class (:inherit match))))
     `(helm-moccur-buffer ((,class (:foreground ,func :background ,bg1))))
     `(helm-selection ((,class (:background ,highlight))))
     `(helm-selection-line ((,class (:background ,bg2))))
     `(helm-separator ((,class (:foreground ,comp :background ,bg1))))
     `(helm-source-header ((,class (:background ,comp :foreground ,bg1 :bold t))))
     `(helm-time-zone-current ((,class (:foreground ,builtin :background ,bg1))))
     `(helm-time-zone-home ((,class (:foreground ,comp :background ,bg1))))
     `(helm-visible-mark ((,class (:foreground ,inf :background ,bg3))))

;;;;; helm-swoop
     `(helm-swoop-target-line-block-face ((,class (:foreground ,base :background ,highlight))))
     `(helm-swoop-target-line-face ((,class (:foreground ,base :background ,highlight))))
     `(helm-swoop-target-word-face ((,class (:foreground ,bg1 :background ,suc))))

;;;;; highlight-indentation
     `(highlight-indentation-face ((,class (:background ,comment-bg))))

;;;;; ido
     `(ido-first-match ((,class (:foreground ,comp :bold t))))
     `(ido-only-match ((,class (:foreground ,(if (eq variant 'dark) suc red) :bold t))))
     `(ido-subdir ((,class (:foreground ,key1))))
     `(ido-vertical-match-face ((,class (:foreground ,comp :underline nil))))

;;;;; info
     `(info-header-xref ((,class (:foreground ,func :underline t))))
     `(info-menu ((,class (:foreground ,suc))))
     `(info-node ((,class (:foreground ,func :bold t))))
     `(info-quoted-name ((,class (:foreground ,builtin))))
     `(info-reference-item ((,class (:background nil :underline t :bold t))))
     `(info-string ((,class (:foreground ,str))))
     `(info-title-1 ((,class (:height 1.4 :bold t))))
     `(info-title-2 ((,class (:height 1.3 :bold t))))
     `(info-title-3 ((,class (:height 1.3))))
     `(info-title-4 ((,class (:height 1.2))))

;;;;; linum-mode
     `(linum ((,class (:foreground ,lnum :background ,bg2))))

;;;;; linum-relative
     `(linum-relative-current-face ((,class (:foreground ,comp))))

;;;;; magit
     `(magit-blame-culprit ((,class :background ,org-h4-bg :foreground ,yellow)))
     `(magit-blame-header  ((,class :background ,org-h4-bg :foreground ,green)))
     `(magit-blame-sha1    ((,class :background ,org-h4-bg :foreground ,func)))
     `(magit-blame-subject ((,class :background ,org-h4-bg :foreground ,yellow)))
     `(magit-blame-time    ((,class :background ,org-h4-bg :foreground ,green)))
     `(magit-blame-name    ((,class :background ,org-h4-bg :foreground ,yellow)))
     `(magit-blame-heading ((,class :background ,org-h4-bg :foreground ,green)))
     `(magit-blame-hash    ((,class :background ,org-h4-bg :foreground ,func)))
     `(magit-blame-summary ((,class :background ,org-h4-bg :foreground ,yellow)))
     `(magit-blame-date    ((,class :background ,org-h4-bg :foreground ,green)))
     `(magit-branch ((,class (:foreground ,const :weight bold))))
     `(magit-branch-current ((,class (:background ,org-h1-bg :foreground ,inf :weight bold :box t))))
     `(magit-branch-local ((,class (:background ,org-h1-bg :foreground ,inf :weight bold))))
     `(magit-branch-remote ((,class (:background ,org-h2-bg :foreground ,str :weight bold))))
     `(magit-diff-context-highlight ((,class (:background ,bg3 :foreground ,base))))
     `(magit-diff-file-header ((,class (:background nil :foreground ,str))))
     `(magit-diff-hunk-header ((,class (:background nil :foreground ,builtin))))
     `(magit-hash ((,class (:foreground ,var))))
     `(magit-hunk-heading           ((,class (:background ,bg3))))
     `(magit-hunk-heading-highlight ((,class (:background ,bg3))))
     `(magit-item-highlight ((,class :background ,bg2)))
     `(magit-log-author ((,class (:foreground ,func))))
     `(magit-log-head-label-head ((,class (:background ,yellow :foreground ,bg1 :bold t))))
     `(magit-log-head-label-local ((,class (:background ,inf :foreground ,bg1 :bold t))))
     `(magit-log-head-label-remote ((,class (:background ,suc :foreground ,bg1 :bold t))))
     `(magit-log-head-label-tags ((,class (:background ,violet :foreground ,bg1 :bold t))))
     `(magit-log-head-label-wip ((,class (:background ,cyan :foreground ,bg1 :bold t))))
     `(magit-log-sha1 ((,class (:foreground ,str))))
     `(magit-process-ng ((,class (:foreground ,war :weight bold))))
     `(magit-process-ok ((,class (:foreground ,func :weight bold))))
     `(magit-section-heading        ((,class (:foreground ,keyword :weight bold))))
     `(magit-section-highlight      ((,class (:background ,bg2))))
     `(magit-section-title ((,class (:background ,bg1 :foreground ,builtin :weight bold))))

;;;;; mode-line
     `(mode-line           ((,class (:foreground ,base :background ,active1 :box (:color ,m-line-brdr :line-width 1)))))
     `(mode-line-inactive  ((,class (:foreground ,base :background ,bg1     :box (:color ,m-line-brdr :line-width 1)))))
     `(mode-line-buffer-id ((,class (:bold t :foreground ,func))))

;;;;; neotree
     `(neo-dir-link-face ((,class (:foreground ,inf :weight bold))))
     `(neo-expand-btn-face ((,class (:foreground ,base))))
     `(neo-file-link-face ((,class (:foreground ,base))))
     `(neo-root-dir-face ((,class (:foreground ,func :weight bold))))

;;;;; org
     `(org-agenda-clocking ((,class (:background ,highlight :foreground ,comp))))
     `(org-agenda-date ((,class (:foreground ,var :height ,(if spacemacs-theme-org-height 1.1 1.0)))))
     `(org-agenda-date-today ((,class (:foreground ,keyword :slant italic :weight bold :height ,(if spacemacs-theme-org-height 1.3 1.0)))))
     `(org-agenda-date-weekend ((,class (:weight bold :foreground ,var))))
     `(org-agenda-done ((,class (:foreground ,(if (eq variant 'dark) suc green) :height ,(if spacemacs-theme-org-height 1.2 1.0)))))
     `(org-agenda-structure ((,class (:weight bold :foreground ,comp))))
     `(org-block ((,class (:background ,org-cb-bg :foreground ,org-cb))))
     `(org-block-begin-line ((,class (:background ,org-cb-ln-bg :foreground ,org-cb-ln))))
     `(org-block-end-line ((,class (:background ,org-cb-ln-bg :foreground ,org-cb-ln))))
     `(org-clock-overlay ((,class (:foreground ,comp))))
     `(org-code ((,class (:foreground ,cyan))))
     `(org-column ((,class (:background ,highlight))))
     `(org-column-title ((,class (:background ,highlight))))
     `(org-date ((,class (:underline t :foreground ,var) )))
     `(org-date-selected ((,class (:background ,func :foreground ,bg1) )))
     `(org-document-info-keyword ((,class (:foreground ,org-ml))))
     `(org-document-title ((,class (:foreground ,func :weight bold :height ,(if spacemacs-theme-org-height 1.4 1.0) :underline t))))
     `(org-done ((,class (:foreground ,(if (eq variant 'dark) suc green) :bold t :overline t :background ,org-h3-bg))))
     `(org-ellipsis ((,class (:foreground ,builtin))))
     `(org-footnote  ((,class (:underline t :foreground ,base))))
     `(org-hide ((,class (:foreground ,base))))
     `(org-kbd ((,class (:inherit region :foreground ,base :box (:line-width 1 :style released-button)))))
     `(org-level-1 ((,class (:bold t :foreground ,inf :height ,(if spacemacs-theme-org-height 1.3 1.0) :background ,(when spacemacs-theme-org-highlight org-h1-bg) :overline t))))
     `(org-level-2 ((,class (:bold t :foreground ,str :height ,(if spacemacs-theme-org-height 1.2 1.0) :background ,(when spacemacs-theme-org-highlight org-h2-bg)))))
     `(org-level-3 ((,class (:bold nil :foreground ,green :height ,(if spacemacs-theme-org-height 1.1 1.0) :background ,(when spacemacs-theme-org-highlight org-h3-bg)))))
     `(org-level-4 ((,class (:bold nil :foreground ,yellow :background ,(when spacemacs-theme-org-highlight org-h4-bg)))))
     `(org-level-5 ((,class (:bold nil :foreground ,inf))))
     `(org-level-6 ((,class (:bold nil :foreground ,str))))
     `(org-level-7 ((,class (:bold nil :foreground ,green))))
     `(org-level-8 ((,class (:bold nil :foreground ,yellow))))
     `(org-link ((,class (:underline t :foreground ,comment))))
     `(org-meta-line ((,class (:foreground ,org-ml))))
     `(org-mode-line-clock-overrun ((,class (:foreground ,err))))
     `(org-priority ((,class (:foreground ,war :bold t))))
     `(org-quote ((,class (:inherit org-block :slant italic))))
     `(org-scheduled ((,class (:foreground ,comp))))
     `(org-scheduled-today ((,class (:foreground ,func :height ,(if spacemacs-theme-org-height 1.2 1.0)))))
     `(org-sexp-date ((,class (:foreground ,base))))
     `(org-special-keyword ((,class (:foreground ,func))))
     `(org-table ((,class (:foreground ,yellow :background ,org-h4-bg))))
     `(org-todo ((,class (:foreground ,war :bold t :overline t :background ,org-h4-bg))))
     `(org-verbatim ((,class (:foreground ,inf))))
     `(org-verse ((,class (:inherit org-block :slant italic))))
     `(org-warning ((,class (:foreground ,err))))

;;;;; perspective
     `(persp-selected-face ((,class (:bold t :foreground ,func))))

;;;;; powerline
     `(powerline-active1 ((,class (:background ,active2 :foreground ,base))))
     `(powerline-active2 ((,class (:background ,active2 :foreground ,base))))
     `(powerline-inactive1 ((,class (:background ,bg2 :foreground ,base))))
     `(powerline-inactive2 ((,class (:background ,bg2 :foreground ,base))))

;;;;; rainbow-delimiters
     `(rainbow-delimiters-depth-1-face ((,class :foreground ,inf)))
     `(rainbow-delimiters-depth-2-face ((,class :foreground ,func)))
     `(rainbow-delimiters-depth-3-face ((,class :foreground ,str)))
     `(rainbow-delimiters-depth-4-face ((,class :foreground ,green)))
     `(rainbow-delimiters-depth-5-face ((,class :foreground ,yellow)))
     `(rainbow-delimiters-depth-6-face ((,class :foreground ,inf)))
     `(rainbow-delimiters-depth-7-face ((,class :foreground ,func)))
     `(rainbow-delimiters-depth-8-face ((,class :foreground ,str)))
     `(rainbow-delimiters-unmatched-face ((,class :foreground ,err :overline t)))
     `(rainbow-delimiters-mismatched-face ((,class :foreground ,err :overline t)))

;;;;; shm
     `(shm-current-face ((,class (:background ,green-bg))))
     `(shm-quarantine-face ((,class (:background ,red-bg))))

;;;;; smartparens
     `(sp-pair-overlay-face ((,class (:background ,highlight :foreground nil))))
     `(sp-show-pair-match-face ((,class (:foreground ,(if (eq variant 'dark) suc red) :weight bold :underline t))))

;;;;; term
     `(term ((,class (:foreground ,base :background ,bg1))))
     `(term-color-black ((,class (:foreground ,bg4))))
     `(term-color-blue ((,class (:foreground ,inf))))
     `(term-color-cyan ((,class (:foreground ,cyan))))
     `(term-color-green ((,class (:foreground ,green))))
     `(term-color-magenta ((,class (:foreground ,builtin))))
     `(term-color-red ((,class (:foreground ,red))))
     `(term-color-white ((,class (:foreground ,base))))
     `(term-color-yellow ((,class (:foreground ,yellow))))

;;;;; which-key
     `(which-key-command-description-face ((,class (:foreground ,base))))
     `(which-key-group-description-face ((,class (:foreground ,key2))))
     `(which-key-key-face ((,class (:foreground ,func :bold t))))
     `(which-key-separator-face ((,class (:background nil :foreground ,str))))
     `(which-key-special-key-face ((,class (:background ,func :foreground ,bg1))))

;;;;; which-function-mode
     `(which-func ((,class (:foreground ,func))))

;;;;; whitespace-mode
     `(whitespace-empty ((,class (:background nil :foreground ,yellow))))
     `(whitespace-indentation ((,class (:background nil :foreground ,war))))
     `(whitespace-line ((,class (:background nil :foreground ,comp))))
     `(whitespace-newline ((,class (:background nil :foreground ,comp))))
     `(whitespace-space ((,class (:background nil :foreground ,active2))))
     `(whitespace-space-after-tab ((,class (:background nil :foreground ,yellow))))
     `(whitespace-space-before-tab ((,class (:background nil :foreground ,yellow))))
     `(whitespace-tab ((,class (:background nil))))
     `(whitespace-trailing ((,class (:background ,err :foreground ,war))))

;;;;; other, need more work
     `(ac-completion-face ((,class (:underline t :foreground ,keyword))))
     `(ffap ((,class (:foreground ,base))))
     `(flx-highlight-face ((,class (:foreground ,comp :underline nil))))
     `(font-latex-bold-face ((,class (:foreground ,comp))))
     `(font-latex-italic-face ((,class (:foreground ,key2 :italic t))))
     `(font-latex-match-reference-keywords ((,class (:foreground ,const))))
     `(font-latex-match-variable-keywords ((,class (:foreground ,var))))
     `(font-latex-string-face ((,class (:foreground ,str))))
     `(icompletep-determined ((,class :foreground ,builtin)))
     `(js2-external-variable ((,class (:foreground ,comp  ))))
     `(js2-function-param ((,class (:foreground ,const))))
     `(js2-jsdoc-html-tag-delimiter ((,class (:foreground ,str))))
     `(js2-jsdoc-html-tag-name ((,class (:foreground ,key1))))
     `(js2-jsdoc-value ((,class (:foreground ,str))))
     `(js2-private-function-call ((,class (:foreground ,const))))
     `(js2-private-member ((,class (:foreground ,base))))
     `(js3-error-face ((,class (:underline ,war))))
     `(js3-external-variable-face ((,class (:foreground ,var))))
     `(js3-function-param-face ((,class (:foreground ,key2))))
     `(js3-instance-member-face ((,class (:foreground ,const))))
     `(js3-jsdoc-tag-face ((,class (:foreground ,keyword))))
     `(js3-warning-face ((,class (:underline ,keyword))))
     `(mu4e-cited-1-face ((,class (:foreground ,base))))
     `(mu4e-cited-7-face ((,class (:foreground ,base))))
     `(mu4e-header-marks-face ((,class (:foreground ,comp))))
     `(mu4e-view-url-number-face ((,class (:foreground ,comp))))
     `(slime-repl-inputed-output-face ((,class (:foreground ,comp))))
     `(trailing-whitespace ((,class :foreground nil :background ,err)))
     `(undo-tree-visualizer-current-face ((,class :foreground ,builtin)))
     `(undo-tree-visualizer-default-face ((,class :foreground ,base)))
     `(undo-tree-visualizer-register-face ((,class :foreground ,comp)))
     `(undo-tree-visualizer-unmodified-face ((,class :foreground ,var)))
     `(web-mode-builtin-face ((,class (:inherit ,font-lock-builtin-face))))
     `(web-mode-comment-face ((,class (:inherit ,font-lock-comment-face))))
     `(web-mode-constant-face ((,class (:inherit ,font-lock-constant-face))))
     `(web-mode-doctype-face ((,class (:inherit ,font-lock-comment-face))))
     `(web-mode-function-name-face ((,class (:inherit ,font-lock-function-name-face))))
     `(web-mode-html-attr-name-face ((,class (:foreground ,func))))
     `(web-mode-html-attr-value-face ((,class (:foreground ,keyword))))
     `(web-mode-html-tag-face ((,class (:foreground ,builtin))))
     `(web-mode-keyword-face ((,class (:foreground ,keyword))))
     `(web-mode-string-face ((,class (:foreground ,str))))
     `(web-mode-type-face ((,class (:inherit ,font-lock-type-face))))
     `(web-mode-warning-face ((,class (:inherit ,font-lock-warning-face)))))))


;;;###autoload
(when load-file-name
  (add-to-list 'custom-theme-load-path
               (file-name-as-directory (file-name-directory load-file-name))))

(provide 'spacemacs-common)

;; Local Variables:
;; no-byte-compile: t
;; End:

;;; spacemacs-common.el ends here
