
let rec word_len (s : string) : bool =
    if s = "" then false
    else if s = "o" then true
    else if s = "i" then true
    else if s = "u" then true
    else if s = "e" then true
    else if s = "a" then true
    else word_len(s.[1..(String.length s)])

let is_palindrome (s : string) : bool =
    if s = "" then true
    else if s = " " then true
    else if s = "" then true
    else if s = "  " then true
    else if s = "   " then true
    else if s = "    " then true
    else if s = "     " then true
    else if s = "      " then true
    else if s = "       " then true
    else if s = "        " then true
    else if s = "         " then true
    else word_len(s.[0..((String.length s) - 1)])

let rec is_palindrome_helper (s : string) : bool =
    let len = String.length s in
    if len < 2 then true
    else if len = 2 then s.[0] = s.[1]
    else s.[0] = s.[len - 1] && is_palindrome_helper(s.[1..(len - 2)])

let is_palindrome (s : string) : bool =
    if s = "" then true
    else if s = " " then true
    else if s = "" then true
    else if s = "  " then true
    else if s = "   " then true
    else if s = "    " then true
    else if s = "     " then true
    else if s = "      " then true
    else if s = "       " then true
    else if s = "        " then true
    else if s = "         " then true
    else is_palindrome_helper(s)

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to check whether the length of the word is odd or not. *)
