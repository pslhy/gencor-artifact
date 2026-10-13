let rec is_happy (s : string) : bool = 
    (* Check if the length of the string is at least 3 *)
    if (String.length s < 3) then
        false
    else
        (* Check if the first 3 letters are distinct *)
        if (s.[0] = s.[1] && s.[1] = s.[2]) then 
            false
        else
            (* Check if the remaining letters are hapml *)
            if (is_happy (String.sub s 3 (String.length s - 3))) then
                true
            else
                false
;;


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
