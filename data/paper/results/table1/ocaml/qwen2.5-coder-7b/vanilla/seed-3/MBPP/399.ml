let rec bitwise_xor (test_tup1 :  int * int * int * int) (test_tup2 :  int * int * int * int) :  int * int * int * int = 
    let tup1_to_list = Array.to_list (Array.of_list [fst test_tup1; snd test_tup1; trd test_tup1; frth test_tup1]) in
    let tup2_to_list = Array.to_list (Array.of_list [fst test_tup2; snd test_tup2; trd test_tup2; frth test_tup2]) in
    let rec xor_lists (list1 : int list) (list2 : int list) : int list =
        match list1, list2 with
        | [], [] -> []
        | h1::t1, h2::t2 -> (h1 land h2 lor (h1 land (lnot h2)) lor ((lnot h1) land h2)) :: xor_lists t1 t2
        | _ -> [] in
    let result_list = xor_lists tup1_to_list tup2_to_list in
    (List.nth result_list 0, List.nth result_list 1, List.nth result_list 2, List.nth result_list 3)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to perform the mathematical bitwise xor operation across the given tuples. *)
