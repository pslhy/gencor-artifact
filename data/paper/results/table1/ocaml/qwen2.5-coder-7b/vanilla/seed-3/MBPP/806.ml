let rec max_run_uppercase (test_str : string) : int = 
  let rec helper str max current =
    match str with
      | "" -> if current > max then current else max
      | x :: xs when x >= 'A' && x <= 'Z' -> helper xs max (current + 1)
      | _ :: xs -> if current > max then helper xs current 0 else helper xs max 0
  in
  helper (String.to_list test_str) 0 0


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find maximum run of uppercase characters in the given string. *)
