let rec remove_length (test_str : string) (k : int) : string = 
    (* base case: if the string is empty, return an empty string *)
    if test_str = "" then ""
    (* recursively process each character in the string *)
    else 
        let rec loop (i : int) (acc : string) : string =
            (* base case: if we reach the end of the string, return the accumulated result *)
            if i = String.length test_str then acc
            (* if the current character has length k, skip it and continue to the next character *)
            else if k = (String.length (String.sub test_str i 1)) then loop (i + 1) acc
            (* otherwise, add the current character to the accumulated result and move on to the next character *)
            else loop (i + 1) (acc ^ (String.sub test_str i 1)) in loop 0 ""

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to remove all the words with k length in the given string. *)
