(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to replace all spaces in the given string with '%20'. *)
let rec replace_spaces (string : string) : string = 
    let rec loop chars result = 
        match chars with
        | [] -> result
        | ' ' :: ctail -> loop ctail (result ^ "%20")
        | c :: ctail -> loop ctail (result ^ (Char.escaped c))
    in loop (String.to_list string) ""

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:7:14: Unbound value "String.to_list" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec replace_spaces (string : string) : string = 
    let rec loop chars result = 
        match chars with
        | [] -> result
        | ' ' :: ctail -> loop ctail (result ^ "%20")
        | c :: ctail -> loop ctail (result ^ (String.make 1 c))
    in loop (String.to_seq string) ""

