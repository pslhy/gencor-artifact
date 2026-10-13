
let rec check_integer (text : string) : bool =
    let is_integer =
        match text with
        | "" -> false
        | "+" | "-" -> false
        | _ -> Int.of_float (float_of_string text) = 0
    in
    is_integer

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to check if a string represents an integer or not. *)
