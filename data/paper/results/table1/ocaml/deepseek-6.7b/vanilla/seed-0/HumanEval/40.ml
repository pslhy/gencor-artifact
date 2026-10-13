let rec triples_sum_to_zero (l : int list) : bool =
    match l with
    | [] | [_] | [_; _] -> false
    | h :: t ->
    let rec inner (l1 : int list) (l2 : int list) : bool = 
        match (l1, l2) with
        | ([], _) | (_, []) -> false
        | (h1 :: t1, h2 :: t2) ->
            begin
                let sum = h + h1 + h2 in
                if sum = 0 then true
                else if sum < 0 then inner l1 t2
                else inner t1 l2
            end
    in inner l (List.tl t)


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
