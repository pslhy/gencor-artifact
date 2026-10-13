(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to move all the numbers to the end of the given string. *)
let rec move_num (test_str : string) : string = 
  let rec check (str: string) (num: string) : (string * string) =
    if String.length str = 0 then (num, "")
    else if Char.isdigit (String.get str 0) then 
      check (String.sub str 1 (String.length str - 1)) (num ^ (String.sub str 0 1))
    else 
      (num, str ^ (String.sub str 0 1) ^ (check (String.sub str 1 (String.length str - 1)) ""))
  in let nums, str = check test_str "" in
  str ^ nums

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:4:13: Unbound value "Char.isdigit" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec move_num (test_str : string) : string = 
  let rec check (str: string) (num: string) : (string * string) =
    if String.length str = 0 then (num, "")
    else if str.[0] >= '0' && str.[0] <= '9' then 
      check (String.sub str 1 (String.length str - 1)) (num ^ (String.sub str 0 1))
    else 
      (num, str ^ (String.sub str 0 1) ^ (check (String.sub str 1 (String.length str - 1)) ""))
  in let nums, str = check test_str "" in
  str ^ nums

