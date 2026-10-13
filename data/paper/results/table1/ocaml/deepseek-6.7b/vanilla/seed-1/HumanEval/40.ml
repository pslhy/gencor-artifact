let rec triples_sum_to_zero (l : int list) : bool =
  match l with
  | [] | [_] | [_; _] -> false
  | hd :: tl ->
      let rec pairs_sum_to_x (pairs : (int * int) list) (x : int) (l : int list) : bool =
        match l with
        | [] -> false
        | hd2 :: tl2 -> (hd + hd2 = x) || pairs_sum_to_x ((hd, hd2) :: pairs) x tl2
      in
      let rec check_pairs (pairs : (int * int) list) (l : int list) : bool =
        match l with
        | [] -> false
        | hd2 :: tl2 ->
            let rec check_pair (pair : int * int) (l : int list) : bool =
              match l with
              | [] -> false
              | hd3 :: tl3 -> (fst pair + snd pair + hd3 = 0) || check_pair pair tl3
            in
            (pairs_sum_to_x pairs hd2 (List.tl l)) || (check_pairs pairs tl2) || (check_pair (hd, hd2) (List.tl (List.tl l)))
      in
      check_pairs [] tl


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
