(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to get all lucid numbers smaller than or equal to a given integer. *)
let rec get_ludic (n : int) : int list =
  match n with
  | 1 -> [1]
  | _ ->
    let lucas = get_lucas n in
    List.map (fun x -> x - 1) lucas

and get_lucas (n : int) : int list =
  match n with
  | 1 -> [1]
  | _ ->
    let lucas = get_lucas (n - 1) in
    let x = List.last lucas + List.hd lucas in
    x :: lucas

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:13:13: Unbound value "List.last" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec get_ludic (n : int) : int list =
  match n with
  | 1 -> [1]
  | _ ->
    let lucas = get_ludic (n-1) in
    let x = List.hd lucas + List.hd lucas in
    x :: lucas

