;;; spacemacs-theme.el --- Emacs 24 theme with a light background.

;; Copyright (C) 2014 , Nasser

;; Author: Nasser
;;
;; Version: 0.1
;; Package-Requires: ((emacs "24"))
;; Created with emacs-theme-generator, https://github.com/mswift42/theme-creator.


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

;;; Code:

(deftheme spacemacs-dark)
(let ((class '((class color) (min-colors 89)))
      (base "#b2b2b2")
      (bg1 (if (display-graphic-p)"#28262e" "#262626"))
      (bg2 (if (display-graphic-p)"#212026" "#1c1c1c"))
      (bg3 (if (display-graphic-p)"#100a14" "#121212"))
      (bg4 (if (display-graphic-p)"#0a0814" "#080808"))
      (key2 "#4f97d7")
      (key3 "#277bb8")
      (builtin "#268bd2")
      (keyword "#268bd2")
      (const  (if (display-graphic-p) "#990061" "#cc9243"))
      (comment (if (display-graphic-p)"#2aa198" "#2aa198"))
      (comment-bg (if (display-graphic-p) "#282a32" "#282a32"))
      (func   (if (display-graphic-p) "#cc43c1" "#d75fd7"))
      (str     "#2aa198")
      (type   (if (display-graphic-p) "#cc43c1" "#d75fd7"))
      (var     "#adaab3")
      (error   "#e0211d")
      (warning "#dc752f")
      (info    "#2f96dc")
      (success "#86dc2f")
      (greenish "#67b11d")
      (highlight (if (display-graphic-p) "#433f4d" "#444444")))

  (custom-theme-set-faces
   'spacemacs-dark
   `(default ((,class (:background ,bg1 :foreground ,base))))
   `(font-lock-builtin-face ((,class (:foreground ,builtin))))
   `(font-lock-comment-face ((,class (:foreground ,comment))))
   `(font-lock-negation-char-face ((,class (:foreground ,const))))
   `(font-lock-reference-face ((,class (:foreground ,const))))
   `(font-lock-constant-face ((,class (:foreground ,const))))
   `(font-lock-doc-face ((,class (:foreground ,comment))))
   `(font-lock-function-name-face ((,class (:foreground ,func :bold t))))
   `(font-lock-keyword-face ((,class (:bold ,class :foreground ,keyword))))
   `(font-lock-string-face ((,class (:foreground ,str))))
   `(font-lock-type-face ((,class (:foreground ,type :bold t))))
   `(font-lock-variable-name-face ((,class (:foreground ,var))))
   `(font-lock-warning-face ((,class (:foreground ,warning :background ,bg2))))
   `(region ((,class (:background ,highlight))))
   `(highlight ((,class (:foreground ,base :background ,bg3))))
   `(hl-line ((,class (:background ,bg2))))
   `(fringe ((,class (:background ,bg2 :foreground ,base))))
   `(cursor ((,class (:background ,bg3))))
   `(show-paren-match-face ((,class (:background ,warning))))
   `(isearch ((,class (:bold t :foreground ,func :background ,greenish))))

   `(mode-line
     ((,class (:foreground ,base
                           :background ,bg1
                           :box (:color ,highlight :line-width 1)
                           ))))
   `(mode-line-inactive
     ((,class (:foreground ,base
                           :background ,bg1
                           :box (:color ,bg1 :line-width 1)
                           ))))

   `(mode-line-buffer-id ((,class (:bold t :foreground ,func))))

   `(powerline-active1 ((,class (:background ,bg3 :foreground ,base))))
   `(powerline-active2 ((,class (:background ,bg3 :foreground ,base))))
   `(powerline-inactive1 ((,class (:background ,bg2 :foreground ,base))))
   `(powerline-inactive2 ((,class (:background ,bg2 :foreground ,base))))


;;;;; guide-key
   `(guide-key/highlight-command-face ((,class (:foreground ,base))))
   `(guide-key/key-face ((,class (:foreground ,func))))
   `(guide-key/prefix-command-face ((,class (:foreground ,func :weight bold))))

;;;;; flycheck
   `(flycheck-error
     ((,(append '((supports :underline (:style line))) class)
       (:underline (:style line :color ,error)))
      (,class (:foreground ,base :background ,error :weight bold :underline t))))

   `(flycheck-warning
     ((,(append '((supports :underline (:style line))) class)
       (:underline (:style line :color ,warning)))
      (,class (:foreground ,base :background ,warning :weight bold :underline t))))

   `(flycheck-info
     ((,(append '((supports :underline (:style line))) class)
       (:underline (:style line :color ,info)))
      (,class (:foreground ,base :background ,info :weight bold :underline t))))

   `(flycheck-fringe-error
     ((,class (:foreground ,error :weight bold))))

   `(flycheck-fringe-warning
     ((,class (:foreground ,warning :weight bold))))

   `(flycheck-fringe-info
     ((,class (:foreground ,info :weight bold))))

;;;;; smartparens
   `(sp-show-pair-match-face
     ((,class (:foreground ,warning :weight bold))))

;;;;; git-gutter-fr
   `(git-gutter-fr:added ((,class (:foreground ,greenish :weight bold))))
   `(git-gutter-fr:deleted ((,class (:foreground ,warning :weight bold))))
   `(git-gutter-fr:modified ((,class (:foreground ,info :weight bold))))

;;;;; helm
     ;; These probably needs tweaking.
     ;; `(helm-apt-deinstalled ((,class (:foreground ,base01))))
     ;; `(helm-apt-installed ((,class (:foreground ,green))))
     ;; `(helm-bookmark-directory ((,class (:inherit helm-ff-directory))))
     ;; `(helm-bookmark-file ((,class (:foreground ,base0))))
     ;; `(helm-bookmark-gnus ((,class (:foreground ,cyan))))
     ;; `(helm-bookmark-info ((,class (:foreground ,green))))
     ;; `(helm-bookmark-man ((,class (:foreground ,violet))))
     ;; `(helm-bookmark-w3m ((,class (:foreground ,yellow))))
     ;; `(helm-bookmarks-su ((,class (:foreground ,orange))))
     ;; `(helm-buffer-not-saved ((,class (:foreground ,orange))))
     ;; `(helm-buffer-saved-out ((,class (:foreground ,red :background ,base03
     ;;                                               :inverse-video t))))
     ;; `(helm-buffer-size ((,class (:foreground ,base01))))
     ;; `(helm-candidate-number ((,class (:background ,base02 :foreground ,base1
     ;;                                               :bold t))))
     ;; `(helm-ff-directory ((,class (:background ,base03  :foreground ,blue))))
     ;; `(helm-ff-executable ((,class (:foreground ,green))))
     ;; `(helm-ff-file ((,class (:background ,base03 :foreground ,base0))))
     ;; `(helm-ff-invalid-symlink ((,class (:background ,base03 :foreground ,orange
     ;;                                                 :slant italic))))
     ;; `(helm-ff-prefix ((,class (:background ,yellow :foreground ,base03))))
     ;; `(helm-ff-symlink ((,class (:foreground ,cyan))))
     ;; `(helm-grep-file ((,class (:foreground ,cyan :underline t))))
     ;; `(helm-grep-finish ((,class (:foreground ,green))))
     ;; `(helm-grep-lineno ((,class (:foreground ,orange))))
     ;; `(helm-grep-match ((,class (:inherit match))))
     ;; `(helm-grep-running ((,class (:foreground ,red))))
     ;; `(helm-header ((,class (:inherit header-line))))
     ;; `(helm-lisp-completion-info ((,class (:foreground ,base0))))
     ;; `(helm-lisp-show-completion ((,class (:foreground ,yellow  :background ,base02
     ;;                                                   :bold t))))
     ;; `(helm-M-x-key ((,class (:foreground ,orange :underline t))))
     ;; `(helm-moccur-buffer ((,class (:foreground ,cyan :underline t))))
     ;; `(helm-match ((,class (:inherit match))))
     `(helm-selection ((,class (:background ,highlight :weight bold))))
     ;; `(helm-selection-line ((,class (:background ,base02 :foreground ,base1
     ;;                                             :underline nil))))
     ;; `(helm-separator ((,class (:foreground ,red))))
     `(helm-source-header ((,class (:background ,info :foreground ,bg1 :bold t))))
     ;; `(helm-time-zone-current ((,class (:foreground ,green))))
     ;; `(helm-time-zone-home ((,class (:foreground ,red))))
     ;; `(helm-visible-mark ((,class (:background ,base03 :foreground ,magenta :bold t))))

   `(vertical-border ((,class (:foreground ,bg4))))
   `(minibuffer-prompt ((,class (:bold t :foreground ,keyword))))
   `(default-italic ((,class (:italic t))))
   `(link ((,class (:foreground ,const :underline t))))
   `(org-code ((,class (:foreground ,base))))
   `(org-hide ((,class (:foreground ,base))))
   `(org-level-1 ((,class (:bold t :foreground ,base :height 1.1))))
   `(org-level-2 ((,class (:bold nil :foreground ,base))))
   `(org-level-3 ((,class (:bold t :foreground ,base))))
   `(org-level-4 ((,class (:bold nil :foreground ,bg4))))
   `(org-date ((,class (:underline t :foreground ,var) )))
   `(org-footnote  ((,class (:underline t :foreground ,base))))
   `(org-link ((,class (:underline t :foreground ,type ))))
   `(org-special-keyword ((,class (:foreground ,func))))
   `(org-block ((,class (:foreground ,base))))
   `(org-quote ((,class (:inherit org-block :slant italic))))
   `(org-verse ((,class (:inherit org-block :slant italic))))
   `(org-todo ((,class (:box (:line-width 1 :color ,base) :foreground ,keyword :bold t))))
   `(org-done ((,class (:box (:line-width 1 :color ,bg3) :bold t :foreground ,bg4))))
   `(org-warning ((,class (:underline t :foreground ,warning))))
   `(org-agenda-structure ((,class (:weight bold :foreground ,base :box (:color ,base) :background ,bg3))))
   `(org-agenda-date ((,class (:foreground ,var :height 1.1 ))))
   `(org-agenda-date-weekend ((,class (:weight normal :foreground ,base))))
   `(org-agenda-date-today ((,class (:weight bold :foreground ,keyword :height 1.4))))
   `(org-agenda-done ((,class (:foreground ,bg4))))
   `(org-scheduled ((,class (:foreground ,type))))
   `(org-scheduled-today ((,class (:foreground ,func :weight bold :height 1.2))))
   `(org-ellipsis ((,class (:foreground ,builtin))))
   `(org-verbatim ((,class (:foreground ,base))))
   `(org-document-info-keyword ((,class (:foreground ,func))))
   `(font-latex-bold-face ((,class (:foreground ,type))))
   `(font-latex-italic-face ((,class (:foreground ,key3 :italic t))))
   `(font-latex-string-face ((,class (:foreground ,str))))
   `(font-latex-match-reference-keywords ((,class (:foreground ,const))))
   `(font-latex-match-variable-keywords ((,class (:foreground ,var))))
   `(ido-only-match ((,class (:foreground ,warning))))
   `(org-sexp-date ((,class (:foreground ,base))))
   `(ido-first-match ((,class (:foreground ,keyword :bold t))))
   `(gnus-header-content ((,class (:foreground ,keyword))))
   `(gnus-header-from ((,class (:foreground ,var))))
   `(gnus-header-name ((,class (:foreground ,type))))
   `(gnus-header-subject ((,class (:foreground ,func :bold t))))
   `(mu4e-view-url-number-face ((,class (:foreground ,type))))
   `(mu4e-cited-1-face ((,class (:foreground ,base))))
   `(mu4e-cited-7-face ((,class (:foreground ,base))))
   `(mu4e-header-marks-face ((,class (:foreground ,type))))
   `(ffap ((,class (:foreground ,base))))
   `(js2-private-function-call ((,class (:foreground ,const))))
   `(js2-jsdoc-html-tag-delimiter ((,class (:foreground ,str))))
   `(js2-jsdoc-html-tag-name ((,class (:foreground ,key2))))
   `(js2-external-variable ((,class (:foreground ,type  ))))
   `(js2-function-param ((,class (:foreground ,const))))
   `(js2-jsdoc-value ((,class (:foreground ,str))))
   `(js2-private-member ((,class (:foreground ,base))))
   `(js3-warning-face ((,class (:underline ,keyword))))
   `(js3-error-face ((,class (:underline ,warning))))
   `(js3-external-variable-face ((,class (:foreground ,var))))
   `(js3-function-param-face ((,class (:foreground ,key3))))
   `(js3-jsdoc-tag-face ((,class (:foreground ,keyword))))
   `(js3-instance-member-face ((,class (:foreground ,const))))
   `(warning ((,class (:foreground ,warning))))
   `(ac-completion-face ((,class (:underline t :foreground ,keyword))))
   `(info-quoted-name ((,class (:foreground ,builtin))))
   `(info-string ((,class (:foreground ,str))))
   `(icompletep-determined ((,class :foreground ,builtin)))
   `(undo-tree-visualizer-current-face ((,class :foreground ,builtin)))
   `(undo-tree-visualizer-default-face ((,class :foreground ,base)))
   `(undo-tree-visualizer-unmodified-face ((,class :foreground ,var)))
   `(undo-tree-visualizer-register-face ((,class :foreground ,type)))
   `(slime-repl-inputed-output-face ((,class (:foreground ,type))))
   `(trailing-whitespace ((,class :foreground nil :background ,warning)))
   `(rainbow-delimiters-depth-1-face ((,class :foreground ,base)))
   `(rainbow-delimiters-depth-2-face ((,class :foreground ,type)))
   `(rainbow-delimiters-depth-3-face ((,class :foreground ,var)))
   `(rainbow-delimiters-depth-4-face ((,class :foreground ,const)))
   `(rainbow-delimiters-depth-5-face ((,class :foreground ,keyword)))
   `(rainbow-delimiters-depth-6-face ((,class :foreground ,base)))
   `(rainbow-delimiters-depth-7-face ((,class :foreground ,type)))
   `(rainbow-delimiters-depth-8-face ((,class :foreground ,var)))
   `(magit-item-highlight ((,class :background ,bg3)))
   `(magit-section-heading        ((,class (:foreground ,keyword :weight bold))))
   `(magit-hunk-heading           ((,class (:background ,bg3))))
   `(magit-section-highlight      ((,class (:background ,bg2))))
   `(magit-hunk-heading-highlight ((,class (:background ,bg3))))
   `(magit-diff-context-highlight ((,class (:background ,bg3 :foreground ,base))))
   `(magit-diffstat-added   ((,class (:foreground ,type))))
   `(magit-diffstat-removed ((,class (:foreground ,var))))
   `(magit-process-ok ((,class (:foreground ,func :weight bold))))
   `(magit-process-ng ((,class (:foreground ,warning :weight bold))))
   `(magit-branch ((,class (:foreground ,const :weight bold))))
   `(magit-log-author ((,class (:foreground ,base))))
   `(magit-hash ((,class (:foreground ,base))))
   `(magit-diff-file-header ((,class (:foreground ,base :background ,bg3))))
   `(lazy-highlight ((,class (:foreground ,base :background ,bg3))))
   `(term ((,class (:foreground ,base :background ,bg1))))
   `(term-color-black ((,class (:foreground ,bg3 :background ,bg3))))
   `(term-color-blue ((,class (:foreground ,func :background ,func))))
   `(term-color-red ((,class (:foreground ,keyword :background ,bg3))))
   `(term-color-green ((,class (:foreground ,type :background ,bg3))))
   `(term-color-yellow ((,class (:foreground ,var :background ,var))))
   `(term-color-magenta ((,class (:foreground ,builtin :background ,builtin))))
   `(term-color-cyan ((,class (:foreground ,str :background ,str))))
   `(term-color-white ((,class (:foreground ,base :background ,base))))
   `(rainbow-delimiters-unmatched-face ((,class :foreground ,warning)))
   `(helm-header ((,class (:foreground ,base :background ,bg1 :underline nil :box nil))))
   `(helm-source-header ((,class (:foreground ,keyword :background ,bg1 :underline nil :weight bold))))
   `(helm-selection ((,class (:background ,bg2 :underline nil))))
   `(helm-selection-line ((,class (:background ,bg2))))
   `(helm-visible-mark ((,class (:foreground ,bg1 :background ,bg3))))
   `(helm-candidate-number ((,class (:foreground ,bg1 :background ,base))))
   `(helm-separator ((,class (:foreground ,type :background ,bg1))))
   `(helm-time-zone-current ((,class (:foreground ,builtin :background ,bg1))))
   `(helm-time-zone-home ((,class (:foreground ,type :background ,bg1))))
   `(helm-buffer-not-saved ((,class (:foreground ,type :background ,bg1))))
   `(helm-buffer-process ((,class (:foreground ,builtin :background ,bg1))))
   `(helm-buffer-saved-out ((,class (:foreground ,base :background ,bg1))))
   `(helm-buffer-size ((,class (:foreground ,base :background ,bg1))))
   `(helm-ff-directory ((,class (:foreground ,func :background ,bg1 :weight bold))))
   `(helm-ff-file ((,class (:foreground ,base :background ,bg1 :weight normal))))
   `(helm-ff-executable ((,class (:foreground ,key2 :background ,bg1 :weight normal))))
   `(helm-ff-invalid-symlink ((,class (:foreground ,key3 :background ,bg1 :weight bold))))
   `(helm-ff-symlink ((,class (:foreground ,keyword :background ,bg1 :weight bold))))
   `(helm-ff-prefix ((,class (:foreground ,bg1 :background ,keyword :weight normal))))
   `(helm-grep-cmd-line ((,class (:foreground ,base :background ,bg1))))
   `(helm-grep-file ((,class (:foreground ,base :background ,bg1))))
   `(helm-grep-finish ((,class (:foreground ,base :background ,bg1))))
   `(helm-grep-lineno ((,class (:foreground ,base :background ,bg1))))
   `(helm-grep-match ((,class (:foreground nil :background nil :inherit helm-match))))
   `(helm-grep-running ((,class (:foreground ,func :background ,bg1))))
   `(helm-moccur-buffer ((,class (:foreground ,func :background ,bg1))))
   `(helm-source-go-package-godoc-description ((,class (:foreground ,str))))
   `(helm-bookmark-w3m ((,class (:foreground ,type))))
   `(company-echo-common ((,class (:foreground ,bg1 :background ,base))))
   `(company-preview ((,class (:background ,bg1 :foreground ,key2))))
   `(company-preview-common ((,class (:foreground ,bg2 :foreground ,base))))
   `(company-preview-search ((,class (:foreground ,type :background ,bg1))))
   `(company-scrollbar-bg ((,class (:background ,bg3))))
   `(company-scrollbar-fg ((,class (:foreground ,keyword))))
   `(company-tooltip ((,class (:foreground ,base :background ,bg1 :bold t))))
   `(company-tooltop-annotation ((,class (:foreground ,const))))
   `(company-tooltip-common ((,class ( :foreground ,base))))
   `(company-tooltip-common-selection ((,class (:foreground ,str))))
   `(company-tooltip-mouse ((,class (:inherit highlight))))
   `(company-tooltip-selection ((,class (:background ,bg3 :foreground ,base))))
   `(company-template-field ((,class (:inherit region))))
   `(web-mode-builtin-face ((,class (:inherit ,font-lock-builtin-face))))
   `(web-mode-comment-face ((,class (:inherit ,font-lock-comment-face))))
   `(web-mode-constant-face ((,class (:inherit ,font-lock-constant-face))))
   `(web-mode-keyword-face ((,class (:foreground ,keyword))))
   `(web-mode-doctype-face ((,class (:inherit ,font-lock-comment-face))))
   `(web-mode-function-name-face ((,class (:inherit ,font-lock-function-name-face))))
   `(web-mode-string-face ((,class (:foreground ,str))))
   `(web-mode-type-face ((,class (:inherit ,font-lock-type-face))))
   `(web-mode-html-attr-name-face ((,class (:foreground ,func))))
   `(web-mode-html-attr-value-face ((,class (:foreground ,keyword))))
   `(web-mode-warning-face ((,class (:inherit ,font-lock-warning-face))))
   `(web-mode-html-tag-face ((,class (:foreground ,builtin))))))


;;;###autoload
(when load-file-name
  (add-to-list 'custom-theme-load-path
               (file-name-as-directory (file-name-directory load-file-name))))

(provide-theme 'spacemacs-dark)

;; Local Variables:
;; no-byte-compile: t
;; End:

;;; spacemacs-theme.el ends here
