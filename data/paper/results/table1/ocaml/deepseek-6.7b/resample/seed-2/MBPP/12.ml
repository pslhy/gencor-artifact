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
  | _ -> let row_sums = List.map (fun row -> List.fold_left (+) 0 row) m in
         let min_index = List.findi (fun _ i -> i = List.min row_sums) row_sums in
         let min_row = List.nth m min_index in
         min_row :: sort_matrix (List.remove_at min_index m)

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:5:26: Unbound value "List.findi" *)
(*     Hint: Did you mean "find"? *)
(*     Please regenerate the code, taking these errors into account. *)
let rec sort_matrix (m : int list list) : int list list =
  match m with
  | [] -> []
  | _ -> let row_sums = List.map (fun row -> List.fold_left (+) 0 row) m in
         let min_index = List.find (fun i -> i = List.min row_sums) row_sums in
         let min_row = List.nth m min_index in
         min_row :: sort_matrix (List.remove_at min_index m)

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:5:50: Unbound value "List.min" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec sort_matrix (m : int list list) : int list list =
  match m with
  | [] -> []
  | _ -> let row_sums = List.map (fun row -> List.fold_left (+) 0 row) m in
         let min_index = List.findi (fun i _ -> i = List.fold_left min max_int row_sums) row_sums in
         let min_row = List.nth m min_index in
         min_row :: sort_matrix (List.remove_at min_index m)

(* === Turn 4 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:5:26: Unbound value "List.findi" *)
(*     Hint: Did you mean "find"? *)
(*     Please regenerate the code, taking these errors into account. *)
let rec sort_matrix (m : int list list) : int list list =
  match m with
  | [] -> []
  | _ -> let row_sums = List.map (List.fold_left (+) 0) m in
         let (min_sum, min_index) = List.fold_left (fun (min_sum, min_index) (i, sum) -> if i = 0 || sum < min_sum then (sum, i) else (min_sum, min_index)) (0, 0) (List.mapi (fun i sum -> (i, sum)) row_sums) in
         let min_row = List.nth m min_index in
         min_row :: sort_matrix (List.remove_at min_index m)

(* === Turn 5 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:7:34: Unbound value "List.remove_at" *)
(*     Hint: Did you mean "remove_assq"? *)
(*     Please regenerate the code, taking these errors into account. *)
let rec sort_matrix (m : int list list) : int list list =
  match m with
  | [] -> []
  | _ -> let row_sums = List.map (List.fold_left (+) 0) m in
         let (min_sum, min_index) = List.fold_left (fun (min_sum, min_index) (i, sum) -> if i = 0 || sum < min_sum then (sum, i) else (min_sum, min_index)) (0, 0) (List.mapi (fun i sum -> (i, sum)) row_sums) in
         let min_row = List.nth m min_index in
         let rest_matrix = List.remove_assq min_index m in
         min_row :: sort_matrix rest_matrix

