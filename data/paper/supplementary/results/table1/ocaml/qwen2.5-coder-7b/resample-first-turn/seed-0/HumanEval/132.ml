let rec is_nested (string : string) : bool = 
  let rec helper (stack : char list) (count : int) (chars : char list) : bool = 
    match chars with
    | [] -> count > 1
    | x::xs -> 
      if x = '[' then helper (x::stack) count xs 
      else if x = ']' then (match stack with
                             | [] -> helper stack count xs
                             | _::ys -> helper ys (count + 1) xs)
      else helper stack count xs
  in helper [] 0 (List.of_string string)


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
