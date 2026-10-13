let rec find_combinations (test_list :  (int * int) list) :  (int * int) list = 
    let rec combinations acc lst = 
        match lst with
        | [] -> acc
        | (a,b)::tail -> combinations ((a,b)::acc) tail @
                         (List.map (fun (x,y) -> (x+a,y+b)) acc)
    in
    combinations [] test_list

let example = [(1,2); (3,4); (5,6)]
let result = find_combinations example


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the combinations of sums with tuples in the given tuple list. https://www.geeksforgeeks.org/mlthon-combinations-of-sum-with-tuples-in-tuple-list/ *)
