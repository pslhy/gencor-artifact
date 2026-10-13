(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function which takes two tuples of the same length and performs the element wise modulo. *)
let rec tuple_modulo (test_tup1 :  int * int * int * int) (test_tup2 :  int * int * int * int) :  int * int * int * int = 
    let tup1 = Array.of_list (List.of_tuple test_tup1) in
    let tup2 = Array.of_list (List.of_tuple test_tup2) in
    let rec helper i acc =
        if i = Array.length tup1 then
            Array.of_list (List.rev acc)
        else
            helper (i + 1) ((tup1.(i) mod tup2.(i)) :: acc)
    in
    let result_array = helper 0 [] in
    (List.hd result_array, List.nth result_array 1, List.nth result_array 2, List.nth result_array 3)

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:2:31: Unbound value "List.of_tuple" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec tuple_modulo (test_tup1 :  int * int * int * int) (test_tup2 :  int * int * int * int) :  int * int * int * int = 
    let tup1 = Array.of_list [fst test_tup1; snd test_tup1; fst (snd (fst test_tup1, snd test_tup1)); snd (snd (fst test_tup1, snd test_tup1))] in
    let tup2 = Array.of_list [fst test_tup2; snd test_tup2; fst (snd (fst test_tup2, snd test_tup2)); snd (snd (fst test_tup2, snd test_tup2))] in
    let rec helper i acc =
        if i = Array.length tup1 then
            Array.of_list (List.rev acc)
        else
            helper (i + 1) ((tup1.(i) mod tup2.(i)) :: acc)
    in
    let result_array = helper 0 [] in
    (List.hd result_array, List.nth result_array 1, List.nth result_array 2, List.nth result_array 3)

