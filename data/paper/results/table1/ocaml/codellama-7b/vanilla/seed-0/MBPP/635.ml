let rec heap_sort (iterable : int list) : int list =
  match iterable with
  | [] -> []
  | h :: t ->
    let heap =
      List.fold_left (fun heap n -> if h <= n then n :: heap else h :: heap) [] t
    in
    h :: heap_sort (List.rev heap)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to sort the given list. *)
