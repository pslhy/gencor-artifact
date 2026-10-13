(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a mlthon function to check whether the length of the word is odd or not. *)
let rec word_len (s : string) : bool = 
    let count_chars chars idx = 
        if idx = String.length s then
            chars
        else
            count_chars (chars + 1) (idx + 1)
    in
    (count_chars 0 0 land 1) = 1

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:6:13: Unbound value "count_chars" *)
(*     Hint: If this is a recursive definition, *)
(*     you should add the "rec" keyword on line 2 *)
(*     Please regenerate the code, taking these errors into account. *)
let rec word_len (s : string) : bool = 
    let rec count_chars chars idx = 
        if idx = String.length s then
            chars
        else
            count_chars (chars + 1) (idx + 1)
    in
    (count_chars 0 0 land 1) = 1

