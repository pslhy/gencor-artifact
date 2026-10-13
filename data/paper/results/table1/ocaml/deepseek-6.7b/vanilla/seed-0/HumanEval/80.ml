let rec is_happy (s : string) : bool =
    if String.length s < 3 then false
    else
        let a, b, c = s.[0], s.[1], s.[2] in
        if a = b || b = c || c = a then false
        else if String.length s = 3 then true
        else
            let rest = String.sub s 3 (String.length s - 3) in
            is_happy rest

(* Basic test cases *)
assert (is_happy "a" = false) ;;
assert (is_happy "aa" = false) ;;
assert (is_happy "abcd" = true) ;;
assert (is_happy "aabb" = false) ;;
assert (is_happy "adb" = true) ;;
assert (is_happy "xyy" = false) ;;


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
