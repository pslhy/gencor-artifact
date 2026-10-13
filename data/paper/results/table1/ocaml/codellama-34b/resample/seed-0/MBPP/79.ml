(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a mlthon function to check whether the length of the word is odd or not. *)
let rec word_len (s : string) : bool =
    if s = "" then false
    else if s = "o" then true
    else if s = "i" then true
    else if s = "u" then true
    else if s = "e" then true
    else if s = "a" then true
    else word_len(s.[1..])

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:8:25: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec word_len (s : string) : bool =
    if s = "" then false
    else if s.[0] = 'o' || s.[0] = 'i' || s.[0] = 'u' || s.[0] = 'e' || s.[0] = 'a' then true
    else word_len (s.[1..])

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:4:26: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec word_len (s : string) : bool =
    if s = "" then false
    else if s.[0] = 'o' || s.[0] = 'i' || s.[0] = 'u' || s.[0] = 'e' || s.[0] = 'a' then true
    else word_len (s.[1..])

(* === Turn 4 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:4:26: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec word_len (s : string) : bool =
begin match s with
| "" -> false
| _ -> true
end

