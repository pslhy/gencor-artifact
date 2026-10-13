let rec magic_square_test (my_matrix : int list list) : bool =
  let n = List.length my_matrix
  in
  let sum_diagonal_1 = ref 0
  and sum_diagonal_2 = ref 0
  in
  let sum_rows = Array.init n (fun i -> ref 0)
  and sum_cols = Array.init n (fun i -> ref 0)
  in
  for i = 0 to n - 1 do
    sum_diagonal_1 := !sum_diagonal_1 + (List.nth my_matrix.(i) i);
    sum_diagonal_2 := !sum_diagonal_2 + (List.nth my_matrix.(i) (n - i - 1));
    List.iter (fun x -> sum_rows.(i) := !sum_rows.(i) + x) my_matrix.(i);
    List.iter (fun x -> sum_cols.(i) := !sum_cols.(i) + x) my_matrix.(i);
  done;
  let sums = !sum_diagonal_1 = !sum_diagonal_2 || !(sum_rows.(0) = !(sum_rows.(n - 1))
          || !(sum_cols.(0) = !(sum_cols.(n - 1)))


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to calculate whether the matrix is a magic square. *)
