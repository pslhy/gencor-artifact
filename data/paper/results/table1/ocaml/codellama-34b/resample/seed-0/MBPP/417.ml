(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to find common first element in given list of lists. *)
let rec group_tuples (input : string list list) : string list list =
  match input with
  | [] -> []
  | _ ->
    let rec find_match (l : string list) (n : int) : bool =
      match l with
      | [] -> false
      | str :: rest -> if List.mem (str, n + 1) input then find_match rest (n + 1) else true in
    if List.for_all (find_match (List.hd input)) input then [List.hd input] else group_tuples (List.tl input)

