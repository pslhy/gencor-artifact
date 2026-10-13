let rec sort_matrix (m : int list list) : int list list =
  match m with
  | [] -> []
  | h::t -> (List.sort (fun x y -> List.fold_left (+) 0 x - List.fold_left (+) 0 y) h) :: (sort_matrix t)

let matrix = [[1; 4; 7]; [2; 3; 6]; [5; 8; 9]]

let sorted = sort_matrix matrix


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to sort a given matrix in ascending order according to the sum of its rows. *)
