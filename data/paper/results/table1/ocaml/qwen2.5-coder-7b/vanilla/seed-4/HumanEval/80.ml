let rec is_happy (s : string) : bool = 
  let rec helper s prev prev_prev = 
    match s with
    | "" -> true
    | c :: cs -> if c = prev || c = prev_prev then false else helper cs c prev
  in
  if String.length s < 3 then false else helper (String.to_list (String.sub s 1 (String.length s - 2))) (String.get s 1) s.[0]


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     You are given a string s. *)
(*     Your task is to check if the string is hapml or not. *)
(*     A string is hapml if its length is at least 3 and every 3 consecutive letters are distinct *)
(*     For example: *)
(*     >>> is_happy "a" *)
(*     false *)
(*     >>> is_happy "aa" *)
(*     false *)
(*     >>> is_happy "abcd" *)
(*     true *)
(*     >>> is_happy "aabb" *)
(*     false *)
(*     >>> is_happy "adb" *)
(*     true *)
(*     >>> is_happy "xyy" *)
(*     false *)
