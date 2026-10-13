let rec rescale_to_unit (numbers : float list) : float list =
  match numbers with
  | [] -> []
  | h::t -> 
      let min_num = List.fold_left min h t in
      let max_num = List.fold_left max h t in
      (h -. min_num) /. (max_num -. min_num) :: (rescale_to_unit t)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Given list of numbers (of at least two elements), apply a linear transform to that list, *)
(*     such that the smallest number will become 0 and the largest will become 1 *)
(*     >>> rescale_to_unit [1.0; 2.0; 3.0; 4.0; 5.0] *)
(*     [0.0; 0.25; 0.5; 0.75; 1.0] *)
