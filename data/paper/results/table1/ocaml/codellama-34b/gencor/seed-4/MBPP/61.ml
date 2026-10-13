
let rec count_Substrings (s : string) : int = 
    (* base case: ignore empty string *)
    match s with 
    | "" -> 0 
    | _ -> 
        (* check if substring with sum of digits equal to length exist *)
        let substring_Found = ref false in 
        for i = 1 to String.length(s) - 1 do 
            if string_of_int (int_of_string (String.sub s 0 i)) = String.sub s 0 i then 
                substring_Found := true 
            else 
                ()
        done;
        if !substring_Found then 1 else 0

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to count the number of substrings with the sum of digits equal to their length. *)
