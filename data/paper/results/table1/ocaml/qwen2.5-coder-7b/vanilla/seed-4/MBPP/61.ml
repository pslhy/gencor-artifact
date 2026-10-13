let rec count_Substrings (s : string) : int = 
  let rec helper (s : string) (index : int) (sum : int) (count : int) : int = 
    match s.[index] with
    | '\000' -> count
    | _ -> 
      let num = int_of_char s.[index] - int_of_char '0' in
      let new_sum = sum + num in
      let new_count = if new_sum = index + 1 then count + 1 else count in
      helper s (index + 1) new_sum new_count
  in
  let rec traverse (s : string) (start : int) (total : int) : int = 
    if start = String.length s then total
    else 
      let new_total = traverse s (start + 1) (total + helper s start 0 0) in
      new_total
  in
  traverse s 0 0


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to count the number of substrings with the sum of digits equal to their length. *)
