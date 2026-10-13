let rec sort_matrix (m : int list list) : int list list = 
    let rec sum_row (row : int list) : int = 
        match row with
        | [] -> 0
        | h::t -> h + sum_row t in
    let rows_with_sums = List.mapi (fun i row -> (i, sum_row row, row)) m in
    let sorted_rows = List.sort (fun (_, s1, _) (_, s2, _) -> compare s1 s2) rows_with_sums in
    List.map (fun (_, _, row) -> row) sorted_rows


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to sort a given matrix in ascending order according to the sum of its rows. *)
