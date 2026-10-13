let rec is_nested (string : string) : bool =
  let rec loop (string : string) (stack : int) : bool =
    if string = "" then
      stack > 0
    else
      match string.[0] with
      | '[' -> loop (String.sub string 1 (String.length string - 1)) (stack + 1)
      | ']' -> if stack > 0 then loop (String.sub string 1 (String.length string - 1)) (stack - 1) else false
      | _ -> loop (String.sub string 1 (String.length string - 1)) stack 
  in loop string 0


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
