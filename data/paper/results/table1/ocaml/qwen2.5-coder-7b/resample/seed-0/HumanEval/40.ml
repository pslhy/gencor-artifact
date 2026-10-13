(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
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
let rec triples_sum_to_zero (l : int list) : bool = 
  match l with
  | [] | [_] | [_; _] -> false
  | x::xs -> 
      let check_sum a b = 
        let sum = a + b + x in 
        if sum = 0 then true else check_sum a (List.find_opt (fun y -> y = sum - a - b) xs) 
      in 
      List.exists (fun a -> List.exists (fun b -> check_sum a b) xs) xs

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:7:35: Unbound value "check_sum" *)
(*     Hint: If this is a recursive definition, *)
(*     you should add the "rec" keyword on line 5 *)
(*     Please regenerate the code, taking these errors into account. *)
let rec triples_sum_to_zero (l : int list) : bool = 
  match l with
  | [] | [_] | [_; _] -> false
  | x::xs -> 
      let rec check_sum a = 
        let sum = a + x + x in 
        if sum = 0 then true else check_sum a (List.find_opt (fun y -> y = sum - a - x) xs) 
      in 
      List.exists (fun a -> List.exists (fun b -> check_sum a b) xs) xs

