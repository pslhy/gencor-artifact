(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to check if a string represents an integer or not. *)
let rec check_integer (text : string) : bool = 
    (* Check if the string has a length of zero *)
    let rec check_length_zero text =
        match text with
        | [] -> false
        | _ :: [] -> true
        | _ :: tail -> check_length_zero tail
    in
    (* Check if all the characters in the string are digits *)
    let rec check_digits text =
        match text with
        | [] -> true
        | head :: tail -> if head >= '0' && head <= '9' then check_digits tail else false
    in
    check_length_zero text && check_digits text

