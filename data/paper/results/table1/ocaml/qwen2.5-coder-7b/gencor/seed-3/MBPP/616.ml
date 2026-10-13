
let rec tuple_modulo (test_tup1 :  int * int * int * int) (test_tup2 :  int * int * int * int) :  int * int * int * int = 
    let tup1 = Array.of_list (List.of_seq (Array.to_seq test_tup1)) in
    let tup2 = Array.of_list (List.of_seq (Array.to_seq test_tup2)) in
    let rec helper arr1 arr2 idx res =
        if idx = Array.length arr1 then
            res
        else
            helper arr1 arr2 (idx + 1) ((arr1.(idx) mod arr2.(idx)) :: res)
    in
    let result = helper tup1 tup2 0 [] in
    (List.nth result 3, List.nth result 2, List.nth result 1, List.hd result)

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function which takes two tuples of the same length and performs the element wise modulo. *)
