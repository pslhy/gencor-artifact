let rec cycpattern_check (a : string) (b : string) : bool = 
    (* Check if the second word is a substring of the first word *)
    if (String.contains a b) then true
    (* If not, check if any of the rotations of the second word is a substring of the first word *)
    else if (List.exists (fun x -> String.contains a x) ( List.map (fun x -> String.sub(x,1,String.length x - 1) ) (List.map (fun x -> " " ^ x ^ " ") (String.split_on_char ' ' b)))) then true
    else false


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     You are given 2 words. You need to return true if the second word or any of its rotations is a substring in the first word *)
(*     >>> cycpattern_check "abcd" "abd" *)
(*     false *)
(*     >>> cycpattern_check "hello" "ell" *)
(*     true *)
(*     >>> cycpattern_check "whassup" "psus" *)
(*     false *)
(*     >>> cycpattern_check "abab" "baa" *)
(*     true *)
(*     >>> cycpattern_check "efef" "eeff" *)
(*     false *)
(*     >>> cycpattern_check "himenss" "simen" *)
(*     true *)
