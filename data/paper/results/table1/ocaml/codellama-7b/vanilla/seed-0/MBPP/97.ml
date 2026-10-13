let rec frequency_lists (list1 : int list list) : (int * int) list =
  match list1 with
  | [] -> []
  | h :: t ->
    let count =
      List.fold_left (fun count n -> if h = n then count + 1 else count) 0 h
    in
    (h, count) :: frequency_lists t


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find frequency of each element in a flattened list of lists, returned in an association list. *)
