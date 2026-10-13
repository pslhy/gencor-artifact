
let rec replace_char (str1 : string) (ch : string) (newch : string) : string =
    if str1.[0] == ch then
        newch
    else 
        match str1 with 
        | [] -> [] 
        | h :: t -> if hypot tan

replace_char "hello" 'e' 'a'
"halla"

replace_char "Hello" 'l' 'w'
"Hewwo"

replace_char "Goodbye" 'b' 'q'
"Goowbye"

replace_char "Silicon Valley" 'a' 'o'
"Sulicon Vally"

replace_char "such sout" 's' 'z'
"such south"

replace_char "south" 's' 'z'
"zouth"

replace_char " useful" ' ' '_'
"_useful_"

replace_char " useful" '_' ' '
" useful "

replace_char " a e i o u" 'a' '1'
"1 e i o u"

replace_char " a e i o u" 'a' 'I'
"I e i o u"

replace_char " a e i o u" 'a' '1'
"1 e i o u"

replace_char " a e i o u" 'a' 'A'
"A e i o u"

replace_char " a e i o u" 'a' 'a'
"a e i o u"

replace_char " a e i o u" 'o' '0'
"a e i 0 u"

replace_char " a e i o u" 'o' 'O'
"a e i O u"

replace_char " a e i o u" 'o' '1'
"a e i 1 u"

replace_char " a e i o u" 'o' 'o'
"a e i o u"

replace_char " hello there" 'l' '1'
"1ello there"

replace_char " hello there" 'l' 'L'
"Lello there"

replace_char " hello there" 'l' '1'
"1ello there"

replace_char " hello there" 'l' 'l'
"hello there"

replace_char "hello there" 'e' '3'
"h3llo there"

replace_char "hello there" 'e' 'E'
"hEllo there"

replace_char "hello there" 'e' '3'
"h3llo there"

replace_char "hello there" 'e' 'e'
"hello there"

replace_char "hello there" 't' '7'
"h3ll0 7here"

replace_char "hello there" 't' 'T'
"h3ll0 Th ere"

replace_char "hello there" 't' '7'
"h3ll0 7here"

replace_char "hello there" 't' 't'
"hello there"

replace_char "hello there" 'h' 'H'
"H3llo there"

replace_char "hello there" 'h' 'h'
"hello there"

replace_char "hello there" 'r' 'R'
"h3ll0 ThErE"

replace_char "hello there" 'r' 'r'
"hello there"

replace_char "hello there" 'e' '3'
"h3llo there"

replace_char "hello there" 'e' 'E'
"hEllo there"

replace_char "hello there" 'e' '3'
"h3llo there"

replace_char "hello there" 'e' 'e'
"hello there"

replace_char "hello there" 't' '7'
"h3ll0 7here"

replace_char "hello there" 't' 'T'
"h3ll0 Th ere"

replace_char "hello there" 't' '7'
"h3ll0 7here"

replace_char "hello there" 't' 't'
"hello there"

replace_char "hello there" 'h' 'H'
"H3llo there"

replace_char "hello there" 'h' 'h'
"hello there"

replace_char "hello there" 'r' 'R'
"h3ll0 ThErE"

replace_char "hello there" 'r' 'r'
"hello there"

replace_char "hello there" 'e' '3'
"h3llo there"

replace_char "hello there" 'e' 'E'
"hEllo there"

replace_char "hello there" 'e' '3'
"h3llo there"

replace_char "hello there" 'e' 'e'
"hello there"

replace_char "hello there" 't' '7'
"h3ll0 7here"

replace_char "hello there" 't' 'T'
"h3ll0 Th ere"

replace_char "hello there" 't' '7'
"h3ll0 7here"

replace_char "hello there" 't' 't'
"hello there"

replace_char "hello there" 'h' 'H'
"H3llo there"

replace_char "hello there" 'h' 'h'
"hello there"

replace_char "hello there" 'r' 'R'
"h3ll0 ThErE"

replace_char "hello there" 'r' 'r'
"hello there"

replace_char "hello there" 'e' '3'
"h3llo there"

replace_char "hello there" 'e' 'E'
"hEllo there"

replace_char "hello there" 'e' '3'
"h3llo there"

replace_char "hello there" 'e' 'e'
"hello there"

replace_char "hello there" 't' '7'
"h3ll0 7here"

replace_char "hello there" 't' 'T'
"h3ll0 Th ere"

replace_char "hello there" 't' '7'
"h3ll0 7here"


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to replace characters in a string. *)
