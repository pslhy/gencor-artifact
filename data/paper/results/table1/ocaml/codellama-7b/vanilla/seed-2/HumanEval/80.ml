let rec is_happy (s : string) : bool =
  let n = String.length s in
  if n < 3 then false
  else
    let rec check i =
      if i >= n then true
      else
        let c1 = s.[i] in
        let c2 = s.[i+1] in
        let c3 = s.[i+2] in
        if c1 = c2 || c2 = c3 || c1 = c3 then check (i+1)
        else false
    in
    not (check 0)


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
