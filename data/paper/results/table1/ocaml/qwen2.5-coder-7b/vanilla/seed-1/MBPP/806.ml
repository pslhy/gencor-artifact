let rec max_run_uppercase (test_str : string) : int = 
  let rec check_run acc current max_run str = 
    match str with
    | "" -> if acc > max_run then acc else max_run
    | c::rest -> 
        if Char.uppercase_ascii c = c then 
          check_run (acc + 1) (acc + 1) max_run rest
        else 
          if acc > max_run then check_run 1 1 acc rest else check_run 0 0 max_run rest
  in 
  check_run 0 0 0 (String.to_list test_str)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find maximum run of uppercase characters in the given string. *)
