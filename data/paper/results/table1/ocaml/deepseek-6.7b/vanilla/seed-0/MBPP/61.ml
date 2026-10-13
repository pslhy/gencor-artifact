let rec count_Substrings (s : string) : int =
    let rec helper (s : string) (currSubstring : string) (currSum : int) (currLen : int) : int =
        match s with
        | "" -> if currLen = currSum then 1 else 0
        | _ -> (helper s (currSubstring ^ (String.make 1 s.[0])) (currSum + int_of_string (String.make 1 s.[0])) currLen) + 
               (helper (String.sub s 1 (String.length s - 1)) "" 0 (currLen+1))
    in
    helper s "" 0 0


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to count the number of substrings with the sum of digits equal to their length. *)
