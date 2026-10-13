(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to replace characters in a string. *)
let rec replace_char (str1 : string) (ch : string) (newch : string) : string = 
  let rec helper (s : string) (idx : int) : string = 
    if idx >= String.length s then s
    else if String.get s idx = String.get ch 0 then helper (String.set s idx (String.get newch 0)) (idx + 1)
    else helper s (idx + 1)
  in helper str1 0

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:4:61: Unbound value "String.set" *)
(*     Hint: Did you mean "get"? *)
(*     Please regenerate the code, taking these errors into account. *)
let rec replace_char (str1 : string) (ch : string) (newch : string) : string = 
  let rec helper (s : string) (idx : int) : string = 
    if idx >= String.length s then s
    else if s.[idx] = ch.[0] then helper (String.sub s 0 idx ^ newch ^ String.sub s (idx + 1) (String.length s - idx - 1)) (idx + 1)
    else helper s (idx + 1)
  in helper str1 0

