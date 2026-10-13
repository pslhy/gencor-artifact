let rec triples_sum_to_zero (l : int list) : bool = 
  match l with
  | [] | [_] | [_; _] -> false
  | x :: xs -> 
      let rec check_rest (rest : int list) : bool =
        match rest with
        | [] | [_] -> false
        | y :: ys -> 
            let rec find_z (rest : int list) (acc : int) : bool =
              match rest with
              | [] -> false
              | z :: zs -> if acc + y + z = 0 then true else find_z zs (acc + y)
            in
            if find_z ys (x + y) then true else check_rest ys
      in
      check_rest xs


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
