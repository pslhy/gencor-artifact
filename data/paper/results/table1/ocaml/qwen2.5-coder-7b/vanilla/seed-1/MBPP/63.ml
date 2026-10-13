let rec max_difference (test_list :  (int * int) list) : int = 
  let rec find_diff acc pairs = 
    match pairs with
    | [] -> acc
    | (a, b)::rest -> 
      let diff = abs (a - b) in
      let new_acc = if diff > acc then diff else acc in
      find_diff new_acc rest
  in
  find_diff 0 test_list

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the maximum difference between available pairs in the given tuple list. *)
