
let rec move_num (test_str : string) : string = 
  let rec check (str: string) (num: string) : (string * string) =
    if String.length str = 0 then (num, "")
    else if Char.code (String.unsafe_get str 0) >= Char.code '0' && Char.code (String.unsafe_get str 0) <= Char.code '9' then 
      check (String.sub str 1 (String.length str - 1)) (num ^ (String.sub str 0 1))
    else (num, str)
  in 
  let (num, non_num) = check test_str "" in
  non_num ^ num

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to move all the numbers to the end of the given string. *)
