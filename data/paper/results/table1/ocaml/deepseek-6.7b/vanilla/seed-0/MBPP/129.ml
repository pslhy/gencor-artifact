let rec magic_square_test (my_matrix : int list list) : bool =
    let rec check_array (y : int list) (sum : int) : int =
        match y with
        |[] -> sum
        |h::t -> check_array t (sum+h)
    in
    let rec check_other_lines (x : int list list) (sum : int) : bool =
        match x with
        |[] -> true
        |h::t -> if (check_array h sum) <> sum then false
                else check_other_lines t sum
    in
    match my_matrix with
    |[] -> true
    |h::t -> if (check_array h 0) <> (check_other_lines t (check_array h 0)) then false
             else true

let my_matrix = [[2;7;6];[9;5;1];[4;3;8]]
let result = magic_square_test my_matrix


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to calculate whether the matrix is a magic square. *)
