(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a mlthon function to split a list at the nth eelment and add the first part to the end. *)
let rec split_Arr (l : int list) (n : int) : int list =
  match l with
  | [] -> []
  | h::t -> (List.rev (List.tl (List.rev (List.split_at (List.rev t) n))) ) @ [h]

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:4:43: Unbound value "List.split_at" *)
(*     Hint: Did you mean "split"? *)
(*     Please regenerate the code, taking these errors into account. *)
let rec split_Arr (l : int list) (n : int) : int list =
  match l with
  | [] -> []
  | h::t -> (List.rev (List.tl (List.rev (split_at (List.rev t) n)))) @ [h]

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:4:43: Unbound value "split_at" *)
(*     Hint: Did you mean "split_Arr"? *)
(*     Please regenerate the code, taking these errors into account. *)
let rec split_Arr (l : int list) (n : int) : int list =
  match l with
  | [] -> []
  | h::t -> (List.rev (List.tl (List.rev (split_Arr (List.rev t) n)))) @ [h]

