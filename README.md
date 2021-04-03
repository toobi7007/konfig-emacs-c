# konfig-emacs-c
Auflisten von Packages die Sinnvoll sind für eine vollwertige C++ IDE in Emacs.


## Bisherige Packages:
 Name | Verwendungszweck
 --- | ---
 `melpa` | Erweitert den Package Manager
 `yasnippet` | Vorlagesystem, getippte Wörter oder default Sachen mit Tab erweitern
 `avy-flycheck` | Untersucht Quellcode nach Fehlern, mit Tastenkürzel `C-c a` springt es zu den jeweiligen Fehlern
 `code-compile` | Fügt dem Editor die Möglichkeit hinzu mit F9 zu kompilieren, nutzt wenn ein Makefile vorhanden ist make, ansonsten pcc bzw. g++   *(Das ist eine Funktion)*
 
 > Der Rest in der Konfigurationsdatei sind anpassung des Themes.

## Hinzufügen der Source Code Navigation mittels GNU GLOBAL
> Speziell handelt es sich um das Package ggtags, was man in melpa runterladen kann.

Bevor man es benutzen kann, muss man sich mit `sudo apt get install global` das dazugehörige Programm runterladen.

Tastenkürzel | Befehl | Beschreibung
--- | --- | ---
`C-M f` | `forward-sexp` | In einem Paar ({}, [], ...) springt der Cursor zum anderen Pärchen.
`C-M b` | `backward-sexp` | Macht dasselbe bloß Rückwärts
`C-M k` | `kill-sexp` | Löscht ein Paar mit dessen Inhalt
`C-M <spc>` | `mark-sexp` | Markiert ein Paat mit dessen Inhalt
`C-M a` | `beginning-of-defun` | Springt zum Anfang der Funktion
`C-M e` | `end-of-defun` | Springt zum Ende der Funktion

**! WICHTIG ! ** Folgende Tastenkürzel wurden editiert in .emacs

`M-.` | `ggtags-find-tag-dwim` | Sucht Tags im Kontext in allen Projekten -> Sehr nützlich
`M-,` | `
