(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to sort a given matrix in ascending order according to the sum of its rows. *)
let rec sort_matrix (m : int list list) : int list list =
    match m with
    | [] -> []
    | _ ->
        let row = List.hd m in
        let rest = List.tl m in
        let sum = List.fold_left (+) 0 row in
        let sorted_rest = sort_matrix rest in
        List.sort compare (sum, row) :: sorted_rest

