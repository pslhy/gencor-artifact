(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function that matches a string that has an 'a' followed by anything, ending in 'b'. *)
let rec text_starta_endb (text : string) : bool = 
  let rec helper chars founda =
    match chars with
    | [] -> founda && foundb
    | 'a'::rest -> helper rest true
    | 'b'::rest -> helper rest true
    | _::rest -> helper rest founda
  in
  helper (String.to_list text) false

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:4:23: Unbound value "foundb" *)
(*     Hint: Did you mean "founda"? *)
(*     Please regenerate the code, taking these errors into account. *)
let rec text_starta_endb (text : string) : bool = 
  let rec helper chars founda foundb =
    match chars with
    | [] -> founda && foundb
    | 'a'::rest -> helper rest true foundb
    | 'b'::rest -> helper rest founda true
    | _::rest -> helper rest founda foundb
  in
  helper (String.to_list text) false false

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:9:11: Unbound value "String.to_list" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec text_starta_endb (text : string) : bool = 
  let rec helper chars founda foundb =
    match chars with
    | [] -> founda && foundb
    | 'a'::rest -> helper rest true foundb
    | 'b'::rest -> helper rest founda true
    | _::rest -> helper rest founda foundb
  in
  helper (List.of_seq (String.to_seq text)) false false

