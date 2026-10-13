
let rec text_starta_endb (text : string) : bool = 
  let rec helper chars founda =
    match chars with
    | [] -> founda && founda
    | 'a' :: xs -> helper xs true
    | 'b' :: xs -> founda
    | _ :: xs -> helper xs founda
  in
  helper (String.to_seq text) false

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function that matches a string that has an 'a' followed by anything, ending in 'b'. *)
