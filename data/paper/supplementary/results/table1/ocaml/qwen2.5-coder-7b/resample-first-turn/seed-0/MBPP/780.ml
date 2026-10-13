let rec find_combinations (test_list :  (int * int) list) :  (int * int) list = 
  let rec helper pairs sums = 
    match pairs with
    | [] -> []
    | (x, y) :: rest -> 
        let option1 = (x, y + List.sum_list sums) :: helper rest (y :: sums)
        let option2 = (x + List.sum_list sums, y) :: helper rest ((y + List.sum_list sums) :: sums)
        option1 @ option2
  in
  helper test_list []


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the combinations of sums with tuples in the given tuple list. https://www.geeksforgeeks.org/mlthon-combinations-of-sum-with-tuples-in-tuple-list/ *)
