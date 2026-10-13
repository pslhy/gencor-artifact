let rec is_nested (string : string) : bool = 
  let rec check (stack:char list) (string:char list) : bool = 
    match string with
    | [] -> List.length stack > 1
    | x::xs -> 
      if x = '[' then check (x::stack) xs
      else if x = ']' then
        match stack with
        | [] -> false
        | _::ys -> check ys xs
      else check stack xs
  in 
  check [] (List.of_seq (String.to_seq string))
;;


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Create a function that takes a string as input which contains only square brackets. *)
(*     The function should return true if and only if there is a valid subsequence of brackets *)
(*     where at least one bracket in the subsequence is nested. *)
(*     >>> is_nested "[[]]" *)
(*     true *)
(*     >>> is_nested "[]]]]]]][[[[[]" *)
(*     false *)
(*     >>> is_nested "[][]" *)
(*     false *)
(*     >>> is_nested "[]" *)
(*     false *)
(*     >>> is_nested "[[][]]" *)
(*     true *)
(*     >>> is_nested "[[]][[" *)
(*     true *)
