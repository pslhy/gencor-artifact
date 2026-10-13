let rec get_coordinates (test_tup :  int * int) : int list list =
    match test_tup with
    | (x, y) ->
        let adjacent_tuples = [(x+1, y); (x-1, y); (x, y+1); (x, y-1)] in
        List.map get_coordinates adjacent_tuples


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to extract all the adjacent coordinates of the given coordinate tuple. *)
