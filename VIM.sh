Content-Type: text/x-zim-wiki
Wiki-Format: zim 0.4
Creation-Date: 2015-09-23T10:26:05+03:30

====== VIM ======
Created چهارشنبه 23 سپتامبر 2015

vimdiff file1 file2 [file3 [file4]]

comment several text lines with VI
ctrl+v → jjjj → I → ! → ESC

to uncomment
ctrl+v --> l --> d

== Searching and Replacement  comment in Vi ==
//:%s/\t/    /g// برای جایگزین کردن تب با ۴ تا فاصله
//:%s/WORD-To-Find-HERE/Replace-Word-Here/g//
or 
//:%s/FindMe/ReplaceME/g//

Task: Find and Replace with Confirmation
Find a word called 'UNIX' and replace with 'Linux', but ask for confirmation first, enter:
//:%s/UNIX/Linux/gc//

Task: Case Insensitive Find and Replace
Find 'UNIX' (match UNIX, unix, UnIx, Unix and so on) and replace with 'Linux':
//:%s/unix/Linux/gi//

Task: Case sensitive Find and Replace
Find each 'UNIX' and replace with 'bar':
//:%s/UNIX/bar/gI//

Same command with confirmation:
//:%s/UNIX/bar/gIc//

:s/UNIX/Linux/g اینجا فقط در خط جاری میگرده
:%s/UNIX/Linux/g اینجا همه خط ها را میگرده

Find 'UNIX' and replace with 'Linux' all lines between line 100 and line 250, enter:
//:100,200s/UNIX/Linux/g//
OR
//:100,200s/UNIX/Linux/gc//

== Copy and paste content from one file to another file in VI ==

If you are using VIM in Windows, you can get access to the clipboard (MS copy/paste) using:

//"*dd// -- cut a line (or 3dd to cut 3 lines)
//"*yy// -- copy a line (or 3yy to copy 3 lines)
"*p -- paste line(s) on line after the cursor
"*P -- paste line(s) on line before the cursor

**************************************	
open one file in Vi, yank text, then use
:e another_file
to open another file, and paste.


== Making a list ==
:put =range(11,15)

== add the following to  ~/.vimrc ==
[[:set]]  number
[[:set]] nowrap


== split screen in vi ==
[[:split]]
[[:vsplit]]

== How do I get VIM to remember the line I was on when I reopen a file? ==
Add the following lines to your ~/.vimrc or global /etc/vim/vimrc
//if has("autocmd")//
//  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif//
//endif//

====== VI sort by column ======
https://jordanelver.co.uk/blog/2014/03/12/sorting-columnds-of-text-in-vim-using-sort/
First I sorted the text into "proper" columns using the column utility.
:%!column -t
This sorted by the second column (-k2), treats the text as a number (n) and then sorts in reverse (r), 
:%!sort -k2nr




