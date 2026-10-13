
let rec is_happy (s : string) : bool =
  if String.length s < 3 then
    false
  else if s.[0] = s.[1] && s.[1] = s.[2] then
    false
  else if s.[0] = s.[2] && s.[1] = s.[2] then
    false
  else
    is_happy (String.sub s 3 (String.length s - 3))

let () =
  Printexc.to_string (is_happy "aabb")
  |> print_endline

let () =
  Printexc.to_string (is_happy "abcd")
  |> print_endline

let () =
  Printexc.to_string (is_happy "xyy")
  |> print_endline

let () =
  Printexc.to_string (is_happy "a")
  |> print_endline

let () =
  Printexc.to_string (is_happy "aa")
  |> print_endline

let () =
  Printexc.to_string (is_happy "adb")
  |> print_endline

let () =
  Printexc.to_string (is_happy "abcd")
  |> print_endline

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
