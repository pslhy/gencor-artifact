
let rec triples_sum_to_zero (l : int list) : bool = 
  match l with
  | [] | [_] | [_; _] -> false
  | x::xs -> 
      let check_sum a b = 
        let sum = a + b + x in 
        if sum = 0 then true else 
          match xs with 
          | [] -> false
          | c::cs -> (sum = c) || (a = c) || (b = c) || (a + b + c = 0) || (a + c + sum = 0) || (b + c + sum = 0) || (triples_sum_to_zero (a::b::c::cs)) in 
      let rec find_pair lst = 
        match lst with
        | [] -> false
        | y::ys -> (check_sum x y) || find_pair ys in 
      find_pair xs

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
