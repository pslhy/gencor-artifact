let rec count_Substrings (s : string) : int = 
    (* base case: empty string with no substrings *) 
    if s = "" then 0 
    (* recursive case: recursively count substrings of all suffixes *) 
    else List.fold_left (fun sum sub_s -> sum + count_Substrings sub_s) 0 (substring_sums s) 
    
and substring_sums (s : string) : list string = 
    (* base case: no substrings for empty string *) 
    if s = "" then [] 
    (* recursive case: find all substrings of all suffixes *) 
    else List.map (fun i -> String.sub s 0 i) (List.map (fun i -> i-1) (range 0 (String.length s))) 
    
and range (n : int) (m : int) : list int = 
    (* auxiliary function to generate list of integers from n to m *) 
    if n > m then [] 
    (* base case: list of length one with n *) 
    else n :: range (n+1) m 


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to count the number of substrings with the sum of digits equal to their length. *)
