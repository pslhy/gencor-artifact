let rec sort_matrix (m : int list list) : int list list =
    let rec aux (acc : int list) (m : int list list) : int list list =
        match m with
        | [] -> acc
        | x :: xs ->
            let (row_sum, _) = List.fold_left (fun (acc, i) x -> (acc + x, i + 1)) (0, 0) x in
            let sorted_row = List.sort (fun a b -> a - b) x in
            aux (sorted_row :: acc) xs
    in
    aux [] m


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to sort a given matrix in ascending order according to the sum of its rows. *)
