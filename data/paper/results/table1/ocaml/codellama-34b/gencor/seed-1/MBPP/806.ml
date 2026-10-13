
let rec max_run_uppercase (test_str : string) : int =
    let rec aux (acc : int) (start : int) (stop : int) : int =
        if start < stop 
        then if Char.uppercase_ascii test_str.[start] = test_str.[start] 
            then aux (acc + 1) (start + 1) stop 
            else acc
        else acc
    in aux 0 1 (String.length test_str) - 1

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find maximum run of uppercase characters in the given string. *)
