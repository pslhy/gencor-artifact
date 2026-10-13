let rec max_run_uppercase (test_str : string) : int =
  let len = String.length test_str in
  let rec helper lower upper curr max_len =
    if curr = len then max_len
    else if String.get test_str curr = test_str.[curr] then helper lower upper (curr+1) max_len
    else if String.get test_str curr = String.uppercase_ascii (String.make 1 (String.get test_str curr)) then 
      helper false true (curr+1) (if (curr - lower) > max_len then (curr - lower) else max_len)
    else helper true false (curr+1) max_len
  in helper 0 0 0 0
;;

max_run_uppercase "AaBBbbCCCCddBEEEEeeee";;  (*returns 5*)
max_run_uppercase "AaB";;  (*returns 1*)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find maximum run of uppercase characters in the given string. *)
