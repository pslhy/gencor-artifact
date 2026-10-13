let rec triples_sum_to_zero (l : int list) : bool =
  match l with
  | [] | [_] | [_ ; _] -> false
  | h :: t ->
    let rec find_triple (acc : int option) (acc_sum : int) (t : int list) : int option =
      match t with
      | [] -> None
      | h :: t ->
        if acc_sum = 0 && acc <> None then acc else
        if h = h then find_triple (Some (h :: acc)) (h + acc_sum) t else
        find_triple acc (h + acc_sum) t
    in
    match find_triple None 0 t with
    | Some _ -> true
    | None -> false


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     triples_sum_to_zero takes a list of integers as an input. *)
(*     it returns true if there are three distinct elements in the list that *)
(*     sum to zero, and false otherwise. *)
(*     >>> triples_sum_to_zero [1; 3; 5; 0] *)
(*     false *)
(*     >>> triples_sum_to_zero [1; 3; (-2); 1] *)
(*     true *)
(*     >>> triples_sum_to_zero [1; 2; 3; 7] *)
(*     false *)
(*     >>> triples_sum_to_zero [2; 4; (-5); 3; 9; 7] *)
(*     true *)
(*     >>> triples_sum_to_zero [1] *)
(*     false *)
