let rec sort_matrix (m : int list list) : int list list =
  let compare (r1, r2) = compare (List.fold_left (+) 0 r1, r2) in
  match m with
  | [] -> []
  | [r] -> [r]
  | _ ->
    let pivot = List.nth m (List.length m / 2) in
    List.sort compare (List.take (List.length m / 2) m) @ [pivot] @
      List.sort compare (List.drop (List.length m / 2 + 1) m)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to sort a given matrix in ascending order according to the sum of its rows. *)
