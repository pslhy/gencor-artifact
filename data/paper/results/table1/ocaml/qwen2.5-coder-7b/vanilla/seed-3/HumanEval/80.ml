let rec is_happy (s : string) : bool = 
  let len = String.length s in
  if len < 3 then
    false
  else
    let rec check i =
      if i + 2 >= len then
        true
      else
        let a = s.[i] and b = s.[i + 1] and c = s.[i + 2] in
        if a = b || b = c || c = a then
          false
        else
          check (i + 1)
    in
    check 0


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
