(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function that checks whether a string contains the 'a' character followed by two or three 'b' characters. *)
let rec text_match_two_three (text : string) : bool = 
    let rec helper (chars : char list) : bool = 
        match chars with
        | 'a' :: 'b' :: 'b' :: _ -> true
        | 'a' :: 'b' :: 'b' :: 'b' :: _ -> true
        | 'a' :: xs -> helper xs
        | _ -> false in
    helper (List.rev (String.to_list text))

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:8:23: Unbound value "String.to_list" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec text_match_two_three (text : string) : bool = 
    let rec helper (chars : char list) : bool = 
        match chars with
        | 'a' :: 'b' :: 'b' :: _ -> true
        | 'a' :: 'b' :: 'b' :: 'b' :: _ -> true
        | 'a' :: xs -> helper xs
        | _ -> false in
    helper (List.rev (List.map (fun ch -> ch) text))

