let rec upper_ctr (str : string) : int = 
    (* base case: empty string with no uppercase *)
    let rec cps (c : char) : bool = 
        (* helper function to check if char is uppercase *)
        c = (List.nth c 65) || (List.nth c 66) || (List.nth c 67) || 
        (List.nth c 68) || (List.nth c 69) || (List.nth c 70) || 
        (List.nth c 71) || (List.nth c 72) || (List.nth c 73) || 
        (List.nth c 74) || (List.nth c 75)|| 

    match cps with
    | [] -> 0
    | :: (c, rest) -> (if cps c then 1 else 0) + upper_ctr rest


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to count the upper case characters in a given string. *)
