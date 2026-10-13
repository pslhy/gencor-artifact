let rec triples_sum_to_zero (l : int list) : bool =
    match l with
    | h :: t ->
        let rec find_ triple l sum =
            match l with
            | [] -> None
            | h :: t ->
                if sum = 0 then
                    Some (triple, l)
                else if sum - h >= 0 then
                    find_ (triple @ [h]) t (sum - h)
                else
                    find_ triple t sum
        in
        match find_ [] t (h + 3) with
        | Some (triple, _) -> true (* we found a triple that sums to zero, return true *)
        | None -> triples_sum_to_zero t (* recurse with the tail of the list *)
    | [] -> false (* the list is empty, return false *)
;;


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
