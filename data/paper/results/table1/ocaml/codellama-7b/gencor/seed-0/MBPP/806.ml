
let rec max_run_uppercase (test_str : string) : int =
  match test_str with
  | "" -> 0
  | _ -> 
    let (curr_run, max_run) = 
      if String.get test_str 0 |> 'A' <= 'Z' then 
        (1, 1)
      else 
        (0, 0)
    in
    let curr_state = String.get test_str 1 |> 'A' <= 'Z' in
    let next_state = 
      if String.get test_str (1 + String.length curr_run) |> 'A' <= 'Z' then 
        true
      else 
        false
    in
    let max_run = 
      if next_state = curr_state then 
        max (curr_run + 1) max_run
      else 
        max curr_run max_run
    in
    max_run_uppercase (String.sub test_str (String.length curr_run + 1)) max_run

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find maximum run of uppercase characters in the given string. *)
