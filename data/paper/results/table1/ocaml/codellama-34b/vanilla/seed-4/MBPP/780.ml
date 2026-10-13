let rec find_combinations (test_list :  (int * int) list) :  (int * int) list = 
    (* base case: if the list is empty, there are no combinations *)
    if test_list = [] then [] else

    (* find all combinations using the first element of the list *)
    let rec find_combinations_with_first (test_list : (int * int) list) :  (int * int) list =
        (* base case: if the list is empty, there are no combinations *)
        if test_list = [] then [] else

        (* find all combinations with the first element and the rest of the list *)
        let first, rest = test_list in
        let combinations_with_rest = find_combinations_with_first rest in
        List.map (fun (sum, count) -> (first + sum, count)) combinations_with_rest in
   
    (* find all combinations with the first element of the list *)
    let combinations_with_first = find_combinations_with_first test_list in

    (* find all combinations without the first element of the list *)
    let combinations_without_first = find_combinations(List.tl test_list) in

    (* combine the two lists of combinations *)
    combinations_with_first @ combinations_without_first
  
let test_list = [(1, 2); (2, 3); (3, 4); (4, 5)]

let result = find_combinations test_list

let expected = [(1, 2); (2, 3); (3, 4); (4, 5); (1, 3); (2, 4); (3, 5); (1, 4); (2, 5)]

assert(result = expected)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the combinations of sums with tuples in the given tuple list. https://www.geeksforgeeks.org/mlthon-combinations-of-sum-with-tuples-in-tuple-list/ *)
