(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to find the combinations of sums with tuples in the given tuple list. https://www.geeksforgeeks.org/mlthon-combinations-of-sum-with-tuples-in-tuple-list/ *)
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

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:7:9: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
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

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:7:9: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec find_combinations (test_list :  (int * int) list) :  (int * int) list = 
  let rec helper pairs sums = 
    match pairs with
    | [] -> []
    | (x, y) :: rest -> 
        let option1 = (x, y + List.fold_left (+) 0 sums) :: helper rest (y :: sums)
        let option2 = (x + List.fold_left (+) 0 sums, y) :: helper rest ((y + List.fold_left (+) 0 sums) :: sums)
        option1 @ option2
  in
  helper test_list []

(* === Turn 4 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:7:9: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec find_combinations (test_list :  (int * int) list) :  (int * int) list = 
  let rec helper pairs sums = 
    match pairs with
    | [] -> []
    | (x, y) :: rest -> 
        let new_sums = y :: sums
        let option1 = (x, y + List.fold_left (+) 0 sums) :: helper rest new_sums
        let new_sums2 = (y + List.fold_left (+) 0 sums) :: new_sums
        let option2 = (x + List.fold_left (+) 0 sums, y) :: helper rest new_sums2
        option1 @ option2
  in
  helper test_list []

(* === Turn 5 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:7:9: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec find_combinations (test_list :  (int * int) list) :  (int * int) list = 
  let rec helper pairs sums = 
    match pairs with
    | [] -> []
    | (x, y) :: rest -> 
        let new_sums = y :: sums
        let option1 = (x, y + List.fold_left (+) 0 sums) :: helper rest new_sums
        let new_sums2 = (y + List.fold_left (+) 0 sums) :: new_sums
        let option2 = (x + List.fold_left (+) 0 sums, y) :: helper rest new_sums2
        option1 @ option2
  in
  helper test_list []

