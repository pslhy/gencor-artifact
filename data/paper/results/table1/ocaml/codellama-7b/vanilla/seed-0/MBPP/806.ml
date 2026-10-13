let rec max_run_uppercase (test_str : string) : int =
  match test_str with
  | "" -> 0
  | _ -> 
    let (curr_run, max_run) = 
      if String.get test_str 0 |> 'A' <=^ then
        (1, 1)
      else
        (0, 0)
    in
    if !curr_run = !max_run then
      curr_run
    else
      max_run_uppercase (String.drop test_str 0)
  ;


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find maximum run of uppercase characters in the given string. *)
