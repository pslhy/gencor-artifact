let rec find_length (string : string) : int = 
  let rec check (str: string) (count_diff: int) (max_diff: int) : int =
    match str with
    | "" -> max_diff
    | c::cs ->
       let count_diff' = if c = '0' then count_diff + 1 else count_diff - 1 in
       let max_diff' = max max_diff count_diff' in
       check cs count_diff' max_diff' in
  check string 0 0


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the maximum difference between the number of 0s and number of 1s in any sub-string of the given binary string. *)
