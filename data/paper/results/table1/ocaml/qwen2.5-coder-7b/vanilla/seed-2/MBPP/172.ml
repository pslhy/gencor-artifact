let rec count_occurance (s : string) : int = 
    let rec find_substring (i : int) (count : int) : int =
        if (i + 3 > String.length s) then count
        else if (String.sub s i 3 = "std") then find_substring (i + 3) (count + 1)
        else find_substring (i + 1) count
    in
    find_substring 0 0


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to count the number of occurence of the string 'std' in a given string. *)
