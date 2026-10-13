let rec is_happy (s : string) : bool =
  let len = String.length s in
  if len < 3 then false
  else match len with
  | 3 when s.[0] = s.[1] || s.[1] = s.[2] || s.[2] = s.[0] -> false
  | _ -> is_happy (String.sub s 1 (len - 1))
(* Tests *)

let test_is_happy_1 = is_happy "a" = false
let test_is_happy_2 = is_happy "aa" = false
let test_is_happy_3 = is_happy "abcd" = true
let test_is_happy_4 = is_happy "aabb" = false
let test_is_happy_5 = is_happy "adb" = true
let test_is_happy_6 = is_happy "xyy" = false


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
