let rec is_happy (s : string) : bool =
  let len = String.length s in
  if len < 3 then false
  else
    let sub_str s i = String.sub s i 3 in
    let rec check_three_chars (s : string) : bool =
      if String.length s < 3 then true
      else if String.length (String.filter ((<>) (String.get s 0)) s) < 3 then false
      else check_three_chars (String.filter ((<>) (String.get s 0)) s)
    in
    if check_three_chars (sub_str s 0) then is_happy (String.sub s 3 (len-3))
    else false;;


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
