
let rec magic_square_test (my_matrix : int list list) : bool = 
  let n = List.length my_matrix in
  let rec sum_row row = List.fold_left (+) 0 row in
  let rec sum_col matrix col = 
    List.map (fun x -> List.nth x col) matrix 
    |> sum_row in
  let sum_diag1 = List.fold_left2 (+) 0 (List.mapi (fun i x -> List.nth (List.nth my_matrix infinity








































snd


snd

snd
snd
snd
snd
snd
snd
snd
snd
snd
snd
snd
snd
snd
snd
snd
snd
snd
snd
snd
snd
snd
snd
snd
snd
snd
snd
snd
snd
snd
snd
snd
snd
snd
snd
snd
snd
snd
snd
snd
snd
snd
snd
snd
snd
snd
snd
snd
snd
snd
snd
snd
snd
snd
snd
snd
snd
snd
snd
snd
snd
snd
snd
snd
snd
snd
snd
snd
snd
snd
snd
snd
snd
snd
snd
snd
snd
snd
snd
snd
snd
snd
snd
snd
snd
snd
snd
snd
snd
snd
snd
snd
snd
snd
snd
snd
snd
snd
snd
snd
snd
snd
snd
snd
snd
snd
snd
snd
snd
snd
snd
snd
snd
snd
snd
snd
snd
snd
snd
snd
snd
snd
snd
snd
snd
snd
snd
snd
snd
snd
snd
snd
snd
snd
snd
snd
snd
snd
snd
snd
snd
snd
snd
snd
snd
snd
snd
snd
snd
snd
snd
snd
snd
snd
snd
snd
snd
snd
snd
snd
snd
snd
snd
snd
snd
snd
snd
snd
snd
snd
snd
snd
snd
snd
snd
snd
snd
snd
snd
snd
snd
snd
snd
snd
snd
snd
snd
snd
snd
snd
snd
snd
snd
snd
snd
snd
snd
snd
snd
snd
snd
snd
snd
snd
snd
snd
snd
snd
snd
snd
snd
snd
snd
snd
snd
snd
snd
snd
snd
snd
snd
snd
snd
snd
snd
snd
snd
snd
snd
snd
snd
snd
snd
snd
snd
snd
s

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to calculate whether the matrix is a magic square. *)
