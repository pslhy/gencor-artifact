let rec sort_matrix (m : int list list) : int list list =
  match m with
  | [] -> []
  | _ ->
    let sum_rows = List.map m ~f:(fun row -> List.fold_left row ~init:0 ~f:( + )) in
    List.sort sum_rows ~compare:(fun x y -> compare x y);
    if List.is_sorted ~compare:(fun x y -> compare x y) sum_rows then m
    else sort_matrix sum_rows


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to sort a given matrix in ascending order according to the sum of its rows. *)
