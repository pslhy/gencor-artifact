let rec magic_square_test (my_matrix : int list list) : bool =
  let n = List.length my_matrix in
  let sum = List.fold_left (+) 0 (List.map List.nth my_matrix [0; n / 2; n - 1]) in
  if sum = 0 then
    let rec check_row (row : int list) : bool =
      let rec check_diagonal (mx : int list list) (dy : int) : bool =
        match mx with
        | [] -> true
        | x :: xs ->
          if List.nth x dy = List.nth x (dy + 1) then
            check_diagonal xs (dy + 1)
          else
            false
      in
      let rec check_diagonal' (mx : int list list) (dy : int) : bool =
        match mx with
        | [] -> true
        | x :: xs ->
          if List.nth x dy = List.nth x (dy - 1) then
            check_diagonal' xs (dy - 1)
          else
            false
      in
      row
      |> List.fold_left (&&) true (fun acc x -> x = sum - acc)
      && check_diagonal row 0
      && check_diagonal' row (n - 1)
    in
    List.map check_row my_matrix
    |> List.fold_left (&&) true (fun acc x -> x)
  else
    false


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to calculate whether the matrix is a magic square. *)
