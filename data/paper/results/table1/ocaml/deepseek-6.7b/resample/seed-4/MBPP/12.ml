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
  |[] -> []
  |[h] -> m
  |_ -> let sorted = List.sort (fun a b -> List.fold_left (+) 0 a - List.fold_left (+) 0 b) m in
          let middle = List.length sorted / 2 in
          let (left, right) = (List.take middle sorted, List.drop middle sorted) in
          (sort_matrix left) @ (sort_matrix right)

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:7:32: Unbound value "List.take" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec sort_matrix (m : int list list) : int list list =
  match m with
  |[] -> []
  |[h] -> m
  |_ -> let sorted = List.sort (fun a b -> List.fold_left (+) 0 a - List.fold_left (+) 0 b) m in
          let middle = List.length sorted / 2 in
          let (left, right) = (List.split_nth middle sorted, List.drop middle sorted) in
          (sort_matrix left) @ (sort_matrix right)

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:7:32: Unbound value "List.split_nth" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec sort_matrix (m : int list list) : int list list =
  match m with
  | [] -> []
  | [h] -> m
  | _ -> let sorted = List.sort (fun a b -> List.fold_left (+) 0 a - List.fold_left (+) 0 b) m in
          let rec split_list n = function
            | [] -> assert false
            | h::t -> if n = 0 then ([], h::t) else let (l, r) = split_list (n-1) t in (h::l, r)
          in
          let middle = List.length sorted / 2 in
          let (left, right) = split_list middle sorted in
          (sort_matrix left) @ (sort_matrix right)

