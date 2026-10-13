let rec max_run_uppercase (test_str : string) : int = 
  let rec helper (str : string) (current_run : int) (max_run : int) : int =
    if String.length str = 0 then
      max current_run max_run
    else
      let current_char = str.[0] in
      if current_char >= 'A' && current_char <= 'Z' then
        helper (String.sub str 1 (String.length str - 1)) (current_run + 1) max_run
      else
        helper (String.sub str 1 (String.length str - 1)) 0 (max current_run max_run)
  in
  helper test_str 0 0


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find maximum run of uppercase characters in the given string. *)
