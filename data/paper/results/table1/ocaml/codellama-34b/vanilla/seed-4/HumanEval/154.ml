let rec cycpattern_check (a : string) (b : string) : bool = 
    (* Check if the second word is a substring in the first word *)
    if a =~ b then 
        true 
    (* If not, check if any rotation of the second word is a substring in the first word *)
    else 
        let rotated_b = "" 
        (* Rotate the second word by one character *)
        for i = 0 to String.length b - 1 do 
            rotated_b = rotated_b ^ b.[i + 1] ^ b.[0 .. i] 
        done 
        cycpattern_check a rotated_b 
    else 
        false 


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
