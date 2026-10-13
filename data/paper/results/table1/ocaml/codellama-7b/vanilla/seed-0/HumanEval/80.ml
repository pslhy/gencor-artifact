let rec is_happy (s : string) : bool =
  if String.length s < 3 then false
  else
    let sub = String.sub s ~pos:0 ~len:3 in
    if sub = s then false
    else
      let rest = String.sub s ~pos:3 ~len:(String.length s - 3) in
      if rest = "" then true
      else is_happy rest

let _ =
  let input_line = read_line () in
  print_endline (if is_happy input_line then "true" else "false")


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
