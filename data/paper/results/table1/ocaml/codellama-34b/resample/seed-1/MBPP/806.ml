(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to find maximum run of uppercase characters in the given string. *)
let rec max_run_uppercase (test_str : string) : int =
    let rec aux (acc : int) (start : int) (stop : int) : int =
        if start < stop 
        then if Char.is_uppercase test_str.[start] 
            then aux (acc + 1) (start + 1) stop
            else aux 0 (start + 1) stop
        else acc
    in
    aux 0 0 (String.length test_str)

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:4:17: Unbound value "Char.is_uppercase" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec max_run_uppercase (test_str : string) : int =
    let rec aux (acc : int) (start : int) (stop : int) : int =
        if start < stop 
        then if (test_str.[start] >= 'A' && test_str.[start] <= 'Z')
            then aux (acc + 1) (start + 1) stop
            else aux 0 (start + 1) stop
        else acc
    in
    aux 0 0 (String.length test_str)

