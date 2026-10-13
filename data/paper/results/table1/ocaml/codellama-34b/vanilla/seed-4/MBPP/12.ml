let rec sort_matrix (m : int list list) : int list list = 
    (* base case: ignore empty and single-element lists *)
    match m with
    | [] | [_] -> m
    (* reduce larger lists by sorting by sum of rows *)
    | h :: t -> let s = sum_rows h in
                let sorted_tail = sort_matrix t in
                let insert i x = 
                  (* insert element x at index i in list sorted_tail *)
                  let rec insert' j xs = match xs with 
                    | y :: ys -> if j = i then x :: y :: ys else y :: insert' (j-1) ys
                    | [] -> x :: xs
                  in
                  insert' 0 sorted_tail
                  (* actual insertion sort *)
                  let rec insertion_sort xs = match xs with
                    | [] -> []
                    | x :: xs -> insert x xs
                  in
                  insertion_sort m

let sum_rows (xs : int list) : int =
  List.fold_left (+) 0 xs

let matrix = [[1; 2; 3]; [4; 5; 6]; [7; 8; 9]]
let sorted_matrix = sort_matrix matrix


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to sort a given matrix in ascending order according to the sum of its rows. *)
