let rec max_run_uppercase (test_str : string) : int =
    let rec check_uppercase (ch : char) = ch >= 'A' && ch <= 'Z'
    and max_run (str : string) (i : int) : int =
      if i = String.length test_str then
        0
      else if check_uppercase str.[i] then
        1 + max_run str (i + 1)
      else
        max_run str (i + 1)
    in
    max_run test_str 0


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find maximum run of uppercase characters in the given string. *)
