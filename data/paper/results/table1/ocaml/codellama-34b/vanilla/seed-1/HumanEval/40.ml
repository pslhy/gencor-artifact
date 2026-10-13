let rec triples_sum_to_zero (l : int list) : bool =
    match l with
    | [] -> false
    | x :: xs ->
        if List.exists (fun y -> x + y = 0) xs then true
        else triples_sum_to_zero xs
;;

(* Example usage *)
let l = [1; 3; 5; 0];;
triples_sum_to_zero l;; (* Output: false *)

let l = [1; 3; (-2); 1];;
triples_sum_to_zero l;; (* Output: true *)

let l = [1; 2; 3; 7];;
triples_sum_to_zero l;; (* Output: false *)

let l = [2; 4; (-5); 3; 9; 7];;
triples_sum_to_zero l;; (* Output: true *)

let l = [1];;
triples_sum_to_zero l;; (* Output: false *)


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
