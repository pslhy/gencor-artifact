
let rec find_combinations (test_list :  (int * int) list) :  (int * int) list = 
  let rec helper pairs sums = 
    match pairs with
    | [] -> []
    | (x, y) :: rest -> 
        let option1 = (x, y + List.fold_left (fun acc (a, b) -> acc + a) 0 sums)
        and option2 = (x, y + List.fold_left (fun acc (a, b) -> acc + b) 0 sums) 
        in option1 :: option2 :: helper rest (option1 :: option2 :: sums) 
  in 
  helper test_list []

let combinations = find_combinations [(1, 2); (3, 4); (5, 6)]

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the combinations of sums with tuples in the given tuple list. https://www.geeksforgeeks.org/mlthon-combinations-of-sum-with-tuples-in-tuple-list/ *)
