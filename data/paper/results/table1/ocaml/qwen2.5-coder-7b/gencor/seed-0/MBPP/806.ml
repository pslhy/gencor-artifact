
let rec max_run_uppercase (test_str : string) : int = 
  let rec helper str max_count current_count =
    if String.length str = 0 then max current_count max_count
    else if Char.uppercase_ascii (String.unsafe_get str 0) = String.unsafe_get str 0 then
      helper (String.sub str 1 (String.length str - 1)) max_count (current_count + 1)
    else
      helper (String.sub str 1 (String.length str - 1)) (max max_count current_count) 1
  in helper test_str 0 0

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find maximum run of uppercase characters in the given string. *)
