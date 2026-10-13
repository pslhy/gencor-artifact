(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to remove all whitespaces from a string. *)
let rec remove_all_spaces (text : string) : string = 
  let rec helper chars = 
    match chars with 
    | [] -> []
    | ' ' :: rest -> helper rest
    | char :: rest -> char :: helper rest
  in 
  String.blit_to_string (helper (String.to_seq text)) 0 text 0 (String.length text)

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:8:3: Unbound value "String.blit_to_string" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec remove_all_spaces (text : string) : string = 
  let rec helper chars = 
    match chars with 
    | [] -> []
    | ' ' :: rest -> helper rest
    | char :: rest -> char :: helper rest
  in 
  String.map (fun x -> x) (String.filter (fun x -> x <> ' ') text)

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:8:28: Unbound value "String.filter" *)
(*     Hint: Did you mean "iter"? *)
(*     Please regenerate the code, taking these errors into account. *)
let rec remove_all_spaces (text : string) : string = 
  let rec helper chars = 
    match chars with 
    | [] -> []
    | ' ' :: rest -> helper rest
    | char :: rest -> char :: helper rest
  in 
  String.of_seq (String.to_seq text |> Seq.filter (fun x -> x <> ' '))

