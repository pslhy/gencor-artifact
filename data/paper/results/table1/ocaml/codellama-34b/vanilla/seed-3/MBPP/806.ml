let rec max_run_uppercase (test_str : string) : int =
  if test_str = "" then 0
  else if test_str.[0] >= 'A' && test_str.[0] <= 'Z' then
    let index = String.find_from char test_str (fun c -> c < 'A' || c > 'Z') 1 in
    let substr = String.sub test_str 1 (index - 1) in
    max_run_uppercase substr + 1
  else
    max_run_uppercase (String.sub test_str 1 (String.length test_str - 1))


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find maximum run of uppercase characters in the given string. *)
